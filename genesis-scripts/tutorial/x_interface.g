function setcellformvalues
  str name, path
  int i = 0

  if ({exists /form})
  foreach name (HN3L HN3R HN4L HN4R)
    if ({i}==0) path = "/cell_3L"
    else
       if ({i}==1) path = "/cell_3R"
       else
          if ({i}==2) path = "/cell_4L"
          else
            if ({i}==3) path = "/cell_4R"
            end
          end
       end
    end
    i = {i} + 1
    if ({exists /form/{name}})
      setfield /form/{name}/Na  value {getfield {path}/soma/Na_ron Gbar}
      setfield /form/{name}/K1  value {getfield {path}/soma/K1_ron Gbar}
      setfield /form/{name}/K2  value {getfield {path}/soma/K2_ron Gbar}
      setfield /form/{name}/KA  value {getfield {path}/soma/A_ron Gbar}
      setfield /form/{name}/h   value {getfield {path}/soma/h_ron Gbar}
      setfield /form/{name}/CaF value {getfield {path}/soma/CaF_ron Gbar}
      setfield /form/{name}/CaS value {getfield {path}/soma/CaS_ron Gbar}
      setfield /form/{name}/P   value {getfield {path}/soma/P_ron Gbar}
    end
  end

  i = 0

  foreach name (HN1L HN1R HN2L HN2R)
    if ({i}==0) path = "/cell_1L"
    else
       if ({i}==1) path = "/cell_1R"
       else
          if ({i}==2) path = "/cell_2L"
          else
            if ({i}==3) path = "/cell_2R"
            end
          end
       end
    end
    i = {i} + 1
    if ({exists /form/{name}})
      setfield /form/{name}/Na  value {getfield {path}/soma/Na_ron Gbar}
      setfield /form/{name}/K1  value {getfield {path}/soma/K1_ron Gbar}
      setfield /form/{name}/K2  value {getfield {path}/soma/K2_ron Gbar}
    end
  end
  end
end

function setweightbuttons_8cell

 if ({exists /form})
 setfield /form/draw/xHN3L_xHN3Rsp value {getfield /cell_3R/soma/SynS3L3R gmax}
 setfield /form/draw/xHN3L_xHN3Rsg value {getfield /cell_3R/soma/SynG Gbar}
 setfield /form/draw/xHN3R_xHN3Lsp value {getfield /cell_3L/soma/SynS3R3L gmax}
 setfield /form/draw/xHN3R_xHN3Lsg value {getfield /cell_3L/soma/SynG Gbar}
 setfield /form/draw/xHN4L_xHN4Rsp value {getfield /cell_4R/soma/SynS4L4R gmax}
 setfield /form/draw/xHN4L_xHN4Rsg value {getfield /cell_4R/soma/SynG Gbar}
 setfield /form/draw/xHN4R_xHN4Lsp value {getfield /cell_4L/soma/SynS4R4L gmax}
 setfield /form/draw/xHN4R_xHN4Lsg value {getfield /cell_4L/soma/SynG Gbar}
 setfield /form/draw/xHN4L_xHN1Lsp value {getfield /cell_1L/soma/SynS4L1L gmax}
 setfield /form/draw/xHN4R_xHN1Rsp value {getfield /cell_1R/soma/SynS4R1R gmax}
 setfield /form/draw/xHN1L_xHN4Lsp value {getfield /cell_4L/soma/SynS1L4L gmax}
 setfield /form/draw/xHN1R_xHN4Rsp value {getfield /cell_4R/soma/SynS1R4R gmax}
 setfield /form/draw/xHN4L_xHN2Lsp value {getfield /cell_2L/soma/SynS4L2L gmax}
 setfield /form/draw/xHN4R_xHN2Rsp value {getfield /cell_2R/soma/SynS4R2R gmax}
 setfield /form/draw/xHN2L_xHN4Lsp value {getfield /cell_4L/soma/SynS2L4L gmax}
 setfield /form/draw/xHN2R_xHN4Rsp value {getfield /cell_4R/soma/SynS2R4R gmax}
 setfield /form/draw/xHN3L_xHN1Lsp value {getfield /cell_1L/soma/SynS3L1L gmax}
 setfield /form/draw/xHN3R_xHN1Rsp value {getfield /cell_1R/soma/SynS3R1R gmax}
 setfield /form/draw/xHN1L_xHN3Lsp value {getfield /cell_3L/soma/SynS1L3L gmax}
 setfield /form/draw/xHN1R_xHN3Rsp value {getfield /cell_3R/soma/SynS1R3R gmax}
 setfield /form/draw/xHN3L_xHN2Lsp value {getfield /cell_2L/soma/SynS3L2L gmax}
 setfield /form/draw/xHN3R_xHN2Rsp value {getfield /cell_2R/soma/SynS3R2R gmax}
 setfield /form/draw/xHN2L_xHN3Lsp value {getfield /cell_3L/soma/SynS2L3L gmax}
 setfield /form/draw/xHN2R_xHN3Rsp value {getfield /cell_3R/soma/SynS2R3R gmax}
 end
