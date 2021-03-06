TITLE Mod file for component: Component(id=isopotential type=pointCellCondBased)

COMMENT

    This NEURON file has been generated by org.neuroml.export (see https://github.com/NeuroML/org.neuroml.export)
         org.neuroml.export  v1.5.0
         org.neuroml.model   v1.5.0
         jLEMS               v0.9.8.7

ENDCOMMENT

NEURON {
    POINT_PROCESS isopotential
    
    
    NONSPECIFIC_CURRENT i                    : To ensure v of section follows vI
    RANGE v0                                : parameter
    RANGE thresh                            : parameter
    RANGE C                                 : parameter
    
    RANGE iSyn                              : exposure
    
    RANGE iMemb                             : exposure
    RANGE leak_pop_number                   : parameter
    RANGE leak_pop_erev                     : parameter
    
    RANGE leak_pop_i                        : exposure
    RANGE leak_pop_leak_channel_conductance : parameter
    
    RANGE leak_pop_leak_channel_g           : exposure
    
    RANGE leak_pop_leak_channel_fopen       : exposure
    RANGE na_pop_number                     : parameter
    RANGE na_pop_erev                       : parameter
    
    RANGE na_pop_i                          : exposure
    RANGE na_pop_na_channel_conductance     : parameter
    
    RANGE na_pop_na_channel_g               : exposure
    
    RANGE na_pop_na_channel_fopen           : exposure
    RANGE na_pop_na_channel_m_instances     : parameter
    
    RANGE na_pop_na_channel_m_tau           : exposure
    
    RANGE na_pop_na_channel_m_inf           : exposure
    
    RANGE na_pop_na_channel_m_rateScale     : exposure
    
    RANGE na_pop_na_channel_m_fcond         : exposure
    RANGE na_pop_na_channel_m_timeCourse_offset: parameter
    RANGE na_pop_na_channel_m_timeCourse_rate: parameter
    RANGE na_pop_na_channel_m_timeCourse_midpoint: parameter
    RANGE na_pop_na_channel_m_timeCourse_scale: parameter
    
    RANGE na_pop_na_channel_m_timeCourse_t  : exposure
    RANGE na_pop_na_channel_m_steadyState_rate: parameter
    RANGE na_pop_na_channel_m_steadyState_midpoint: parameter
    RANGE na_pop_na_channel_m_steadyState_scale: parameter
    
    RANGE na_pop_na_channel_m_steadyState_x : exposure
    RANGE na_pop_na_channel_h_instances     : parameter
    
    RANGE na_pop_na_channel_h_tau           : exposure
    
    RANGE na_pop_na_channel_h_inf           : exposure
    
    RANGE na_pop_na_channel_h_rateScale     : exposure
    
    RANGE na_pop_na_channel_h_fcond         : exposure
    RANGE na_pop_na_channel_h_timeCourse_offset: parameter
    RANGE na_pop_na_channel_h_timeCourse_rate: parameter
    RANGE na_pop_na_channel_h_timeCourse_midpoint: parameter
    RANGE na_pop_na_channel_h_timeCourse_scale: parameter
    
    RANGE na_pop_na_channel_h_timeCourse_t  : exposure
    RANGE na_pop_na_channel_h_steadyState_rate: parameter
    RANGE na_pop_na_channel_h_steadyState_midpoint: parameter
    RANGE na_pop_na_channel_h_steadyState_scale: parameter
    
    RANGE na_pop_na_channel_h_steadyState_x : exposure
    
    RANGE copy_v                           : copy of v on section
    RANGE leak_pop_channelg                 : derived variable
    RANGE leak_pop_geff                     : derived variable
    RANGE na_pop_na_channel_m_tauUnscaled   : derived variable
    RANGE na_pop_na_channel_h_tauUnscaled   : derived variable
    RANGE na_pop_na_channel_conductanceScale: derived variable
    RANGE na_pop_na_channel_fopen0          : derived variable
    RANGE na_pop_channelg                   : derived variable
    RANGE na_pop_geff                       : derived variable
    RANGE iChannels                         : derived variable
    
}

UNITS {
    
    (nA) = (nanoamp)
    (uA) = (microamp)
    (mA) = (milliamp)
    (A) = (amp)
    (mV) = (millivolt)
    (mS) = (millisiemens)
    (uS) = (microsiemens)
    (molar) = (1/liter)
    (kHz) = (kilohertz)
    (mM) = (millimolar)
    (um) = (micrometer)
    (umol) = (micromole)
    (S) = (siemens)
    
}

PARAMETER {
    
    v0 = -54.56138 (mV)
    thresh = -25 (mV)
    C = 4.0E-6 (microfarads)
    leak_pop_number = 1 
    leak_pop_erev = -55 (mV)
    leak_pop_leak_channel_conductance = 0.0068 (uS)
    na_pop_number = 1 
    na_pop_erev = 45 (mV)
    na_pop_na_channel_conductance = 0.1 (uS)
    na_pop_na_channel_m_instances = 3 
    na_pop_na_channel_m_timeCourse_offset = 3.861 (ms)
    na_pop_na_channel_m_timeCourse_rate = -3.434 (ms)
    na_pop_na_channel_m_timeCourse_midpoint = -51.350002 (mV)
    na_pop_na_channel_m_timeCourse_scale = 5.98 (mV)
    na_pop_na_channel_m_steadyState_rate = 1 
    na_pop_na_channel_m_steadyState_midpoint = -29.130001 (mV)
    na_pop_na_channel_m_steadyState_scale = 8.922001 (mV)
    na_pop_na_channel_h_instances = 1 
    na_pop_na_channel_h_timeCourse_offset = 2.8339999 (ms)
    na_pop_na_channel_h_timeCourse_rate = -2.3709998 (ms)
    na_pop_na_channel_h_timeCourse_midpoint = -21.9 (mV)
    na_pop_na_channel_h_timeCourse_scale = 2.641 (mV)
    na_pop_na_channel_h_steadyState_rate = 1 
    na_pop_na_channel_h_steadyState_midpoint = -40 (mV)
    na_pop_na_channel_h_steadyState_scale = -6.048 (mV)
}

ASSIGNED {
    v (mV)
    i (mA/cm2)
    
    copy_v (mV)
    
    
    leak_pop_leak_channel_fopen            : derived variable
    
    leak_pop_leak_channel_g (uS)           : derived variable
    
    leak_pop_channelg (uS)                 : derived variable
    
    leak_pop_geff (uS)                     : derived variable
    
    leak_pop_i (nA)                        : derived variable
    
    na_pop_na_channel_m_timeCourse_t : no units???: derived variable
    
    na_pop_na_channel_m_steadyState_x      : derived variable
    
    na_pop_na_channel_m_rateScale          : derived variable
    
    na_pop_na_channel_m_fcond              : derived variable
    
    na_pop_na_channel_m_inf                : derived variable
    
    na_pop_na_channel_m_tauUnscaled (ms)   : derived variable
    
    na_pop_na_channel_m_tau (ms)           : derived variable
    
    na_pop_na_channel_h_timeCourse_t : no units???: derived variable
    
    na_pop_na_channel_h_steadyState_x      : derived variable
    
    na_pop_na_channel_h_rateScale          : derived variable
    
    na_pop_na_channel_h_fcond              : derived variable
    
    na_pop_na_channel_h_inf                : derived variable
    
    na_pop_na_channel_h_tauUnscaled (ms)   : derived variable
    
    na_pop_na_channel_h_tau (ms)           : derived variable
    
    na_pop_na_channel_conductanceScale     : derived variable
    
    na_pop_na_channel_fopen0               : derived variable
    
    na_pop_na_channel_fopen                : derived variable
    
    na_pop_na_channel_g (uS)               : derived variable
    
    na_pop_channelg (uS)                   : derived variable
    
    na_pop_geff (uS)                       : derived variable
    
    na_pop_i (nA)                          : derived variable
    
    iChannels (nA)                         : derived variable
    
    iSyn (nA)                              : derived variable
    
    iMemb (nA)                             : derived variable
    rate_v (mV/ms)
    rate_na_pop_na_channel_m_q (/ms)
    rate_na_pop_na_channel_h_q (/ms)
    
}

STATE {
    vI (nA) 
    spiking  
    na_pop_na_channel_m_q  
    na_pop_na_channel_h_q  
    
}

INITIAL {
    rates()
    rates() ? To ensure correct initialisation.
    
    net_send(0, 1) : go to NET_RECEIVE block, flag 1, for initial state
    
    spiking = 0
    
    na_pop_na_channel_m_q = na_pop_na_channel_m_inf
    
    na_pop_na_channel_h_q = na_pop_na_channel_h_inf
    
}

BREAKPOINT {
    
    SOLVE states METHOD cnexp
    
    leak_pop_leak_channel_fopen = 1 ? evaluable
    leak_pop_leak_channel_g = leak_pop_leak_channel_conductance ? evaluable
    ? DerivedVariable is based on path: conductanceScaling[*]/factor, on: Component(id=na_channel type=ionChannelHH), from conductanceScaling; null
    ? Path not present in component, using factor: 1
    
    na_pop_na_channel_conductanceScale = 1 
    
    ? DerivedVariable is based on path: gates[*]/fcond, on: Component(id=na_channel type=ionChannelHH), from gates; Component(id=m type=gateHHtauInf)
    ? multiply applied to all instances of fcond in: <gates> ([Component(id=m type=gateHHtauInf), Component(id=h type=gateHHtauInf)]))
    na_pop_na_channel_fopen0 = na_pop_na_channel_m_fcond * na_pop_na_channel_h_fcond ? path based, prefix = na_pop_na_channel_
    
    na_pop_na_channel_fopen = na_pop_na_channel_conductanceScale  *  na_pop_na_channel_fopen0 ? evaluable
    na_pop_na_channel_g = na_pop_na_channel_conductance  *  na_pop_na_channel_fopen ? evaluable
    if (v >  thresh  &&  spiking  < 0.5) {
        spiking = 1 ? standard OnCondition
    }
    
    if (v <  thresh) {
        spiking = 0 ? standard OnCondition
    }
    
    
    copy_v = v
    i = vI * C
}

