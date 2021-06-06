// creates an ascii output file 
// adds ".dat" to the end of the filename

function output_asc  (name)
str name
str data_out = "data"
name ={name} @ ".dat"

create asc_file /output/{data_out}
useclock /output/{data_out} 2

addmsg cell_1L/soma /output/{data_out} SAVE Vm
addmsg cell_1R/soma /output/{data_out} SAVE Vm
addmsg cell_2L/soma /output/{data_out} SAVE Vm
addmsg cell_2R/soma /output/{data_out} SAVE Vm
addmsg cell_4L/soma /output/{data_out} SAVE Vm
addmsg cell_4R/soma /output/{data_out} SAVE Vm

addmsg cell_5L/soma /output/{data_out} SAVE Vm
addmsg cell_5L/soma/mod_SynS4L5L /output/{data_out} SAVE m_SynS
addmsg cell_5L/soma/SynG /output/{data_out} SAVE Ik
addmsg cell_5L/soma/SynG /output/{data_out} SAVE Gk
addmsg cell_5L/soma/SynG /output/{data_out} SAVE A
addmsg cell_5L/soma/SynG /output/{data_out} SAVE B
addmsg cell_5L/soma/SynG /output/{data_out} SAVE P

addmsg cell_5L/soma/SynS4L5L /output/{data_out} SAVE Ik
addmsg cell_5L/soma/SynS4L5L /output/{data_out} SAVE Gk

addmsg cell_4L/soma/CaF_ron /output/{data_out} SAVE Gk
addmsg cell_4L/soma/CaF_ron /output/{data_out} SAVE Ik

addmsg cell_4L/soma/CaS_ron /output/{data_out} SAVE Gk
addmsg cell_4L/soma/CaS_ron /output/{data_out} SAVE Ik

addmsg cell_5L/soma/SynG /output/{data_out} SAVE R

addmsg cell_4L/soma/h_ron /output/{data_out} SAVE Gk
addmsg cell_4L/soma/h_ron /output/{data_out} SAVE Ik

addmsg cell_4L/soma/P_ron /output/{data_out} SAVE Gk
addmsg cell_4L/soma/P_ron /output/{data_out} SAVE Ik

addmsg cell_4L/soma/Na_ron /output/{data_out} SAVE Gk
addmsg cell_4L/soma/Na_ron /output/{data_out} SAVE Ik

addmsg cell_4L/soma/K1_ron /output/{data_out} SAVE Gk
addmsg cell_4L/soma/K1_ron /output/{data_out} SAVE Ik

addmsg cell_4L/soma/K2_ron /output/{data_out} SAVE Gk
addmsg cell_4L/soma/K2_ron /output/{data_out} SAVE Ik

addmsg cell_4L/soma/A_ron /output/{data_out} SAVE Gk
addmsg cell_4L/soma/A_ron /output/{data_out} SAVE Ik

addmsg cell_4L/soma/SynG /output/{data_out} SAVE Gk
addmsg cell_4L/soma/SynG /output/{data_out} SAVE Ik

addmsg cell_4L/soma/SynS4R4L /output/{data_out} SAVE Gk
addmsg cell_4L/soma/SynS4R4L /output/{data_out} SAVE Ik

addmsg cell_4L/soma/Na_ron /output/{data_out} SAVE X
addmsg cell_4L/soma/Na_ron /output/{data_out} SAVE Y

addmsg cell_4L/soma/K1_ron /output/{data_out} SAVE X
addmsg cell_4L/soma/K1_ron /output/{data_out} SAVE Y


//Right cell syn
addmsg cell_4R/soma/SynG /output/{data_out} SAVE Gk
addmsg cell_4R/soma/SynG /output/{data_out} SAVE Ik

addmsg cell_4R/soma/SynS4L4R /output/{data_out} SAVE Gk
addmsg cell_4R/soma/SynS4L4R /output/{data_out} SAVE Ik


/*

//cell_4R clamp
addmsg Vclamp1/PID /output/{data_out} SAVE output
addmsg Vclamp1/Vclamp /output/{data_out} SAVE output

//cell_4L clamp
addmsg Vclamp2/PID /output/{data_out} SAVE output
addmsg Vclamp2/Vclamp /output/{data_out} SAVE output

addmsg cell_4R/soma/CaF_ron /output/{data_out} SAVE Gk
addmsg cell_4R/soma/CaF_ron /output/{data_out} SAVE Ik

addmsg cell_4R/soma/CaS_ron /output/{data_out} SAVE Gk
addmsg cell_4R/soma/CaS_ron /output/{data_out} SAVE Ik

addmsg cell_4R/soma/SynG /output/{data_out} SAVE Gk
addmsg cell_4R/soma/SynG /output/{data_out} SAVE Ik

addmsg cell_4R/soma/SynS4L4R /output/{data_out} SAVE Gk
addmsg cell_4R/soma/SynS4L4R /output/{data_out} SAVE Ik

*/


enable /output
setfield /output/{data_out} leave_open 1 flush 1 filename {name} initialize 1 append 1
enable /output/{data_out}
echo datafile {name}
reset
end









