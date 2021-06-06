// graphs for simulation

function make_dataL
str path, gpath,script
path = "/dataL"

create xform /dataL [600,5,400,730]
create xlabel /dataL/label -hgeom 20 -bg cyan -label "HN (L, 1...4)"
// added SDV 8/99
if ({exists /tutorial})
   script = "autoscale " @ {path}
   create xbutton {path}/autoscale [70%,-2,30%,22] -label "Autoscale t" \
      -script {script}
   xshow {path}/autoscale
end

gpath=(path) @"/HN1"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 20:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 20:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
addmsg /cell_1L/soma {gpath} PLOT Vm *soma *red


gpath=(path) @"/HN2"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 195:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 195:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
addmsg /cell_2L/soma {gpath} PLOT Vm *soma *red


gpath=(path) @"/HN3"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 370:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 370:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
addmsg /cell_3L/soma {gpath} PLOT Vm *soma *red

gpath=(path) @"/HN4"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 545:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 545:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
addmsg /cell_4L/soma {gpath} PLOT Vm *soma *red

//xshow /dataL  **SDV** 8/99
useclock /dataL/HN1 1
useclock /dataL/HN2 1
useclock /dataL/HN3 1
useclock /dataL/HN4 1
end 

function make_dataR
str path, gpath, script
path = "/dataR"

create xform /dataR [600,5,400,730]
create xlabel /dataR/label -hgeom 20 -bg cyan -label "HN (R, 1...4)"
if ({exists /tutorial})
   script = "autoscale " @ {path}
   create xbutton {path}/autoscale [70%,-2,30%,22] -label "Autoscale t" \
      -script {script}
   xshow {path}/autoscale
end

gpath=(path) @"/HN1"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 20:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 20:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
addmsg /cell_1R/soma {gpath} PLOT Vm *soma *red


gpath=(path) @"/HN2"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 195:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 195:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
addmsg /cell_2R/soma {gpath} PLOT Vm *soma *red


gpath=(path) @"/HN3"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 370:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 370:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
addmsg /cell_3R/soma {gpath} PLOT Vm *soma *red

gpath=(path) @"/HN4"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 545:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 545:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
addmsg /cell_4R/soma {gpath} PLOT Vm *soma *red

//xshow /dataR  **SDV** 8/99
useclock /dataR/HN1 1
useclock /dataR/HN2 1
useclock /dataR/HN3 1
useclock /dataR/HN4 1
end 

function make_graph_volt4
str path, gpath
path = "/volt4"

create xform /volt4 [600,5,400,730]
create xlabel /volt4/label -hgeom 20 -bg cyan -label "HN(4)"

gpath = (path) @ "/HN4R"
create xgraph {gpath}\
     -hgeom 350 -title "HN(4,R)"
setfield {gpath} ygeom 20:parent.top
create xbutton {gpath}"/scale" \
          -title \
         "scale" -script "set_scale "{gpath}
    
setfield {gpath}"/scale" ygeom 20:parent.top  \
                           xgeom 340:parent.left  \
                           wgeom 50 hgeom 30  

    setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
    setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
    addmsg /cell_4R/soma {gpath} PLOT Vm *soma *red

gpath = (path) @ "/HN4L"
create xgraph {gpath}\
     -hgeom 350  -title "HN(4,L)"
setfield {gpath} ygeom 375:parent.top
create xbutton {gpath}"/scale" \
          -title \
         "scale" -script "set_scale "{gpath}
    
setfield {gpath}"/scale" ygeom 375:parent.top  \
                           xgeom 334:parent.left  \
                           wgeom 50 hgeom 30  

    setfield {gpath} XUnits "t (sec)" YUnits "voltage (V)"
    setfield {gpath} xmax 20 ymin -0.06 ymax 0.005
    addmsg /cell_4L/soma {gpath} PLOT Vm *soma *red

//xshow /volt4  **SDV** 8/99
useclock /volt4/HN4R 1
useclock /volt4/HN4L 1
end 


function make_graph_volt12
create xform /volt12 [600,20,400,730]
create xlabel /volt12/label -hgeom 20 -bg cyan -label "HN(1,2)"

create xgraph /volt12/HN1R -hgeom 25%
setfield /volt12/HN1R xmax 20 ymax 0.005 ymin -0.07
addmsg /cell_1R/soma /volt12/HN1R PLOT Vm *soma *red

create xgraph /volt12/HN2R -hgeom 25%
setfield /volt12/HN2R xmax 20 ymax 0.005 ymin -0.07
addmsg /cell_2R/soma /volt12/HN2R PLOT Vm *soma *red

