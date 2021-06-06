// This file is for saving state variables to an ascii file
// The resulting file can then be used to set the state variables of the 
// objects with the include commmand
// This method is not as complete as the binary method because the state
// variables of the synchan object are not saved (these fields are readonly
// or are hidden)

function save_state_asc (file)
str file
str set ="setfield "

openfile {file} w


str path ="/cell_3L/soma"
str temp ={set}@{path}

writefile {file} {temp}" Vm" {getfield {path} Vm}
writefile {file} {temp}"/Na_ron X" {getfield {path}/Na_ron X}
writefile {file} {temp}"/Na_ron Y" {getfield {path}/Na_ron Y}
writefile {file} {temp}"/K1_ron X" {getfield {path}/K1_ron X}
writefile {file} {temp}"/K1_ron Y" {getfield {path}/K1_ron Y}
writefile {file} {temp}"/K2_ron X" {getfield {path}/K2_ron X}
writefile {file} {temp}"/A_ron X" {getfield {path}/A_ron X}
writefile {file} {temp}"/A_ron Y" {getfield {path}/A_ron Y}
writefile {file} {temp}"/h_ron X" {getfield {path}/h_ron X}
writefile {file} {temp}"/CaF_ron X" {getfield {path}/CaF_ron X}
writefile {file} {temp}"/CaF_ron Y" {getfield {path}/CaF_ron Y}
writefile {file} {temp}"/CaS_ron X" {getfield {path}/CaS_ron X}
writefile {file} {temp}"/CaS_ron Y" {getfield {path}/CaS_ron Y}
writefile {file} {temp}"/P_ron X" {getfield {path}/P_ron X}
writefile {file} {temp}"/SynG A" {getfield  {path}/SynG A}
writefile {file} {temp}"/SynG P" {getfield {path}/SynG P}
writefile {file} {temp}"/mod_SynS3R3L m_SynS" {getfield {path}/mod_SynS3R3L m_SynS}
writefile {file} {temp}"/spike lastevent" \
-{{getstat -time}-{getfield {path}/spike lastevent}}

str path ="/cell_3R/soma"
str temp ={set}@{path}

writefile {file} {temp}" Vm" {getfield {path} Vm}
writefile {file} {temp}"/Na_ron X" {getfield {path}/Na_ron X}
writefile {file} {temp}"/Na_ron Y" {getfield {path}/Na_ron Y}
writefile {file} {temp}"/K1_ron X" {getfield {path}/K1_ron X}
writefile {file} {temp}"/K1_ron Y" {getfield {path}/K1_ron Y}
writefile {file} {temp}"/K2_ron X" {getfield {path}/K2_ron X}
writefile {file} {temp}"/A_ron X" {getfield {path}/A_ron X}
writefile {file} {temp}"/A_ron Y" {getfield {path}/A_ron Y}
writefile {file} {temp}"/h_ron X" {getfield {path}/h_ron X}
writefile {file} {temp}"/CaF_ron X" {getfield {path}/CaF_ron X}
writefile {file} {temp}"/CaF_ron Y" {getfield {path}/CaF_ron Y}
writefile {file} {temp}"/CaS_ron X" {getfield {path}/CaS_ron X}
writefile {file} {temp}"/CaS_ron Y" {getfield {path}/CaS_ron Y}
writefile {file} {temp}"/P_ron X" {getfield {path}/P_ron X}
writefile {file} {temp}"/SynG A" {getfield  {path}/SynG A}
writefile {file} {temp}"/SynG P" {getfield {path}/SynG P}
writefile {file} {temp}"/mod_SynS3L3R m_SynS" {getfield {path}/mod_SynS3L3R m_SynS}
writefile {file} {temp}"/spike lastevent" \
-{{getstat -time}-{getfield {path}/spike lastevent}}


str path ="/cell_4L/soma"
str temp ={set}@{path}

writefile {file} {temp}" Vm" {getfield {path} Vm}
writefile {file} {temp}"/Na_ron X" {getfield {path}/Na_ron X}
writefile {file} {temp}"/Na_ron Y" {getfield {path}/Na_ron Y}
writefile {file} {temp}"/K1_ron X" {getfield {path}/K1_ron X}
writefile {file} {temp}"/K1_ron Y" {getfield {path}/K1_ron Y}
writefile {file} {temp}"/K2_ron X" {getfield {path}/K2_ron X}
writefile {file} {temp}"/A_ron X" {getfield {path}/A_ron X}
writefile {file} {temp}"/A_ron Y" {getfield {path}/A_ron Y}
writefile {file} {temp}"/h_ron X" {getfield {path}/h_ron X}
writefile {file} {temp}"/CaF_ron X" {getfield {path}/CaF_ron X}
writefile {file} {temp}"/CaF_ron Y" {getfield {path}/CaF_ron Y}
writefile {file} {temp}"/CaS_ron X" {getfield {path}/CaS_ron X}
writefile {file} {temp}"/CaS_ron Y" {getfield {path}/CaS_ron Y}
writefile {file} {temp}"/P_ron X" {getfield {path}/P_ron X}
writefile {file} {temp}"/SynG A" {getfield  {path}/SynG A}
writefile {file} {temp}"/SynG P" {getfield {path}/SynG P}
writefile {file} {temp}"/mod_SynS4R4L m_SynS" {getfield {path}/mod_SynS4R4L m_SynS}
writefile {file} {temp}"/spike lastevent" \
-{{getstat -time}-{getfield {path}/spike lastevent}}

