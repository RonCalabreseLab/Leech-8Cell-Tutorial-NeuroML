include defaults.g   // PI, generating library, make_Vclamp tweak
include filltable.g  // fill table functions for tabchannels
include userprefs.g  // makes prototypes for library (includes HNchan)
include xforms.g     // control forms 
include xgraphs.g    // graph functions
include output_asc.g // function output_asc -save sim ouput to ascci file
include output_asc_volt.g // function output_asc_volt -saves just voltages
include output_asc_volt_L.g // only L2, L3, and L4
include save_param.g // function save_param  -saves parameters to ascii file
include save_state_bin.g // function save_state_bin -save state variable binary
include save_state_asc.g // function save_state_asc -save state HN3,4 ascii
include save_table_asc.g // has functions for saving channel tables to ascii

readcell cell_3L.p /cell_3L
readcell cell_3R.p /cell_3R
readcell cell_4L.p /cell_4L
readcell cell_4R.p /cell_4R
readcell cell_1L.p /cell_1L
readcell cell_1R.p /cell_1R
readcell cell_2L.p /cell_2L
readcell cell_2R.p /cell_2R
readcell cell_5L.p /cell_5L

include syncreate.g
syncreate
include synconnect.g
synconnect

float dt=1e-4
setclock 0 {dt*1}
setclock 1 {dt*20}  //for graphics
setclock 2 {dt*20}  //for data ouput

//silence cells
//setfield cell_1L/soma inject -1e-9
//setfield cell_1R/soma inject -1e-9
//setfield cell_2L/soma inject -1e-9
//setfield cell_2R/soma inject -1e-9

// make control and graphs (functions in xgraphs)
make_scale_forms  // scale form for graphs
make_dataL        // HN 1, 2 and 4 left
make_dataR        // HN 1, 2, and 4 right
//make_graph_volt4  // HN 4s
//make_graph_volt12 // HN 1,2s
make_graph_HN4L_1 // HN4 left Ih, ICaF, ICaS, Ip  
make_graph_HN4L_2 // HN4 left INa IK1, IK2, IA  
make_graph_HN4L_3 // HN4 left Graded G, I; Spike mediated G, I
make_graph_HN4L_4 // HN4 left spike mediated synapse from HN(L,1...2)
make_control

//include voltage_clamp.g // voltage clamp circuit

// to create ascii output files uncomment 
//output_asc_volt s98217000

// to save tab channel values to ascii file with .m as extension
// The genesis fields X_A, X_B, Y_A, and Y_B must be manipulated in the 
// following way to see minf and tau:
// X_minf =col1/col2; X_tau=1/col2; same for Y
// save_table_X chan_P /cell_4L/soma/P_ron  
// save_table_XY chan_Na /cell_4L/soma/Na_ron 

// set parameters with a file
//include default_param.g

reset
check

// initialize state variables from a binary file
//restore start_state.bin
















