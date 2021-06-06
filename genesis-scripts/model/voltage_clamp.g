include graphics_funcs.g   // goes before squid_graphs.g
include Vclamp_graphs.g
include Vclamp_electronics.g
include Vclamp_graph_messages.g   


//cell_4L
create neutral Vclamp1
//add_squid_graphs /Vclamp1
add_squid_electronics1 /Vclamp1
make_tab_func_gen1 /Vclamp1
connect_squid_electronics1 /cell_4L/soma /Vclamp1 //uses pulsegen or funcgen
//squid_graph_messages1 /cell_4L/soma /Vclamp1

//cell_4R
create neutral Vclamp2
//add_squid_graphs /Vclamp2
add_squid_electronics2 /Vclamp2
make_tab_func_gen2 /Vclamp2
//connect_squid_electronics2 /cell_4R/soma /Vclamp2
//squid_graph_messages2 /cell_4R/soma /Vclamp2

//cell_5L
create neutral Vclamp3
//add_squid_graphs /Vclamp3
add_squid_electronics3 /Vclamp3
make_tab_func_gen3 /Vclamp3
connect_squid_electronics3 /cell_5L/soma /Vclamp3
//squid_graph_messages /cell_5L/soma /Vclamp3

add_squid_forms

//xshow /forms/control












