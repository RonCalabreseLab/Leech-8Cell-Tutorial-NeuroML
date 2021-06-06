// genesis

////////////////////////////cell_4L
function add_squid_electronics1 (path)
    str path 
    // Electronics for voltage and current clamp 

    create pulsegen {path}/pulsegen
    setfield ^ level1 -0.035 width1 5 delay1 5 delay2 999.0  \
        trig_mode 0 trig_time 0.0 baselevel -.060  

// trig_mode 0 = free run, 1= ext trig, 2= ext gate

    //changed time constant from 0.1 msec to 0.03 msec for sharper Vclamp pulse
    
    create RC {path}/lowpass
    setfield ^ R 500.0 C 0.1e-6      // ohms and farads; for a tau of 50 us

//    create diffamp {path}/Iclamp
//    setfield ^ saturation .999 gain 0.0    // saturation 999.0

    create diffamp {path}/Vclamp
    setfield ^ saturation 999.0 \  // unitless I hope 
               gain 0.002 // 1/R from the lowpass filter

    create PID {path}/PID
    setfield ^ gain 1e-6 \  //10/Rinput of cell
       tau_i 20e-6 \ //seconds  
       tau_d 5e-6 saturation 999.0
end

///////////////////////////////cell_4R
function add_squid_electronics2 (path)
    str path 
    // Electronics for voltage and current clamp 

    create pulsegen {path}/pulsegen
    setfield ^ level1 -0.050 width1 5 delay1 5 delay2 999.0  \
        trig_mode 0 trig_time 0.0 baselevel -.060  

// trig_mode 0 = free run, 1= ext trig, 2= ext gate

    //changed time constant from 0.1 msec to 0.03 msec for sharper Vclamp pulse
    
    create RC {path}/lowpass
    setfield ^ R 500.0 C 0.1e-6      // ohms and farads; for a tau of 50 us

//    create diffamp {path}/Iclamp
//    setfield ^ saturation .999 gain 0.0    // saturation 999.0

    create diffamp {path}/Vclamp
    setfield ^ saturation 999.0 \  // unitless I hope 
               gain 0.002 // 1/R from the lowpass filter

    create PID {path}/PID
    setfield ^ gain 1e-6 \  //10/Rinput of cell
       tau_i 20e-6 \ //seconds  
       tau_d 5e-6 saturation 999.0
end

////////////////////////////cell_5L
function add_squid_electronics3 (path)
    str path 
    // Electronics for voltage and current clamp 

    create pulsegen {path}/pulsegen
    setfield ^ level1 -0.050 width1 5 delay1 1e10 delay2 999.0  \
        trig_mode 0 trig_time 0.0 baselevel -.040  

// trig_mode 0 = free run, 1= ext trig, 2= ext gate

    //changed time constant from 0.1 msec to 0.03 msec for sharper Vclamp pulse
    
    create RC {path}/lowpass
    setfield ^ R 500.0 C 0.1e-6      // ohms and farads; for a tau of 50 us

//    create diffamp {path}/Iclamp
//    setfield ^ saturation .999 gain 0.0    // saturation 999.0

    create diffamp {path}/Vclamp
    setfield ^ saturation 999.0 \  // unitless I hope 
               gain 0.002 // 1/R from the lowpass filter

    create PID {path}/PID
    setfield ^ gain 1e-6 \  //10/Rinput of cell
       tau_i 20e-6 \ //seconds  
       tau_d 5e-6 saturation 999.0
end

//////////////////////////cell_4L
function connect_squid_electronics1(path, clamp_path)
    str path // the cell path
    str clamp_path // the Vclamp circuitry path

    // hook up current clamp circuitry

//    addmsg {clamp_path}/pulsegen {clamp_path}/Iclamp PLUS output
//    addmsg {clamp_path}/Iclamp {path} INJECT output


    // hook up voltage clamp circuitry

    addmsg {clamp_path}/pulsegen {clamp_path}/lowpass INJECT output
//    addmsg {clamp_path}/tab_func_gen {clamp_path}/lowpass INJECT output
    addmsg {clamp_path}/lowpass {clamp_path}/Vclamp PLUS state
    addmsg {clamp_path}/Vclamp {clamp_path}/PID CMD output
    addmsg {path} {clamp_path}/PID SNS Vm
    addmsg {clamp_path}/PID {path} INJECT output
end


/////////////////////cell_4R
function connect_squid_electronics2(path, clamp_path)
    str path // the cell path
    str clamp_path // the Vclamp circuitry path

    // hook up current clamp circuitry

//    addmsg {clamp_path}/pulsegen {clamp_path}/Iclamp PLUS output
//    addmsg {clamp_path}/Iclamp {path} INJECT output


    // hook up voltage clamp circuitry

//    addmsg {clamp_path}/pulsegen {clamp_path}/lowpass INJECT output
    addmsg {clamp_path}/tab_func_gen {clamp_path}/lowpass INJECT output
    addmsg {clamp_path}/lowpass {clamp_path}/Vclamp PLUS state
    addmsg {clamp_path}/Vclamp {clamp_path}/PID CMD output
    addmsg {path} {clamp_path}/PID SNS Vm
    addmsg {clamp_path}/PID {path} INJECT output
end

////////////////////////cell_5L
function connect_squid_electronics3(path, clamp_path)
    str path // the cell path
    str clamp_path // the Vclamp circuitry path

    // hook up current clamp circuitry

//    addmsg {clamp_path}/pulsegen {clamp_path}/Iclamp PLUS output
//    addmsg {clamp_path}/Iclamp {path} INJECT output


    // hook up voltage clamp circuitry

    addmsg {clamp_path}/pulsegen {clamp_path}/lowpass INJECT output
