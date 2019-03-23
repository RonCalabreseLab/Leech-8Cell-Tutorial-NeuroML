TITLE Mod file for component: Component(id=ca_slow_channel type=ionChannelHH)

COMMENT

    This NEURON file has been generated by org.neuroml.export (see https://github.com/NeuroML/org.neuroml.export)
         org.neuroml.export  v1.5.3
         org.neuroml.model   v1.5.3
         jLEMS               v0.9.9.0

ENDCOMMENT

NEURON {
    SUFFIX ca_slow_channel
    USEION ca WRITE ica VALENCE 2 ? Assuming valence = 2 (Ca ion); TODO check this!!
    
    RANGE gion                           
    RANGE gmax                              : Will be changed when ion channel mechanism placed on cell!
    RANGE conductance                       : parameter
    
    RANGE g                                 : exposure
    
    RANGE fopen                             : exposure
    RANGE m_instances                       : parameter
    
    RANGE m_tau                             : exposure
    
    RANGE m_inf                             : exposure
    
    RANGE m_rateScale                       : exposure
    
    RANGE m_fcond                           : exposure
    RANGE m_steadyState_rate                : parameter
    RANGE m_steadyState_midpoint            : parameter
    RANGE m_steadyState_scale               : parameter
    
    RANGE m_steadyState_x                   : exposure
    RANGE m_timeCourse_offset               : parameter
    RANGE m_timeCourse_rate                 : parameter
    RANGE m_timeCourse_midpoint             : parameter
    RANGE m_timeCourse_scale                : parameter
    RANGE m_timeCourse_SEC                  : parameter
    
    RANGE m_timeCourse_t                    : exposure
    RANGE h_instances                       : parameter
    
    RANGE h_tau                             : exposure
    
    RANGE h_inf                             : exposure
    
    RANGE h_rateScale                       : exposure
    
    RANGE h_fcond                           : exposure
    RANGE h_steadyState_rate                : parameter
    RANGE h_steadyState_midpoint            : parameter
    RANGE h_steadyState_scale               : parameter
    
    RANGE h_steadyState_x                   : exposure
    RANGE h_timeCourse_offset               : parameter
    RANGE h_timeCourse_rate                 : parameter
    RANGE h_timeCourse_midpoint             : parameter
    RANGE h_timeCourse_scale                : parameter
    RANGE h_timeCourse_SEC                  : parameter
    
    RANGE h_timeCourse_t                    : exposure
    RANGE m_timeCourse_t0                   : derived variable
    RANGE m_tauUnscaled                     : derived variable
    RANGE h_timeCourse_t0                   : derived variable
    RANGE h_tauUnscaled                     : derived variable
    RANGE conductanceScale                  : derived variable
    RANGE fopen0                            : derived variable
    
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
    
    gmax = 0  (S/cm2)                       : Will be changed when ion channel mechanism placed on cell!
    
    conductance = 0.1 (uS)
    m_instances = 2 
    m_steadyState_rate = 1 
    m_steadyState_midpoint = -47.2 (mV)
    m_steadyState_scale = 2.380952 (mV)
    m_timeCourse_offset = 0.005 (ms)
    m_timeCourse_rate = 0.134 (ms)
    m_timeCourse_midpoint = -48.7 (mV)
    m_timeCourse_scale = 2.5 (mV)
    m_timeCourse_SEC = 1000 (ms)
    h_instances = 1 
    h_steadyState_rate = 1 
    h_steadyState_midpoint = -55 (mV)
    h_steadyState_scale = -2.777777 (mV)
    h_timeCourse_offset = 0.2 (ms)
    h_timeCourse_rate = 5.25 (ms)
    h_timeCourse_midpoint = -43 (mV)
    h_timeCourse_scale = 4 (mV)
    h_timeCourse_SEC = 1000 (ms)
}

ASSIGNED {
    
    gion   (S/cm2)                          : Transient conductance density of the channel? Standard Assigned variables with ionChannel
    v (mV)
    celsius (degC)
    temperature (K)
    eca (mV)
    ica (mA/cm2)
    
    
    m_steadyState_x                        : derived variable
    
    m_timeCourse_t0 : no units???          : derived variable
    
    m_rateScale                            : derived variable
    
    m_fcond                                : derived variable
    
    m_inf                                  : derived variable
    
    m_tauUnscaled (ms)                     : derived variable
    
    m_tau (ms)                             : derived variable
    
    h_steadyState_x                        : derived variable
    
    h_timeCourse_t0 : no units???          : derived variable
    
    h_rateScale                            : derived variable
    
    h_fcond                                : derived variable
    
    h_inf                                  : derived variable
    
    h_tauUnscaled (ms)                     : derived variable
    
    h_tau (ms)                             : derived variable
    
    conductanceScale                       : derived variable
    
    fopen0                                 : derived variable
    
    fopen                                  : derived variable
    
    g (uS)                                 : derived variable
    rate_m_q (/ms)
    rate_h_q (/ms)
    
}

STATE {
    m_q  
    h_q  
    
}

INITIAL {
    eca = 135.0
    
    temperature = celsius + 273.15
    
    rates()
    rates() ? To ensure correct initialisation.
    
    m_q = m_inf
    
    h_q = h_inf
    
}

BREAKPOINT {
    
    SOLVE states METHOD cnexp
    
    ? DerivedVariable is based on path: conductanceScaling[*]/factor, on: Component(id=ca_slow_channel type=ionChannelHH), from conductanceScaling; null
    ? Path not present in component, using factor: 1
    
    conductanceScale = 1 
    
    ? DerivedVariable is based on path: gates[*]/fcond, on: Component(id=ca_slow_channel type=ionChannelHH), from gates; Component(id=m type=gateHHtauInf)
    ? multiply applied to all instances of fcond in: <gates> ([Component(id=m type=gateHHtauInf), Component(id=h type=gateHHtauInf)]))
    fopen0 = m_fcond * h_fcond ? path based, prefix = 
    
    fopen = conductanceScale  *  fopen0 ? evaluable
    g = conductance  *  fopen ? evaluable
    gion = gmax * fopen 
    
    ica = gion * (v - eca)
    
}