end

include tutorial/x_experiment.g

int weights_hidden = 0
int editHN12offset = 0
int leftGraphShowing = 0
int rightGraphShowing = 0
float run_time = 20.0

function autoscale(path)
   str path
   str name

   foreach name ({el {path}/##[][TYPE=xgraph]})
      setfield {name} xmin 0.0
      setfield {name} xmax {run_time}
   end
end

str XREV
//XREV = "R3"
// global variable for setting width of text display from X11 revision #
// "R4" will be assumed if it is not explicitly set to "R3"

/* NOTE:
The version of the function "textwindow" provided in the March 1991 GENESIS
distribution xtools.g creates a form 490 pixels wide and 336 pixels high at
x,y to display the specified text file with scrolling and paging.  The
actual text window is 484 x 316 pixels.  Using the default font for X11R3,
this provides room for 24 lines with 78 characters per line and a one
character right and left margin.  (The left margin is provided
automatically.)  X11R4 uses a larger font for both the xtext widget and the
xlabel widget, however.  In addition, it provides a scroll bar with the
xtext widget.  Thus, in order to accomodate the same number of charaters, a
form width of 580 pixels should be used.  The following replacement for
"textwindow" uses an optional argument "XREV" to determine the proper width
and also allows the size of the text window to be resized along with the
parent form.  If this argument is not specified, the larger width
appropriate to X11R4 is used.  When displaying X11R4 windows on a DECstation
with its large fonts, an even wider width of 810 should be used.  This can
either be changed below, or the window may be rescaled after it appears.
*/

//=====================================================================
// textwindow(formpath,x,y,textfile,[XREV])
// creates a form 490 pixels wide and 336 pixels high at x,y to display
// the specified text file with scrolling and paging
//=====================================================================
function textwindow(formpath, x, y, textfile)
   str formpath, textfile, XREV
   int x, y, width, height
   height = 336
   XREV = "R4"
   // the default width will be the large one for X11 R4 fonts
   width = 580
   if ({argc} > 4)   // look for a 5th argument

        XREV = $5
   end
   // if not explicitly R3, play it safe and use larger R4 width
   if ((XREV) == "R3")
        // for X11R3 fonts
        width = 490
   end
   create xform {formpath} [{x},{y},{width},{height}] -nolabel
   pushe {formpath}
   create xlabel textbar [40,0,{100*(width - 40)/width}%,20] -title  \
       "Use the scroll bar at the left to move through the text"
   create xbutton DONE [0,0,40,20] -script "xhide "{formpath}
   create xtext text [0%,20,100%,94%] -filename {textfile}
   pope
end

create neutral /helpwinds

textwindow /helpwinds/genhelp 50 300 tutorial/general_help.txt
textwindow /helpwinds/edhelp 50 300 tutorial/editor_help.txt
textwindow /helpwinds/dishelp 50 300 tutorial/disable_help.txt

function kick_run

   float strength = 0.1e-9

   float iHN1L = {getfield /cell_1L/soma inject}
   float iHN1R = {getfield /cell_1R/soma inject}
   float iHN2L = {getfield /cell_2L/soma inject}
   float iHN2R = {getfield /cell_2R/soma inject}
   float iHN3L = {getfield /cell_3L/soma inject}
   float iHN3R = {getfield /cell_3R/soma inject}
   float iHN4L = {getfield /cell_4L/soma inject}
   float iHN4R = {getfield /cell_4R/soma inject}

   setfield /cell_1L/soma inject {-1.0*{strength}}
   setfield /cell_2L/soma inject {-1.0*{strength}}
   setfield /cell_3R/soma inject {-1.0*{strength}}
   setfield /cell_4R/soma inject {-1.0*{strength}}
   
   setfield /cell_1R/soma inject {-1.0*{strength}}
   setfield /cell_2R/soma inject {-1.0*{strength}}
   setfield /cell_3L/soma inject {-1.0*{strength}}
   setfield /cell_4L/soma inject {-1.0*{strength}}

   step 0.2 -time

   setfield /cell_1R/soma inject { 0.0*{strength}}
   setfield /cell_2R/soma inject { 0.0*{strength}}
   setfield /cell_3L/soma inject { 0.0*{strength}}
   setfield /cell_4L/soma inject { 0.0*{strength}}

   step 0.2 -time

   setfield /cell_1L/soma inject {iHN1L}
   setfield /cell_2L/soma inject {iHN2L}
   setfield /cell_3R/soma inject {iHN3R}
   setfield /cell_4R/soma inject {iHN4R}
   
   setfield /cell_1R/soma inject {iHN1R}
   setfield /cell_2R/soma inject {iHN2R}
   setfield /cell_3L/soma inject {iHN3L}
   setfield /cell_4L/soma inject {iHN4L}

end

function run_and_close(shcmd)
   str widgPath

   xhide /introduction
   sh {getfield /introduction/shtxt value} 
end

function run_intro
   str shcmd = "netscape " @ {file_prefix} @ "/intro/index.html &"

   if (!{exists /introduction})
      create xform /introduction [100,100,650,120] -title "Introduction"
      create xdialog /introduction/shtxt -label "Shell command:" -value {shcmd}
      create xbutton /introduction/launch -label "Open" -script "run_and_close"
      create xbutton /introduction/cancel -label "Cancel" \
         -script "xhide /introduction"
   end

   xshow /introduction

end

function restore_from_file (name)
str name

   restore {name}.bin
end

function restore_default_state

   include model/start_state_asc.g

end

function do_reset

   reset
   restore_default_state
   run_time = {getfield /simform/simrunlength value}

end

function do_step

   run_time = {getstat -time} + {getfield /simform/simrunlength value}
   step {getfield /simform/simrunlength value} -time

end

// This file requires that interface variables are already defined

function toggle_data (widgPath, graphPath)
   str widgPath, graphPath
   str label = {getfield {widgPath} onlabel}, newlabel

   if ({strcmp {substring {label} 0 3} "Show"})
       xhide {graphPath}
       newlabel = "Show" @ {substring {label} 4} 
   else
       xshow {graphPath}
       newlabel = "Hide" @ {substring {label} 4} 
   end

   setfield {widgPath} label {newlabel}
end

function set_run_time(val)
   float val
   run_time = {getstat -time} + {val}

end

function showhideinitcond

   int h = {getfield /simform hgeom}
   if ({h}<325)
      setfield /simform hgeom 325
   else
      if ({h}>=325)
        setfield /simform hgeom 216
      end
   end
end

function setup_simulation

   create xform /simform [0,0,700,216] \
     -title "Leech Heart Interneuron 8-Cell Model" 
   create xlabel /simform/simwinds -label "WINDOWS:" -bg white
   create xbutton /simform/simintro [05,45,145,25] -label "Introduction" \
     -script "run_intro"
   create xbutton /simform/simhelp [155,45,145,25] -label "Help" \
     -script "xshow /helpwinds/genhelp"
   create xbutton /simform/simleftV [05,70,145,25] -label "Show Left Vm's" \
     -script "toggle_data <w> /dataL"
   create xbutton /simform/simrightV [155,70,145,25] -label "Show Right Vm's" \
     -script "toggle_data <w> /dataR"
   create xbutton /simform/simNaKa [305,45,165,25] \
     -label "Show L,4 INa,IK" -script "toggle_data <w> /HN4L_2"
   create xbutton /simform/simhCaP [305,70,165,25] \
     -label "Show L,4 Ih,ICa,IP" -script "toggle_data <w> /HN4L_1"
   create xbutton /simform/simsyn1 [475,45,205,25] \
     -label "Show R,4->L,4 currents" -script "toggle_data <w> /HN4L_3"
   create xbutton /simform/simsyn2 [475,70,205,25] \
     -label "Show L,1-2->L,4 currents" -script "toggle_data <w> /HN4L_4"

   create xlabel /simform/simexpers [0,98,100%,22] \
        -label "EXPERIMENTS:" -bg white
   create xbutton /simform/simedit [5,122,205,25] -label "Parameter Editor" \
     -script "xshow /form"
   create xbutton /simform/siminject [215,122,205,25] \
        -label "Current Injection" -script "current_injection"
   create xbutton /simform/cell_kill [425,122,255,25] \
        -label "Disable Cells and Synapses" -script "create_disable_cs"
   
   create xlabel /simform/simruns [0,149,100%,22] -label "RUNS:" -bg white
   create xdialog /simform/simrunlength [5,173,205,28] \
        -label "Time (sec)" -value 20.0 -script "set_run_time <v>"
   create xbutton /simform/sunrun [215,173,55,28] \
        -label "Run" -script "do_step"
   create xbutton /simform/simstop [275,173,55,28] -label "Stop" -script "stop"
   create xbutton /simform/sunreset [335,173,65,28] \
        -label "Reset" -script "do_reset"
   create xbutton /simform/simkick [405,173,55,28] -label "Kick" \
        -script "kick_run"
   create xbutton /simform/statemenu [465,173,95,28] -label "Init Cond" \
        -script "showhideinitcond"
   create xbutton /simform/simquit [565,173,115,28]  \
        -label "Exit Tutorial" -script "quit"

   create xlabel /simform/simsaverestore [0,205,100%,22] \
        -label "SAVE/RESTORE INITIAL CONDITIONS:"  -bg white
   create xbutton /simform/simstdefa [05,228,99%,25] \
        -label "Restore Default Initial Conditions" -script "restore_default_state"
   create xdialog /simform/simrest [05,253,99%,28] \
        -label "Restore from file:" -script "restore_from_file <value>"
   create xdialog /simform/simsav [05,283,99%,28] -label "Save to file:" \
        -script "save_state_bin <value>"


   xshow /simform

end

include tutorial/loadscript.g

function reset_defaults

  include model/default_param.g

  setcellformvalues
  setweightbuttons_8cell

end

function editHN34cell(path, name)
 str path, name
 str script
 str title = {substring {name} 3 3} @ "," @ {substring {name} 2 2} @ " channel editor (Gbar - S)"

 if (!{exists /form/{name}})
   create xform /form/{name} [0,0,300,300] -title {title}

   script = "setfield " @ {path} @ "/soma/Na_ron Gbar <value>" 
   create xdialog /form/{name}/Na -label "Na (2e-7)" \
        -script {script}

   script = "setfield " @ {path} @ "/soma/K1_ron Gbar <value>"
   create xdialog /form/{name}/K1 -label "K1 (1e-7)" \
        -script {script}

   script = "setfield " @ {path} @ "/soma/K2_ron Gbar <value>"
   create xdialog /form/{name}/K2 -label "K2 (8e-8)" \
        -script {script}

   script = "setfield " @ {path} @ "/soma/A_ron Gbar <value>"
   create xdialog /form/{name}/KA -label "KA (8e-8)" \
        -script {script}

   script = "setfield " @ {path} @ "/soma/h_ron Gbar <value>"
   create xdialog /form/{name}/h -label "h (4e-9)" \
        -script {script}

   script = "setfield " @ {path} @ "/soma/CaF_ron Gbar <value>"
   create xdialog /form/{name}/CaF -label "CaF (5e-9)" \
        -script {script}

   script = "setfield " @ {path} @ "/soma/CaS_ron Gbar <value>"
   create xdialog /form/{name}/CaS -label "CaS (3.2e-9)" \
        -script {script}

   script = "setfield " @ {path} @ "/soma/P_ron Gbar <value>"
   create xdialog /form/{name}/P -label "P (7e-9)" \
        -script {script}

   script = "xhide /form/" @ {name}
   create xbutton /form/{name}/close -label "Close Window"\
        -script {script}
 end

 setfield /form/{name}/Na  value {getfield {path}/soma/Na_ron Gbar}
 setfield /form/{name}/K1  value {getfield {path}/soma/K1_ron Gbar}
 setfield /form/{name}/K2  value {getfield {path}/soma/K2_ron Gbar}
 setfield /form/{name}/KA  value {getfield {path}/soma/A_ron Gbar}
 setfield /form/{name}/h   value {getfield {path}/soma/h_ron Gbar}
 setfield /form/{name}/CaF value {getfield {path}/soma/CaF_ron Gbar}
 setfield /form/{name}/CaS value {getfield {path}/soma/CaS_ron Gbar}
 setfield /form/{name}/P   value {getfield {path}/soma/P_ron Gbar}

 xshow /form/{name}

end

function editHN12cell(path, name)
 str path, name
 str script
 str title = {name} @ " channel editor (Gbar - S)"

 if (!{exists /form/{name}})
   create xform /form/{name} [{editHN12offset},{editHN12offset},300,300] \
             -title {title}

   editHN12offset = {editHN12offset}+50

   script = "setfield " @ {path} @ "/soma/Na_ron Gbar <value>" 
   create xdialog /form/{name}/Na -label "Na (2e-7)" \
        -script {script}

   script = "setfield " @ {path} @ "/soma/K1_ron Gbar <value>"
   create xdialog /form/{name}/K1 -label "K1 (1e-7)" \
        -script {script}

   script = "setfield " @ {path} @ "/soma/K2_ron Gbar <value>"
   create xdialog /form/{name}/K2 -label "K2 (8e-8)" \
        -script {script}

   script = "xhide /form/" @ {name}
   create xbutton /form/{name}/close -label "Close Window"\
        -script {script}
 end

 setfield /form/{name}/Na  value {getfield {path}/soma/Na_ron Gbar}
 setfield /form/{name}/K1  value {getfield {path}/soma/K1_ron Gbar}
 setfield /form/{name}/K2  value {getfield {path}/soma/K2_ron Gbar}

 xshow /form/{name}

end


function toggle_weights
   if ({weights_hidden}==0)
       setfield /form/draw/showweights label "Show Weights"   
       weights_hidden = 1
       str name
       foreach name ({el /form/draw/#sp})
          xhide {name}
       end
       foreach name ({el /form/draw/#sg})
          xhide {name}
       end
   else 
       weights_hidden = 0 
       setfield /form/draw/showweights label "Hide Weights"   
       str name
       foreach name ({el /form/draw/#sp})
          xshow {name}
       end
       foreach name ({el /form/draw/#sg})
          xshow {name}
       end
   end
end 

function setup_8_cell

   // draws 8 cell circuit and associate drawing with script functions

   create xform /form [0,245,700,400] \
             -title "8-Cell Model Parameter Editor"
   create xdraw /form/draw [0,0,100%,100%] -bg antiquewhite

   // draw connections between cells

   create xshape /form/draw/xHN4L_xHN4Rd -coords [.34,.21,0][.65,.21,0] \
                                        -linewidth 2 -fg red
   create xshape /form/draw/xHN4R_xHN4Ld -coords [.34,.19,0][.66,.19,0] \
                                        -linewidth 2 -fg blue
   create xshape /form/draw/xHN3L_xHN3Rd -coords [.34,.81,0][.65,.81,0] \
                                        -linewidth 2 -fg blue
   create xshape /form/draw/xHN3R_xHN3Ld -coords [.35,.79,0][.66,.79,0] \
                                        -linewidth 2 -fg red
   create xshape /form/draw/xHN4L_xHN1Ld -linewidth 2 \
                       -coords [.26,.21,0][.05,.21,0][.05,.45,0] -fg blue
   create xshape /form/draw/xHN3L_xHN1Ld -linewidth 2 \
                       -coords [.26,.79,0][.05,.79,0][.05,.55,0] -fg blue
   create xshape /form/draw/xHN4R_xHN1Rd -linewidth 2 \
                       -coords [.74,.21,0][.95,.21,0][.95,.45,0] -fg blue
   create xshape /form/draw/xHN3R_xHN1Rd -linewidth 2 \
                       -coords [.74,.79,0][.95,.79,0][.95,.55,0] -fg blue
   create xshape /form/draw/xHN1L_xHN4Ld -linewidth 2 \
                       -coords [.26,.19,0][.03,.19,0][.03,.45,0] -fg red
   create xshape /form/draw/xHN1L_xHN3Ld -linewidth 2 \
                       -coords [.26,.81,0][.03,.81,0][.03,.55,0] -fg red
   create xshape /form/draw/xHN1R_xHN4Rd -linewidth 2 \
                       -coords [.74,.19,0][.97,.19,0][.97,.45,0] -fg red
   create xshape /form/draw/xHN1R_xHN3Rd -linewidth 2 \
                       -coords [.74,.81,0][.97,.81,0][.97,.55,0] -fg red


   // draw cells HN(3,4)(L,R), and processes HN1(L,R)

   create xsphere /form/draw/xHN3L -fg green -tx .3 -ty 0.8 -r .04 \
              -script "editHN34cell /cell_3L HN3L"
   create xsphere /form/draw/xHN3R -fg green -tx .7 -ty 0.8 -r .04 \
              -script "editHN34cell /cell_3R HN3R"
   create xsphere /form/draw/xHN4L -fg green -tx .3 -ty 0.2 -r .04 \
              -script "editHN34cell /cell_4L HN4L"
   create xsphere /form/draw/xHN4R -fg green -tx .7 -ty 0.2 -r .04 \
              -script "editHN34cell /cell_4R HN4R"
   create xshape /form/draw/xHN1L -fg green -drawmode FillPoly \
              -coords [.0,.45,0][.0,.55,0][.11,.55,0][.11,.45,0][.0,.45,0] \
              -script "editHN12cell /cell_1L HN1L; editHN12cell /cell_2L HN2L"
   create xshape /form/draw/xHN1R -fg green -drawmode FillPoly \
              -coords [.89,.45,0][.89,.55,0][1,.55,0][1,.45,0][.89,.45,0] \
              -script "editHN12cell /cell_1R HN1R; editHN12cell /cell_2R HN2R"

   // add dots on inhibitory connections (all conn.'s are inhib.)

   create xsphere /form/draw/xHN4L_xHN4Rs -tx .65 -ty .21 -r 0.006 -fg red
   create xsphere /form/draw/xHN4R_xHN4Ls -tx .35 -ty .19 -r 0.006 -fg blue
   create xsphere /form/draw/xHN3L_xHN3Rs -tx .65 -ty .81 -r 0.006 -fg blue
   create xsphere /form/draw/xHN3R_xHN3Ls -tx .35 -ty .79 -r 0.006 -fg red

   create xsphere /form/draw/xHN4L_xHN1Ls -tx .05 -ty .55 -r 0.006 -fg blue
   create xsphere /form/draw/xHN4R_xHN1Rs -tx .95 -ty .55 -r 0.006 -fg blue
   create xsphere /form/draw/xHN3L_xHN1Ls -tx .05 -ty .45 -r 0.006 -fg blue
   create xsphere /form/draw/xHN3R_xHN1Rs -tx .95 -ty .45 -r 0.006 -fg blue

   create xsphere /form/draw/xHN1L_xHN4Ls -tx .25 -ty .19 -r 0.006 -fg red
   create xsphere /form/draw/xHN1R_xHN4Rs -tx .75 -ty .19 -r 0.006 -fg red
   create xsphere /form/draw/xHN1L_xHN3Ls -tx .25 -ty .81 -r 0.006 -fg red
   create xsphere /form/draw/xHN1R_xHN3Rs -tx .75 -ty .81 -r 0.006 -fg red

   // label the objects

   create xshape /form/draw/xHN4Ll -text "HN(L,4)" -tx .3 -ty .2 \
              -script "editHN34cell /cell_4L HN4L"
   create xshape /form/draw/xHN4Rl -text "HN(R,4)" -tx .7 -ty .2 \
              -script "editHN34cell /cell_4R HN4R"
   create xshape /form/draw/xHN3Ll -text "HN(L,3)" -tx .3 -ty .8 \
              -script "editHN34cell /cell_3L HN3L"
   create xshape /form/draw/xHN3Rl -text "HN(R,3)" -tx .7 -ty .8 \
              -script "editHN34cell /cell_3R HN3R"
   create xshape /form/draw/xHN1Ll -text "HN(L,1-2)" -tx .055 -ty .5 \
              -script "editHN12cell /cell_1L HN1L; editHN12cell /cell_2L HN2L"
   create xshape /form/draw/xHN1Rl -text "HN(R,1-2)" -tx .95 -ty .5 \
              -script "editHN12cell /cell_1R HN1R; editHN12cell /cell_2R HN2R"

   // add the xdialogs

   // between the 3's

   create xdialog /form/draw/xHN3L_xHN3Rsp [35%,2%,30%,30] \
          -label "s(6e-8):" \
          -script "disoff xHN3L_xHN3Rd xHN3L_xHN3Rs; setfield /cell_3R/soma/SynS3L3R gmax <value>"  -fg blue
   create xdialog /form/draw/xHN3L_xHN3Rsg [35%,10%,30%,30] \
          -label "g(3e-8):" \
          -script "disoff xHN3L_xHN3Rd xHN3L_xHN3Rs; setfield /cell_3R/soma/SynG Gbar <value>" -fg blue
   create xdialog /form/draw/xHN3R_xHN3Lsp [35%,23%,30%,30] \
          -label "s(6e-8):" \
          -script "disoff xHN3R_xHN3Ld xHN3R_xHN3Ls; setfield /cell_3L/soma/SynS3R3L gmax <value>" -fg red
   create xdialog /form/draw/xHN3R_xHN3Lsg [35%,31%,30%,30] \
          -label "g(3e-8):" \
          -script "disoff xHN3R_xHN3Ld xHN3R_xHN3Ls; setfield /cell_3L/soma/SynG Gbar <value>" -fg red

   // between the 4's

   create xdialog /form/draw/xHN4L_xHN4Rsp [35%,61%,30%,30] \
          -label "s(6e-8):" \
          -script "disoff xHN4L_xHN4Rd xHN4L_xHN4Rs; setfield /cell_4R/soma/SynS4L4R gmax <value>"  -fg red
   create xdialog /form/draw/xHN4L_xHN4Rsg [35%,69%,30%,30] \
          -label "g(3e-8):" \
          -script "disoff xHN4L_xHN4Rd xHN4L_xHN4Rs; setfield /cell_4R/soma/SynG Gbar <value>" -fg red
   create xdialog /form/draw/xHN4R_xHN4Lsp [35%,82%,30%,30] \
          -label "s(6e-8):" \
          -script "disoff xHN4R_xHN4Ld xHN4R_xHN4Ls; setfield /cell_4L/soma/SynS4R4L gmax <value>" -fg blue
   create xdialog /form/draw/xHN4R_xHN4Lsg [35%,90%,30%,30] \
          -label "g(3e-8):" \
          -script "disoff xHN4R_xHN4Ld xHN4R_xHN4Ls; setfield /cell_4L/soma/SynG Gbar <value>" -fg blue

   // between the 4's and 1's

   create xdialog /form/draw/xHN4L_xHN1Lsp [6%,57%,29%,30] \
          -label "1(6e-9):" \ 
          -script "disoff xHN4L_xHN1Ld xHN4L_xHN1Ls; setfield /cell_1L/soma/SynS4L1L gmax <value>" -fg blue
   create xdialog /form/draw/xHN4R_xHN1Rsp [65%,57%,29%,30] \
          -label "1(6e-9):" \
          -script "disoff xHN4R_xHN1Rd xHN4R_xHN1Rs; setfield /cell_1R/soma/SynS4R1R gmax <value>" -fg blue
    create xdialog /form/draw/xHN1L_xHN4Lsp [0%,84%,29%,30]\
          -label "1(8e-9):" \
          -script "disoff xHN1L_xHN4Ld xHN1L_xHN4Ls; setfield /cell_4L/soma/SynS1L4L gmax <value>" -fg red
   create xdialog /form/draw/xHN1R_xHN4Rsp  [71%,84%,29%,30] \
          -label "1(8e-9):" \
          -script "disoff xHN1R_xHN4Rd xHN1R_xHN4Rs; setfield /cell_4R/soma/SynS1R4R gmax <value>" -fg red

   // between the 4's and 2's

   create xdialog /form/draw/xHN4L_xHN2Lsp [6%,65%,29%,30] \
          -label "2(6e-9):" \ 
          -script "disoff xHN4L_xHN2Ld xHN4L_xHN2Ls; setfield /cell_2L/soma/SynS4L2L gmax <value>" -fg blue
   create xdialog /form/draw/xHN4R_xHN2Rsp [65%,65%,29%,30] \
          -label "2(6e-9):" \
          -script "disoff xHN4R_xHN2Rd xHN4R_xHN2Rs; setfield /cell_2R/soma/SynS4R2R gmax <value>" -fg blue
    create xdialog /form/draw/xHN2L_xHN4Lsp [0%,92%,29%,30]\
          -label "2(8e-9):" \
          -script "disoff xHN2L_xHN4Ld xHN2L_xHN4Ls; setfield /cell_4L/soma/SynS2L4L gmax <value>" -fg red
   create xdialog /form/draw/xHN2R_xHN4Rsp  [71%,92%,29%,30] \
          -label "2(8e-9):" \
          -script "disoff xHN2R_xHN4Rd xHN2R_xHN4Rs; setfield /cell_4R/soma/SynS2R4R gmax <value>" -fg red

   // between the 3's and 1's

   create xdialog /form/draw/xHN3L_xHN1Lsp [6%,25%,29%,30] \
          -label "1(6e-9):" \ 
          -script "disoff xHN3L_xHN1Ld xHN3L_xHN1Ls; setfield /cell_1L/soma/SynS3L1L gmax <value>" -fg blue
   create xdialog /form/draw/xHN3R_xHN1Rsp [65%,25%,29%,30] \
          -label "1(6e-9):" \
          -script "disoff xHN3R_xHN1Rd xHN3R_xHN1Rs; setfield /cell_1R/soma/SynS3R1R gmax <value>" -fg blue
   create xdialog /form/draw/xHN1L_xHN3Lsp [0%,0%,29%,30]\
          -label "1(8e-9):" \
          -script "disoff xHN1L_xHN3Ld xHN1L_xHN3Ls; setfield /cell_3L/soma/SynS1L3L gmax <value>" -fg red
   create xdialog /form/draw/xHN1R_xHN3Rsp  [71%,0%,29%,30] \
          -label "1(8e-9):" \
          -script "disoff xHN1R_xHN3Rd xHN1R_xHN3Rs; setfield /cell_3R/soma/SynS1R3R gmax <value>" -fg red

   // between the 3's and 2's

   create xdialog /form/draw/xHN3L_xHN2Lsp [6%,33%,29%,30] \
          -label "2(6e-9):" \ 
          -script "disoff xHN3L_xHN2Ld xHN3L_xHN2Ls; setfield /cell_2L/soma/SynS3L2L gmax <value>" -fg blue
   create xdialog /form/draw/xHN3R_xHN2Rsp [65%,33%,29%,30] \
          -label "2(6e-9):" \
          -script "disoff xHN3R_xHN2Rd xHN3R_xHN2Rs; setfield /cell_2R/soma/SynS3R2R gmax <value>" -fg blue
   create xdialog /form/draw/xHN2L_xHN3Lsp [0%,8%,29%,30] \
          -label "2(8e-9):" \
          -script "disoff xHN2L_xHN3Ld xHN2L_xHN3Ls; setfield /cell_3L/soma/SynS2L3L gmax <value>" -fg red
   create xdialog /form/draw/xHN2R_xHN3Rsp  [71%,8%,29%,30] \
          -label "2(8e-9):" \
          -script "disoff xHN2R_xHN3Rd xHN2R_xHN3Rs; setfield /cell_3R/soma/SynS2R3R gmax <value>" -fg red

   // dialogs for the model editor

 create xbutton /form/draw/setdefaults [12%,49%,23%,28] -label "Use Defaults" \
         -script "reset_defaults"
  
   create xbutton /form/draw/getedhelp   [12%,42%,23%,28] -label "Editor Help" \
         -script "xshow /helpwinds/edhelp"
   create xdialog /form/draw/loadpf      [35%,42%,30%,28] -label "Load:" \
         -script "loadscript <value>"
   create xdialog /form/draw/savepf      [35%,49%,30%,28] -label "Save:" \
         -script "save_param <value>"
   create xbutton /form/draw/showweights [65%,42%,23%,28] \
         -label "Hide Weights"  -script "toggle_weights"
   toggle_weights
   create xbutton /form/draw/closewind   [65%,49%,23%,28] \
         -label "Close Window"  -script "xhide /form"

   setweightbuttons_8cell

end