//    addmsg {clamp_path}/tab_func_gen {clamp_path}/lowpass INJECT output
    addmsg {clamp_path}/lowpass {clamp_path}/Vclamp PLUS state
    addmsg {clamp_path}/Vclamp {clamp_path}/PID CMD output
    addmsg {path} {clamp_path}/PID SNS Vm
    addmsg {clamp_path}/PID {path} INJECT output
end


//////////////////////////////////cell_4L
function make_tab_func_gen1(path)
str path
create table {path}/tab_func_gen

/*
// normal waveform
call {path}/tab_func_gen TABCREATE 10 0 8
setfield {path}/tab_func_gen  \
   table->table[0] -55e-3    \
   table->table[1] -51.25e-3 \
   table->table[2] -47.5e-3  \
   table->table[3] -43.75e-3 \
   table->table[4] -40e-3    \
   table->table[5] -40.3e-3  \
   table->table[6] -40.6e-3  \
   table->table[7] -40.9e-3  \
   table->table[8] -41.2e-3  \
   table->table[9] -41.5e-3  \
   table->table[10] -55e-3 
*/

// deep waveform
call {path}/tab_func_gen TABCREATE 10 0 8
setfield {path}/tab_func_gen  \
   table->table[0] -60e-3 \
   table->table[1] -55e-3 \
   table->table[2] -50e-3 \
   table->table[3] -45e-3 \
   table->table[4] -40e-3 \
   table->table[5] -40.3e-3  \
   table->table[6] -40.6e-3  \
   table->table[7] -40.9e-3  \
   table->table[8] -41.2e-3  \
   table->table[9] -41.5e-3  \
   table->table[10] -60e-3 

/*
// steep waveform
call {path}/tab_func_gen TABCREATE 1000 0 8
float i
float value
for (i=0; i<=399 ;i=i+1)
   value = {-55e-3+ .0125*{i}/1000}
   setfield {path}/tab_func_gen table->table[{i}] {value}
   //echo {i} " " {value} 
end

for (i=400; i<=899 ;i=i+1)
   value = -40e-3 -.003*({i}/1000-0.4) 
   setfield {path}/tab_func_gen table->table[{i}] {value}
   //echo {i} " " {value}
end

for (i=900; i<=1000 ;i=i+1)
   value = -41.5e-3+ -.135*{{i}/1000-0.9}
   setfield {path}/tab_func_gen table->table[{i}] {value}
   //echo {i} {value}
end
*/


call {path}/tab_func_gen TABFILL 80000 2 // xdivs, fill_mode 2 = linear

setfield {path}/tab_func_gen step_mode 1  // repeating mode
setfield {path}/tab_func_gen stepsize 1e-4   // time step 

end

//////////////////////////////cell_4R
function make_tab_func_gen2(path)
str path
create table {path}/tab_func_gen

call {path}/tab_func_gen TABCREATE 10 0 8

/*
// normal waveform
setfield {path}/tab_func_gen  \
   table->table[0] -55e-3    \
   table->table[1] -51.25e-3 \
   table->table[2] -47.5e-3  \
   table->table[3] -43.75e-3 \
   table->table[4] -40e-3    \
   table->table[5] -40.3e-3  \
   table->table[6] -40.6e-3  \
   table->table[7] -40.9e-3  \
   table->table[8] -41.2e-3  \
   table->table[9] -41.5e-3  \
   table->table[10] -55e-3 
*/

// deep waveform
call {path}/tab_func_gen TABCREATE 10 0 8
setfield {path}/tab_func_gen  \
   table->table[0] -60e-3 \
   table->table[1] -55e-3 \
   table->table[2] -50e-3 \
   table->table[3] -45e-3 \
   table->table[4] -40e-3 \
   table->table[5] -40.3e-3  \
   table->table[6] -40.6e-3  \
   table->table[7] -40.9e-3  \
   table->table[8] -41.2e-3  \
   table->table[9] -41.5e-3  \
   table->table[10] -60e-3 


//call {path}/tab_func_gen TABFILL 160000 2 // xdivs, fill_mode 2 = linear
call {path}/tab_func_gen TABFILL 80000 2 // xdivs, fill_mode 2 = linear

setfield {path}/tab_func_gen step_mode 1  // repeating mode
setfield {path}/tab_func_gen stepsize 1e-4  // 5e-5   // time step 

end

/////////////////////////////////cell_5L
function make_tab_func_gen3(path)
str path
create table {path}/tab_func_gen

call {path}/tab_func_gen TABCREATE 10 0 8

/*
call {path}/tab_func_gen TABCREATE 10 0 8
setfield {path}/tab_func_gen  \
   table->table[0] -30e-3 \
   table->table[1] -30e-3 \
   table->table[2] -30e-3 \
   table->table[3] -30e-3 \
   table->table[4] -30e-3 \
   table->table[5] -30e-3  \
   table->table[6] -30e-3  \
   table->table[7] -30e-3  \
   table->table[8] -30e-3  \
   table->table[9] -30e-3  \
   table->table[10] -30e-3 
*/

//call {path}/tab_func_gen TABFILL 160000 2 // xdivs, fill_mode 2 = linear
call {path}/tab_func_gen TABFILL 80000 2 // xdivs, fill_mode 2 = linear

setfield {path}/tab_func_gen step_mode 1  // repeating mode
setfield {path}/tab_func_gen stepsize 1e-4  // 5e-5   // time step 

end

















