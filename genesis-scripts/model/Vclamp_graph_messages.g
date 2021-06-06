/*function squid_graph_messages1(cell_path, clamp_path)
str cell_path
str clamp_path

addmsg {cell_path} {clamp_path}/graphs/Vm PLOT Vm *Vm *red
addmsg {clamp_path}/Vclamp {clamp_path}/graphs/Vm PLOT output *command *blue

//addmsg {clamp_path}/Iclamp {clamp_path}/graphs/inj PLOT output *Iclamp *red
addmsg {clamp_path}/PID {clamp_path}/graphs/inj PLOT output *Vclamp *blue

//addmsg /cell_4L/soma/Na_ron /clamp/graphs/Gk PLOT Gk *Na *blue
//addmsg /cell_4L/soma/K1_ron /clamp/graphs/Gk PLOT Gk *K *red
addmsg {cell_path}/SynG {clamp_path}/graphs/Gk PLOT Gk *SynG *blue
addmsg {cell_path}/SynS4L5L {clamp_path}/graphs/Gk PLOT Gk *SynS4L5L *red

//addmsg /cell_4L/soma/Na_ron /clamp/graphs/Ik PLOTSCALE Ik *Na *blue -1 0
//addmsg /cell_4L/soma/K1_ron /clamp/graphs/Ik PLOTSCALE Ik *K *red -1 0
addmsg {cell_path}/SynG {clamp_path}/graphs/Ik PLOTSCALE Ik *SynG *blue -1 0
addmsg {cell_path}/SynS4L5L {clamp_path}/graphs/Ik PLOTSCALE Ik *SynS4L5L *red -1 0

//addmsg /cell_4L/soma/CaS_ron /clamp/graphs/Ik PLOTSCALE Ik *CaS *blue -1 0
//addmsg /cell_4L/soma/CaF_ron /clamp/graphs/Ik PLOTSCALE Ik *CaF *blue -1 0

//addmsg /cell_4L/soma/P_ron /clamp/graphs/Ik PLOTSCALE Ik *P *black -1 0

end
*/

// for 4R
function squid_graph_messages1(cell_path, clamp_path)
str cell_path
str clamp_path

addmsg {cell_path} {clamp_path}/graphs/Vm PLOT Vm *Vm *red
addmsg {clamp_path}/Vclamp {clamp_path}/graphs/Vm PLOT output *command *blue

//addmsg {clamp_path}/Iclamp {clamp_path}/graphs/inj PLOT output *Iclamp *red
addmsg {clamp_path}/PID {clamp_path}/graphs/inj PLOT output *Vclamp *blue

//addmsg /cell_4L/soma/Na_ron /clamp/graphs/Gk PLOT Gk *Na *blue
//addmsg /cell_4L/soma/K1_ron /clamp/graphs/Gk PLOT Gk *K *red
addmsg {cell_path}/SynG {clamp_path}/graphs/Gk PLOT Gk *SynG *blue
addmsg {cell_path}/SynS4L4R {clamp_path}/graphs/Gk PLOT Gk *SynS4L4R *red

//addmsg /cell_4L/soma/Na_ron /clamp/graphs/Ik PLOTSCALE Ik *Na *blue -1 0
//addmsg /cell_4L/soma/K1_ron /clamp/graphs/Ik PLOTSCALE Ik *K *red -1 0
addmsg {cell_path}/SynG {clamp_path}/graphs/Ik PLOTSCALE Ik *SynG *blue -1 0
addmsg {cell_path}/SynS4L4R {clamp_path}/graphs/Ik PLOTSCALE Ik *SynS4L4R *red -1 0

//addmsg /cell_4L/soma/CaS_ron /clamp/graphs/Ik PLOTSCALE Ik *CaS *blue -1 0
//addmsg /cell_4L/soma/CaF_ron /clamp/graphs/Ik PLOTSCALE Ik *CaF *blue -1 0

//addmsg /cell_4L/soma/P_ron /clamp/graphs/Ik PLOTSCALE Ik *P *black -1 0

end

function squid_graph_messages2(cell_path, clamp_path)
str cell_path
str clamp_path

addmsg {cell_path} {clamp_path}/graphs/Vm PLOT Vm *Vm *red
addmsg {clamp_path}/Vclamp {clamp_path}/graphs/Vm PLOT output *command *blue

//addmsg {clamp_path}/Iclamp {clamp_path}/graphs/inj PLOT output *Iclamp *red
addmsg {clamp_path}/PID {clamp_path}/graphs/inj PLOT output *Vclamp *blue

//addmsg /cell_4L/soma/Na_ron /clamp/graphs/Gk PLOT Gk *Na *blue
//addmsg /cell_4L/soma/K1_ron /clamp/graphs/Gk PLOT Gk *K *red
addmsg {cell_path}/SynG {clamp_path}/graphs/Gk PLOT Gk *SynG *blue
addmsg {cell_path}/SynS4R4L {clamp_path}/graphs/Gk PLOT Gk *SynS4R4L *red

//addmsg /cell_4L/soma/Na_ron /clamp/graphs/Ik PLOTSCALE Ik *Na *blue -1 0
//addmsg /cell_4L/soma/K1_ron /clamp/graphs/Ik PLOTSCALE Ik *K *red -1 0
addmsg {cell_path}/SynG {clamp_path}/graphs/Ik PLOTSCALE Ik *SynG *blue -1 0
addmsg {cell_path}/SynS4R4L {clamp_path}/graphs/Ik PLOTSCALE Ik *SynS4R4L *red -1 0

//addmsg /cell_4L/soma/CaS_ron /clamp/graphs/Ik PLOTSCALE Ik *CaS *blue -1 0
//addmsg /cell_4L/soma/CaF_ron /clamp/graphs/Ik PLOTSCALE Ik *CaF *blue -1 0

//addmsg /cell_4L/soma/P_ron /clamp/graphs/Ik PLOTSCALE Ik *P *black -1 0

end