str path ="/cell_4R/soma"
str temp ={set}@{path}

writefile {file} {temp}" Vm" {getfield {path} Vm}
writefile {file} {temp}"/Na_ron X" {getfield {path}/Na_ron X}
writefile {file} {temp}"/Na_ron Y" {getfield {path}/Na_ron Y}
writefile {file} {temp}"/K1_ron X" {getfield {path}/K1_ron X}
writefile {file} {temp}"/K1_ron Y" {getfield {path}/K1_ron Y}
writefile {file} {temp}"/K2_ron X" {getfield {path}/K2_ron X}
writefile {file} {temp}"/A_ron X" {getfield {path}/A_ron X}
writefile {file} {temp}"/A_ron Y" {getfield {path}/A_ron Y}
writefile {file} {temp}"/h_ron X" {getfield {path}/h_ron X}
writefile {file} {temp}"/CaF_ron X" {getfield {path}/CaF_ron X}
writefile {file} {temp}"/CaF_ron Y" {getfield {path}/CaF_ron Y}
writefile {file} {temp}"/CaS_ron X" {getfield {path}/CaS_ron X}
writefile {file} {temp}"/CaS_ron Y" {getfield {path}/CaS_ron Y}
writefile {file} {temp}"/P_ron X" {getfield {path}/P_ron X}
writefile {file} {temp}"/SynG A" {getfield  {path}/SynG A}
writefile {file} {temp}"/SynG P" {getfield {path}/SynG P}
writefile {file} {temp}"/mod_SynS4L4R m_SynS" {getfield {path}/mod_SynS4L4R m_SynS}
writefile {file} {temp}"/spike lastevent" \
-{{getstat -time}-{getfield {path}/spike lastevent}}

str path ="/cell_1L/soma"
str temp ={set}@{path}

writefile {file} {temp}" Vm" {getfield {path} Vm}
writefile {file} {temp}"/Na_ron X" {getfield {path}/Na_ron X}
writefile {file} {temp}"/Na_ron Y" {getfield {path}/Na_ron Y}
writefile {file} {temp}"/K1_ron X" {getfield {path}/K1_ron X}
writefile {file} {temp}"/K1_ron Y" {getfield {path}/K1_ron Y}
writefile {file} {temp}"/K2_ron X" {getfield {path}/K2_ron X}
writefile {file} {temp}"/mod_SynS4L1L m_SynS" {getfield {path}/mod_SynS4L1L m_SynS}
writefile {file} {temp}"/spike lastevent" \
-{{getstat -time}-{getfield {path}/spike lastevent}}

str path ="/cell_2L/soma"
str temp ={set}@{path}

writefile {file} {temp}" Vm" {getfield {path} Vm}
writefile {file} {temp}"/Na_ron X" {getfield {path}/Na_ron X}
writefile {file} {temp}"/Na_ron Y" {getfield {path}/Na_ron Y}
writefile {file} {temp}"/K1_ron X" {getfield {path}/K1_ron X}
writefile {file} {temp}"/K1_ron Y" {getfield {path}/K1_ron Y}
writefile {file} {temp}"/K2_ron X" {getfield {path}/K2_ron X}
writefile {file} {temp}"/mod_SynS4L2L m_SynS" {getfield {path}/mod_SynS4L2L m_SynS}
writefile {file} {temp}"/spike lastevent" \
-{{getstat -time}-{getfield {path}/spike lastevent}}

str path ="/cell_1R/soma"
str temp ={set}@{path}

writefile {file} {temp}" Vm" {getfield {path} Vm}
writefile {file} {temp}"/Na_ron X" {getfield {path}/Na_ron X}
writefile {file} {temp}"/Na_ron Y" {getfield {path}/Na_ron Y}
writefile {file} {temp}"/K1_ron X" {getfield {path}/K1_ron X}
writefile {file} {temp}"/K1_ron Y" {getfield {path}/K1_ron Y}
writefile {file} {temp}"/K2_ron X" {getfield {path}/K2_ron X}
writefile {file} {temp}"/mod_SynS4R1R m_SynS" {getfield {path}/mod_SynS4R1R m_SynS}
writefile {file} {temp}"/spike lastevent" \
-{{getstat -time}-{getfield {path}/spike lastevent}}

str path ="/cell_2R/soma"
str temp ={set}@{path}

writefile {file} {temp}" Vm" {getfield {path} Vm}
writefile {file} {temp}"/Na_ron X" {getfield {path}/Na_ron X}
writefile {file} {temp}"/Na_ron Y" {getfield {path}/Na_ron Y}
writefile {file} {temp}"/K1_ron X" {getfield {path}/K1_ron X}
writefile {file} {temp}"/K1_ron Y" {getfield {path}/K1_ron Y}
writefile {file} {temp}"/K2_ron X" {getfield {path}/K2_ron X}
writefile {file} {temp}"/mod_SynS4R2R m_SynS" {getfield {path}/mod_SynS4R2R m_SynS}
writefile {file} {temp}"/spike lastevent" \
-{{getstat -time}-{getfield {path}/spike lastevent}}


closefile {file}
end


















