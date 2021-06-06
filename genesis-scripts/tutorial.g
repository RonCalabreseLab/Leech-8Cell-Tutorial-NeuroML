
create neutral /tutorial

str file_prefix = {getenv PWD}

setenv SIMPATH {getenv SIMPATH} {file_prefix}/tutorial

cd model
hn8
cd {file_prefix}

xhide /dataL
xhide /dataR

include x_interface.g
setup_8_cell
setup_simulation

xhide /control
xhide /HN4L_1
xhide /HN4L_2
xhide /HN4L_3
xhide /HN4L_4

restore_default_state
