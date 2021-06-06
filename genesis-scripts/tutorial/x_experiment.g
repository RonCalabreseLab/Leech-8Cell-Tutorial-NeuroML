// This file handles all of the experiments except the parameter editor.  
// See x_interface.g for that.

// these two functions handle the "Disable/Enable Cells" option

function disoff(widget1, widget2)
   str widget1, widget2
   if ({exists /form/disablecs/draw/{widget1}}) 
      setfield /form/disablecs/draw/{widget1} fg black
      setfield /form/disablecs/draw/{widget2} fg black
   end
end

function togdis (widget, addition, object, whichVal, object2, whichVal2, gmaxStr)
// toggledisabled
   str widget, addition, object, oldValue
   str name


   if ({strcmp {getfield {widget} fg} "black"}==0)
     setfield {widget} fg white
     setfield {addition} fg white
     setfield /form/disablecs/oldValues table->table[{whichVal}] {getfield {object} gmax}
     setfield {object} gmax 0
     if ({strcmp {object2} "blah"})
        setfield /form/disablecs/oldValues table->table[{whichVal2}] \
             {getfield {object2} {gmaxStr}}
        setfield {object2} {gmaxStr} 0
     end
   else
     if ({strcmp {getfield {widget} fg} "white"}==0)
        setfield {widget} fg black
        setfield {addition} fg black
        setfield {object} gmax {getfield /form/disablecs/oldValues \
             table->table[{whichVal}]}
        if ({strcmp {object2} "blah"})
           setfield {object2} {gmaxStr} {getfield /form/disablecs/oldValues \
                table->table[{whichVal2}]}
        end
     else
       if ({strcmp {getfield {widget} fg} "darkgray"}==0)
          setfield {widget} fg green
          foreach name ({el {object}/##})
             useclock {name} 0 
          end
          if ({strcmp {object2} "blah"})
             foreach name ({el {object2}/##})
                useclock {name} 0 
             end
          end
       else
          setfield {widget} fg darkgray
          foreach name ({el {object}/##})
             useclock {name} 10 
          end
          if ({strcmp {object2} "blah"})
             foreach name ({el {object2}/##})
                useclock {name} 10 
             end
          end
       end
     end
   end
   setweightbuttons_8cell
   setcellformvalues
end

function create_disable_cs
   str script

   // draws 8 cell circuit and associate drawing with script functions

   if (!{exists /form/disablecs})
   create xform /form/disablecs [0,245,470,280] \
             -title "Disable Cells & Synapses"
   create xdraw /form/disablecs/draw [0,0,100%,100%] -bg gray

   create table /form/disablecs/oldValues
   call /form/disablecs/oldValues TABCREATE 23 0 23
   int iiiiii
   for (iiiiii=0; {iiiiii}<24; iiiiii={iiiiii}+1)
      setfield /form/disablecs/oldValues table->table[{iiiiii}] 0
   end
   setclock 10 1000

   // draw connections between cells

   script = "togdis <w> /form/disablecs/draw/xHN4L_xHN4Rs /cell_4R/soma/SynS4L4R " @ \
            "0 /cell_4R/soma/SynG 1 Gbar"
   create xshape /form/disablecs/draw/xHN4L_xHN4Rd -coords [.34,.22,0][.65,.22,0] \
                                        -linewidth 4 -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN4R_xHN4Ls /cell_4L/soma/SynS4R4L " @ \
            "2 /cell_4L/soma/SynG 3 Gbar"
   create xshape /form/disablecs/draw/xHN4R_xHN4Ld -coords [.34,.18,0][.66,.18,0] \
                                        -linewidth 4 -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN3L_xHN3Rs /cell_3R/soma/SynS3L3R " @ \
            "4 /cell_3R/soma/SynG 5 Gbar"
   create xshape /form/disablecs/draw/xHN3L_xHN3Rd -coords [.34,.82,0][.65,.82,0] \
                                        -linewidth 4 -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN3R_xHN3Ls /cell_3L/soma/SynS3R3L " @ \
            "6 /cell_3L/soma/SynG 7 Gbar"
   create xshape /form/disablecs/draw/xHN3R_xHN3Ld -coords [.35,.78,0][.66,.78,0] \
                                        -linewidth 4 -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN4L_xHN1Ls /cell_1L/soma/SynS4L1L " @ \
            "8 /cell_2L/soma/SynS4L2L 9 gmax"
   create xshape /form/disablecs/draw/xHN4L_xHN1Ld -linewidth 4 \
                       -coords [.26,.22,0][.12,.22,0][.12,.45,0] -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN4R_xHN1Rs /cell_1R/soma/SynS4R1R " @ \
            "10 /cell_2R/soma/SynS4R2R 11 gmax"
   create xshape /form/disablecs/draw/xHN4R_xHN1Rd -linewidth 4 \
                       -coords [.74,.22,0][.88,.22,0][.88,.45,0] -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN3L_xHN1Ls /cell_1L/soma/SynS3L1L " @ \
            "12 /cell_2L/soma/SynS3L2L 13 gmax"
   create xshape /form/disablecs/draw/xHN3L_xHN1Ld -linewidth 4 \
                       -coords [.26,.78,0][.12,.78,0][.12,.55,0] -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN3R_xHN1Rs /cell_1R/soma/SynS3R1R " @ \
            "14 /cell_2R/soma/SynS3R2R 15 gmax"
   create xshape /form/disablecs/draw/xHN3R_xHN1Rd -linewidth 4 \
                       -coords [.74,.78,0][.88,.78,0][.88,.55,0] -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN1L_xHN4Ls /cell_4L/soma/SynS1L4L " @ \
            "16 /cell_4L/soma/SynS2L4L 17 gmax"
   create xshape /form/disablecs/draw/xHN1L_xHN4Ld -linewidth 4 \
                       -coords [.26,.18,0][.09,.18,0][.09,.45,0] -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN1R_xHN4Rs /cell_4R/soma/SynS1R4R " @ \
            "18 /cell_4R/soma/SynS2R4R 19 gmax"
   create xshape /form/disablecs/draw/xHN1R_xHN4Rd -linewidth 4 \
                       -coords [.74,.18,0][.91,.18,0][.91,.45,0] -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN1L_xHN3Ls /cell_3L/soma/SynS1L3L " @ \
            "20 /cell_3L/soma/SynS2L3L 21 gmax"
   create xshape /form/disablecs/draw/xHN1L_xHN3Ld -linewidth 4 \
                       -coords [.26,.82,0][.09,.82,0][.09,.55,0] -fg black -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN1R_xHN3Rs /cell_3R/soma/SynS1R3R " @ \
            "22 /cell_3R/soma/SynS2R3R 23 gmax"
   create xshape /form/disablecs/draw/xHN1R_xHN3Rd -linewidth 4 \
                       -coords [.74,.82,0][.91,.82,0][.91,.55,0] -fg black -script {script}


   // draw cells HN(3,4)(L,R), and processes HN1(L,R)

   create xsphere /form/disablecs/draw/xHN3L -fg green -tx .3 -ty 0.8 -r .04 \
              -script "togdis <w> blah /cell_3L blah blah blah blah"
   create xsphere /form/disablecs/draw/xHN3R -fg green -tx .7 -ty 0.8 -r .04 \
              -script "togdis <w> blah /cell_3R blah blah blah blah"
   create xsphere /form/disablecs/draw/xHN4L -fg green -tx .3 -ty 0.2 -r .04 \
              -script "togdis <w> blah /cell_4L blah blah blah blah"
   create xsphere /form/disablecs/draw/xHN4R -fg green -tx .7 -ty 0.2 -r .04 \
              -script "togdis <w> blah /cell_4R blah blah blah blah"
   create xshape /form/disablecs/draw/xHN1L -fg green -drawmode FillPoly \
              -coords [.05,.45,0][.05,.55,0][.15,.55,0][.15,.45,0][.05,.45,0] \
              -script "togdis <w> blah /cell_1L blah /cell_2L blah blah"
    create xshape /form/disablecs/draw/xHN1R -fg green -drawmode FillPoly \
              -coords [.85,.45,0][.85,.55,0][.95,.55,0][.95,.45,0][.85,.45,0] \
              -script "togdis <w> blah /cell_1R blah /cell_2R blah blah"

   // add dots on inhibitory connections (all conn.'s are inhib.)

   script = "togdis <w> /form/disablecs/draw/xHN4L_xHN4Rd /cell_4R/soma/SynS4L4R " @ \
            "0 /cell_4R/soma/SynG 1 Gbar" 
   create xsphere /form/disablecs/draw/xHN4L_xHN4Rs -tx .65 -ty .22 -r 0.009 -fg black \
       -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN4R_xHN4Ld /cell_4L/soma/SynS4R4L " @ \
            "2 /cell_4L/soma/SynG 3 Gbar"
   create xsphere /form/disablecs/draw/xHN4R_xHN4Ls -tx .35 -ty .18 -r 0.009 -fg black \
       -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN3L_xHN3Rd /cell_3R/soma/SynS3L3R " @ \
            "4 /cell_3R/soma/SynG 5 Gbar"
   create xsphere /form/disablecs/draw/xHN3L_xHN3Rs -tx .65 -ty .82 -r 0.009 -fg black \
       -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN3R_xHN3Ld /cell_3L/soma/SynS3R3L " @ \
            "6 /cell_3L/soma/SynG 7 Gbar"
   create xsphere /form/disablecs/draw/xHN3R_xHN3Ls -tx .35 -ty .78 -r 0.009 -fg black \
       -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN4L_xHN1Ld /cell_1L/soma/SynS4L1L " @ \
            "8 /cell_2L/soma/SynS4L2L 9 gmax"
   create xsphere /form/disablecs/draw/xHN4L_xHN1Ls -tx .12 -ty .45 -r 0.009 -fg black \
       -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN4R_xHN1Rd /cell_1R/soma/SynS4R1R " @ \
            "10 /cell_2R/soma/SynS4R2R 11 gmax"
   create xsphere /form/disablecs/draw/xHN4R_xHN1Rs -tx .88 -ty .45 -r 0.009 -fg black \
        -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN3L_xHN1Ld /cell_1L/soma/SynS3L1L " @ \
            "12 /cell_2L/soma/SynS3L2L 13 gmax"
   create xsphere /form/disablecs/draw/xHN3L_xHN1Ls -tx .12 -ty .55 -r 0.009 -fg black \
         -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN3R_xHN1Rd /cell_1R/soma/SynS3R1R " @ \
            "14 /cell_2R/soma/SynS3R2R 15 gmax"
   create xsphere /form/disablecs/draw/xHN3R_xHN1Rs -tx .88 -ty .55 -r 0.009 -fg black \
         -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN1L_xHN4Ld /cell_4L/soma/SynS1L4L " @ \
            "16 /cell_4L/soma/SynS2L4L 17 gmax"
   create xsphere /form/disablecs/draw/xHN1L_xHN4Ls -tx .25 -ty .18 -r 0.009 -fg black \
         -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN1R_xHN4Rd /cell_4R/soma/SynS1R4R " @  \
            "18 /cell_4R/soma/SynS2R4R 19 gmax"
   create xsphere /form/disablecs/draw/xHN1R_xHN4Rs -tx .75 -ty .18 -r 0.009 -fg black \
         -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN1L_xHN3Ld /cell_3L/soma/SynS1L3L " @ \
            "20 /cell_3L/soma/SynS2L3L 21 gmax"
   create xsphere /form/disablecs/draw/xHN1L_xHN3Ls -tx .25 -ty .82 -r 0.009 -fg black \
         -script {script}
   script = "togdis <w> /form/disablecs/draw/xHN1R_xHN3Rd /cell_4R/soma/SynS1R3R " @ \
            "22 /cell_3R/soma/SynS2R3R 23 gmax"
   create xsphere /form/disablecs/draw/xHN1R_xHN3Rs -tx .75 -ty .82 -r 0.009 -fg black \
         -script {script}

   // label the objects

   create xshape /form/disablecs/draw/xHN4Ll -text "L,4" -tx .3 -ty .2 \
              -script "togdis /form/disablecs/draw/xHN4L blah /cell_4L blah blah blah bh"
   create xshape /form/disablecs/draw/xHN4Rl -text "R,4" -tx .7 -ty .2 \
              -script "togdis /form/disablecs/draw/xHN4R blah /cell_4R blah blah blah bh"
   create xshape /form/disablecs/draw/xHN3Ll -text "L,3" -tx .3 -ty .8 \
              -script "togdis /form/disablecs/draw/xHN3L blah /cell_3L blah blah blah bh"
   create xshape /form/disablecs/draw/xHN3Rl -text "R,3" -tx .7 -ty .8 \
              -script "togdis /form/disablecs/draw/xHN3R blah /cell_3R blah blah blah bh"
   create xshape /form/disablecs/draw/xHN1Ll -text "L,1-2" -tx .10 -ty .5 \
              -script "togdis /form/disablecs/draw/xHN1L blah /cell_1L bh /cell_2L bh bh"
   create xshape /form/disablecs/draw/xHN1Rl -text "R,1-2" -tx .90 -ty .5 \
              -script "togdis /form/disablecs/draw/xHN1R blah /cell_1R bh /cell_2R bh bh"

   // dialogs for the model editor

   create xbutton /form/disablecs/draw/help [35%,38%,30%,28] \
         -label "Help" -script "xshow /helpwinds/dishelp"
   create xbutton /form/disablecs/draw/close [35%,52%,30%,28] \
         -label "Close Window" -script "xhide /form/disablecs"

   end

   xshow /form/disablecs

end



// This handles the "Current Injection" button

function current_injection
 str name, objname, script,labelname;

 if (!{exists /form/curr_inject})
   create xform /form/curr_inject [0,0,300,300] -title "Current Injection (amps)"

   foreach name (/cell_1L /cell_1R /cell_2L /cell_2R /cell_3L /cell_3R \
                   /cell_4L /cell_4R)
      script = "setfield " @ {name} @ "/soma inject <value>" 
      labelname = "HN("@{substring {name} 7}@","@{substring {name} 6 6}@")"
      objname = "/form/curr_inject/" @ {substring {name} 1}
      create xdialog {objname} -label {labelname} -script {script}
   end

   script = "xhide /form/curr_inject"
   create xbutton /form/curr_inject/close -label "Close Window" \
        -script {script}
 end

 foreach name (/cell_1L /cell_1R /cell_2L /cell_2R /cell_3L /cell_3R \
                   /cell_4L /cell_4R)
      objname = "/form/curr_inject/" @ {substring {name} 1}
      setfield {objname} value {getfield {name}/soma inject}
 end

 xshow /form/curr_inject

end