DERIVATIVE states {
    rates()
    m_q' = rate_m_q 
    h_q' = rate_h_q 
    
}

PROCEDURE rates() {
    
    m_steadyState_x = m_steadyState_rate  / (1 + exp(0 - (v -  m_steadyState_midpoint )/ m_steadyState_scale )) ? evaluable
    m_timeCourse_t0 = ( m_timeCourse_offset  +  m_timeCourse_rate  / (1 + exp(-(v -  m_timeCourse_midpoint )/ m_timeCourse_scale )))* m_timeCourse_SEC ? evaluable
    ? DerivedVariable is based on path: q10Settings[*]/q10, on: Component(id=m type=gateHHtauInf), from q10Settings; null
    ? Path not present in component, using factor: 1
    
    m_rateScale = 1 
    
    m_fcond = m_q ^ m_instances ? evaluable
    ? DerivedVariable is based on path: steadyState/x, on: Component(id=m type=gateHHtauInf), from steadyState; Component(id=null type=HHSigmoidVariable)
    m_inf = m_steadyState_x ? path based, prefix = m_
    
    ? DerivedVariable is based on path: timeCourse/t, on: Component(id=m type=gateHHtauInf), from timeCourse; Component(id=null type=sigmoidOffsetTimeCourse)
    m_tauUnscaled = m_timeCourse_t0 ? path based, prefix = m_
    
    m_tau = m_tauUnscaled  /  m_rateScale ? evaluable
    h_steadyState_x = h_steadyState_rate  / (1 + exp(0 - (v -  h_steadyState_midpoint )/ h_steadyState_scale )) ? evaluable
    h_timeCourse_t0 = ( h_timeCourse_offset  +  h_timeCourse_rate  / (1 + exp(-(v -  h_timeCourse_midpoint )/ h_timeCourse_scale )))* h_timeCourse_SEC ? evaluable
    ? DerivedVariable is based on path: q10Settings[*]/q10, on: Component(id=h type=gateHHtauInf), from q10Settings; null
    ? Path not present in component, using factor: 1
    
    h_rateScale = 1 
    
    h_fcond = h_q ^ h_instances ? evaluable
    ? DerivedVariable is based on path: steadyState/x, on: Component(id=h type=gateHHtauInf), from steadyState; Component(id=null type=HHSigmoidVariable)
    h_inf = h_steadyState_x ? path based, prefix = h_
    
    ? DerivedVariable is based on path: timeCourse/t, on: Component(id=h type=gateHHtauInf), from timeCourse; Component(id=null type=sigmoidOffsetTimeCourse)
    h_tauUnscaled = h_timeCourse_t0 ? path based, prefix = h_
    
    h_tau = h_tauUnscaled  /  h_rateScale ? evaluable
    
     
    rate_m_q = ( m_inf  -  m_q ) /  m_tau ? Note units of all quantities used here need to be consistent!
    
     
    
     
    
     
    rate_h_q = ( h_inf  -  h_q ) /  h_tau ? Note units of all quantities used here need to be consistent!
    
     
    
     
    
     
    
}