create xgraph /volt12/HN1L -hgeom 25%
setfield /volt12/HN1L xmax 20 ymax 0.005 ymin -0.07
addmsg /cell_1L/soma /volt12/HN1L PLOT Vm *soma *red

create xgraph /volt12/HN2L -hgeom 25%
setfield /volt12/HN2L xmax 20 ymax 0.005 ymin -0.07
addmsg /cell_2L/soma /volt12/HN2L PLOT Vm *soma *red

//xshow /volt12 **SDV** 8/99
useclock /volt12/HN1R 1
useclock /volt12/HN2R 1
useclock /volt12/HN1L 1
useclock /volt12/HN2L 1

end 

function make_graph_HN4L_1
str path, gpath, script
path ="/HN4L_1"

create xform /HN4L_1 [600,5,400,730]
create xlabel /HN4L_1/label -hgeom 20 -bg cyan -label "HN(L,4)"
if ({exists /tutorial})
   script = "autoscale " @ {path}
   create xbutton {path}/autoscale [70%,-2,30%,22] -label "Autoscale t" \
      -script {script}
   xshow {path}/autoscale
end

gpath=(path)@"/Ih"
create xgraph {gpath} -hgeom 175
setfield {gpath} ygeom 20:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 20:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -1e-10 ymax 5e-11
addmsg /cell_4L/soma/h_ron {gpath} PLOTSCALE Ik *Ih *red -1 0
                                    //PLOTSCALE data name color scale yoffset
                        //Similar to PLOT, except that the scale and yoffset

gpath=(path) @"/ICaF"                
create xgraph {gpath} -hgeom 175
setfield {gpath} ygeom 195:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 195:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -.5e-10 ymax 1e-12
addmsg /cell_4L/soma/CaF_ron {gpath} PLOTSCALE Ik *ICaF *red -1 0


gpath=(path) @"/ICaS"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 370:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 370:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -1e-10 ymax 1e-12
addmsg /cell_4L/soma/CaS_ron {gpath} PLOTSCALE Ik *ICaS *red -1 0


gpath=(path) @"/Ip"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 545:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 545:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -4e-10 ymax 0
addmsg /cell_4L/soma/P_ron {gpath} PLOTSCALE Ik *Ip *red -1 0


//xshow /HN4L_1 **SDV** 8/99
useclock /HN4L_1/Ih 1
useclock /HN4L_1/ICaF 1
useclock /HN4L_1/ICaS 1
useclock /HN4L_1/Ip 1
end 

function make_graph_HN4L_2
str path, gpath, script
path ="/HN4L_2"

create xform /HN4L_2 [600,5,400,730]
create xlabel /HN4L_2/label -hgeom 20 -bg cyan -label "HN(L,4)"
if ({exists /tutorial})
   script = "autoscale " @ {path}
   create xbutton {path}/autoscale [70%,-2,30%,22] -label "Autoscale t" \
      -script {script}
   xshow {path}/autoscale
end

gpath=(path)@"/INa"
create xgraph {gpath} -hgeom 175
setfield {gpath} ygeom 20:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 20:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -7e-9 ymax 1e-12
addmsg /cell_4L/soma/Na_ron {gpath} PLOTSCALE Ik *INa *red -1 0
                                    //PLOTSCALE data name color scale yoffset
                        //Similar to PLOT, except that the scale and yoffset
                
gpath=(path) @"/IK1"                
create xgraph {gpath} -hgeom 175
setfield {gpath} ygeom 195:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 195:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -1e-12 ymax 4e-9
addmsg /cell_4L/soma/K1_ron {gpath} PLOTSCALE Ik *IK1 *red -1 0



gpath=(path) @"/IK2"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 370:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 370:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -1e-12 ymax 5e-10
addmsg /cell_4L/soma/K2_ron {gpath} PLOTSCALE Ik *IK2 *red -1 0

gpath=(path) @"/IA"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 545:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 545:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -1e-12 ymax 2e-10
addmsg /cell_4L/soma/A_ron {gpath} PLOTSCALE Ik *IA *red -1 0


//xshow /HN4L_2 **SDV** 8/99
useclock /HN4L_2/INa 1
useclock /HN4L_2/IK1 1
useclock /HN4L_2/IK2 1
useclock /HN4L_2/IA 1
end 

function make_graph_HN4L_3
str path, gpath, script
path ="/HN4L_3"
  