NET_RECEIVE(flag) {
    if (flag == 1) { : Set initial states
    
        v = v0
    }
    
}

DERIVATIVE states {
    rates()
    na_pop_na_channel_m_q' = rate_na_pop_na_channel_m_q 
    na_pop_na_channel_h_q' = rate_na_pop_na_channel_h_q 
    
}

PROCEDURE rates() {
    
    ? DerivedVariable is based on path: ionChannel/g, on: Component(id=leak_pop type=channelPopulation), from ionChannel; Component(id=leak_channel type=ionChannelPassive)
    leak_pop_channelg = leak_pop_ionChannel_g ? path based, prefix = leak_pop_
    
    leak_pop_geff = leak_pop_channelg  *  leak_pop_number ? evaluable
    leak_pop_i = leak_pop_geff  * ( leak_pop_erev  - v) ? evaluable
    na_pop_na_channel_m_timeCourse_t = na_pop_na_channel_m_timeCourse_offset  +  na_pop_na_channel_m_timeCourse_rate  / (1 + exp(0 - (v -  na_pop_na_channel_m_timeCourse_midpoint )/ na_pop_na_channel_m_timeCourse_scale )) ? evaluable
    na_pop_na_channel_m_steadyState_x = na_pop_na_channel_m_steadyState_rate  / (1 + exp(0 - (v -  na_pop_na_channel_m_steadyState_midpoint )/ na_pop_na_channel_m_steadyState_scale )) ? evaluable
    ? DerivedVariable is based on path: q10Settings[*]/q10, on: Component(id=m type=gateHHtauInf), from q10Settings; null
    ? Path not present in component, using factor: 1
    
    na_pop_na_channel_m_rateScale = 1 
    
    na_pop_na_channel_m_fcond = na_pop_na_channel_m_q ^ na_pop_na_channel_m_instances ? evaluable
    ? DerivedVariable is based on path: steadyState/x, on: Component(id=m type=gateHHtauInf), from steadyState; Component(id=null type=HHSigmoidVariable)
    na_pop_na_channel_m_inf = na_pop_na_channel_m_steadyState_x ? path based, prefix = na_pop_na_channel_m_
    
    ? DerivedVariable is based on path: timeCourse/t, on: Component(id=m type=gateHHtauInf), from timeCourse; Component(id=null type=sigmoidOffsetTimeCourse)
    na_pop_na_channel_m_tauUnscaled = na_pop_na_channel_m_timeCourse_t ? path based, prefix = na_pop_na_channel_m_
    
    na_pop_na_channel_m_tau = na_pop_na_channel_m_tauUnscaled  /  na_pop_na_channel_m_rateScale ? evaluable
    na_pop_na_channel_h_timeCourse_t = na_pop_na_channel_h_timeCourse_offset  +  na_pop_na_channel_h_timeCourse_rate  / (1 + exp(0 - (v -  na_pop_na_channel_h_timeCourse_midpoint )/ na_pop_na_channel_h_timeCourse_scale )) ? evaluable
    na_pop_na_channel_h_steadyState_x = na_pop_na_channel_h_steadyState_rate  / (1 + exp(0 - (v -  na_pop_na_channel_h_steadyState_midpoint )/ na_pop_na_channel_h_steadyState_scale )) ? evaluable
    ? DerivedVariable is based on path: q10Settings[*]/q10, on: Component(id=h type=gateHHtauInf), from q10Settings; null
    ? Path not present in component, using factor: 1
    
    na_pop_na_channel_h_rateScale = 1 
    
    na_pop_na_channel_h_fcond = na_pop_na_channel_h_q ^ na_pop_na_channel_h_instances ? evaluable
    ? DerivedVariable is based on path: steadyState/x, on: Component(id=h type=gateHHtauInf), from steadyState; Component(id=null type=HHSigmoidVariable)
    na_pop_na_channel_h_inf = na_pop_na_channel_h_steadyState_x ? path based, prefix = na_pop_na_channel_h_
    
    ? DerivedVariable is based on path: timeCourse/t, on: Component(id=h type=gateHHtauInf), from timeCourse; Component(id=null type=sigmoidOffsetTimeCourse)
    na_pop_na_channel_h_tauUnscaled = na_pop_na_channel_h_timeCourse_t ? path based, prefix = na_pop_na_channel_h_
    
    na_pop_na_channel_h_tau = na_pop_na_channel_h_tauUnscaled  /  na_pop_na_channel_h_rateScale ? evaluable
    ? DerivedVariable is based on path: ionChannel/g, on: Component(id=na_pop type=channelPopulation), from ionChannel; Component(id=na_channel type=ionChannelHH)
    na_pop_channelg = na_pop_ionChannel_g ? path based, prefix = na_pop_
    
    na_pop_geff = na_pop_channelg  *  na_pop_number ? evaluable
    na_pop_i = na_pop_geff  * ( na_pop_erev  - v) ? evaluable
    ? DerivedVariable is based on path: populations[*]/i, on: Component(id=isopotential type=pointCellCondBased), from populations; Component(id=leak_pop type=channelPopulation)
    ? add applied to all instances of i in: <populations> ([Component(id=leak_pop type=channelPopulation), Component(id=na_pop type=channelPopulation)]))
    iChannels = leak_pop_i + na_pop_i ? path based, prefix = 
    
    ? DerivedVariable is based on path: synapses[*]/i, on: Component(id=isopotential type=pointCellCondBased), from synapses; null
    iSyn = 0 ? Was: synapses[*]_i but insertion of currents from external attachments not yet supported ? path based, prefix = 
    
    iMemb = iChannels  +  iSyn ? evaluable
    rate_v = iMemb  /  C ? Note units of all quantities used here need to be consistent!
    
    vI = -1 * rate_v
     
    
     
    
     
    
     
    
     
    rate_na_pop_na_channel_m_q = ( na_pop_na_channel_m_inf  -  na_pop_na_channel_m_q ) /  na_pop_na_channel_m_tau ? Note units of all quantities used here need to be consistent!
    
     
    
     
    
     
    rate_na_pop_na_channel_h_q = ( na_pop_na_channel_h_inf  -  na_pop_na_channel_h_q ) /  na_pop_na_channel_h_tau ? Note units of all quantities used here need to be consistent!
    
     
    
     
    
     
    
}