create xform /HN4L_3 [600,5,400,730]
create xlabel /HN4L_3/label -hgeom 20 -bg cyan -label "HN(L,4)"
if ({exists /tutorial})
   script = "autoscale " @ {path}
   create xbutton {path}/autoscale [70%,-2,30%,22] -label "Autoscale t" \
      -script {script}
   xshow {path}/autoscale
end

gpath=(path)@"/GSynG"
create xgraph {gpath} -hgeom 175
setfield {gpath} ygeom 20:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 20:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "conductance (S)"
setfield {gpath} xmax 20 ymin -1e-12 ymax 4e-9
addmsg /cell_4L/soma/SynG {gpath} PLOTSCALE Gk *GSynG *red 1 0
                                    //PLOTSCALE data name color scale yoffset
                        //Similar to PLOT, except that the scale and yoffset
                
gpath=(path) @"/ISynG"                
create xgraph {gpath} -hgeom 175
setfield {gpath} ygeom 195:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 195:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -1e-12 ymax 5e-11
addmsg /cell_4L/soma/SynG {gpath} PLOTSCALE Ik *ISynG *red -1 0

gpath=(path) @"/GSynS4R4L"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 370:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 370:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "conductnace (S)"
setfield {gpath} xmax 20 ymin -1e-11 ymax 5e-8
addmsg /cell_4L/soma/SynS4R4L {gpath} PLOTSCALE Gk *GSynS4R4L *red 1 0

gpath=(path) @"/ISynS4R4L"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 545:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 545:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin -1e-11 ymax 2e-9
addmsg /cell_4L/soma/SynS4R4L {gpath} PLOTSCALE Ik *ISynS4R4L *red -1 0

//xshow /HN4L_3 **SDV** 8/99
useclock /HN4L_3/GSynG 1
useclock /HN4L_3/ISynG 1
useclock /HN4L_3/GSynS4R4L 1
useclock /HN4L_3/ISynS4R4L 1
end 











function make_graph_HN4L_4
str path, gpath, script
path ="/HN4L_4"
  
create xform /HN4L_4 [600,5,400,730]
create xlabel /HN4L_4/label -hgeom 20 -bg cyan -label "HN(L,4)"
if ({exists /tutorial})
   script = "autoscale " @ {path}
   create xbutton {path}/autoscale [70%,-2,30%,22] -label "Autoscale t" \
      -script {script}
   xshow {path}/autoscale
end

gpath=(path)@"/GSynS1L4L"
create xgraph {gpath} -hgeom 175
setfield {gpath} ygeom 20:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 20:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "conductance (S)"
setfield {gpath} xmax 20 ymin 0 ymax 1e-8
addmsg /cell_4L/soma/SynS1L4L {gpath} PLOTSCALE Gk *GSynS1L4L *red 1 0
                                    //PLOTSCALE data name color scale yoffset
                        //Similar to PLOT, except that the scale and yoffset
                
gpath=(path) @"/ISynS1L4L"                
create xgraph {gpath} -hgeom 175
setfield {gpath} ygeom 195:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 195:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin 0 ymax 1.2e-10
addmsg /cell_4L/soma/SynS1L4L {gpath} PLOTSCALE Ik *ISynS1L4L *red -1 0

gpath=(path) @"/GSynS2L4L"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 370:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 370:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "conductnace (S)"
setfield {gpath} xmax 20 ymin 0 ymax 1e-8
addmsg /cell_4L/soma/SynS2L4L {gpath} PLOTSCALE Gk *GSynS2L4L *red 1 0

gpath=(path) @"/ISynS2L4L"
create xgraph {gpath} -hgeom 175 
setfield {gpath} ygeom 545:parent.top
create xbutton {gpath}"/scale" \
	-title "scale" -script "set_scale "{gpath}

setfield {gpath}"/scale" ygeom 545:parent.top \
			 xgeom 334:parent.left  \
			 wgeom 50 hgeom 22

setfield {gpath} XUnits "t (sec)" YUnits "current (A)"
setfield {gpath} xmax 20 ymin 0 ymax 1.2e-10
addmsg /cell_4L/soma/SynS2L4L {gpath} PLOTSCALE Ik *ISynS2L4L *red -1 0

//xshow /HN4L_4 **SDV** 8/99
useclock /HN4L_4/GSynS1L4L 1
useclock /HN4L_4/ISynS1L4L 1
useclock /HN4L_4/GSynS2L4L 1
useclock /HN4L_4/ISynS2L4L 1
end 






