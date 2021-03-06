'''
Neuron simulator export for:

Components:
    passive (Type: ionChannelPassive:  conductance=0.0 (SI conductance))
    na_channel (Type: ionChannelHH:  conductance=2.5E-9 (SI conductance))
    k1_channel (Type: ionChannelHH:  conductance=1.0000000000000001E-7 (SI conductance))
    k2_channel (Type: ionChannelHH:  conductance=1.0000000000000001E-7 (SI conductance))
    cell_HN1 (Type: cell)
    cell_HN2 (Type: cell)
    ka_channel (Type: ionChannelHH:  conductance=1.0000000000000001E-7 (SI conductance))
    h_channel (Type: ionChannelHH:  conductance=1.0000000000000001E-7 (SI conductance))
    ca_fast_channel (Type: ionChannelHH:  conductance=2.4100000000000004E-8 (SI conductance))
    ca_slow_channel (Type: ionChannelHH:  conductance=1.0000000000000001E-7 (SI conductance))
    p_channel (Type: ionChannelHH:  conductance=1.0000000000000001E-7 (SI conductance))
    k_fast_channel (Type: ionChannelHH:  conductance=1.0000000000000001E-7 (SI conductance))
    cell_HN34 (Type: cell)
    pulse_gen_hn1L (Type: pulseGenerator:  delay=0.05 (SI time) duration=0.0 (SI time) amplitude=0.0 (SI current))
    SynA (Type: expTwoSynapse:  tauRise=0.009000000000000001 (SI time) tauDecay=0.55 (SI time) peakTime=0.037630007059901986 (SI time) waveformFactor=1.088626918162898 (dimensionless) gbase=6.000000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynB (Type: expTwoSynapse:  tauRise=0.002 (SI time) tauDecay=0.01 (SI time) peakTime=0.00402359478108525 (SI time) waveformFactor=1.8691859765265255 (dimensionless) gbase=7.900000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynC (Type: expTwoSynapse:  tauRise=0.0025 (SI time) tauDecay=0.011 (SI time) peakTime=0.004793426455931285 (SI time) waveformFactor=2.000896141088167 (dimensionless) gbase=5.9000000000000006E-8 (SI conductance) erev=-0.0625 (SI voltage))
    SynS3L1L (Type: expTwoSynapse:  tauRise=0.009000000000000001 (SI time) tauDecay=0.55 (SI time) peakTime=0.037630007059901986 (SI time) waveformFactor=1.088626918162898 (dimensionless) gbase=6.000000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS4L1L (Type: expTwoSynapse:  tauRise=0.009000000000000001 (SI time) tauDecay=0.55 (SI time) peakTime=0.037630007059901986 (SI time) waveformFactor=1.088626918162898 (dimensionless) gbase=6.000000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS3R1R (Type: expTwoSynapse:  tauRise=0.009000000000000001 (SI time) tauDecay=0.55 (SI time) peakTime=0.037630007059901986 (SI time) waveformFactor=1.088626918162898 (dimensionless) gbase=6.000000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS4R1R (Type: expTwoSynapse:  tauRise=0.009000000000000001 (SI time) tauDecay=0.55 (SI time) peakTime=0.037630007059901986 (SI time) waveformFactor=1.088626918162898 (dimensionless) gbase=6.000000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS3L2L (Type: expTwoSynapse:  tauRise=0.009000000000000001 (SI time) tauDecay=0.55 (SI time) peakTime=0.037630007059901986 (SI time) waveformFactor=1.088626918162898 (dimensionless) gbase=6.000000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS4L2L (Type: expTwoSynapse:  tauRise=0.009000000000000001 (SI time) tauDecay=0.55 (SI time) peakTime=0.037630007059901986 (SI time) waveformFactor=1.088626918162898 (dimensionless) gbase=6.000000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS3R2R (Type: expTwoSynapse:  tauRise=0.009000000000000001 (SI time) tauDecay=0.55 (SI time) peakTime=0.037630007059901986 (SI time) waveformFactor=1.088626918162898 (dimensionless) gbase=6.000000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS4R2R (Type: expTwoSynapse:  tauRise=0.009000000000000001 (SI time) tauDecay=0.55 (SI time) peakTime=0.037630007059901986 (SI time) waveformFactor=1.088626918162898 (dimensionless) gbase=6.000000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS1L3L (Type: expTwoSynapse:  tauRise=0.002 (SI time) tauDecay=0.01 (SI time) peakTime=0.00402359478108525 (SI time) waveformFactor=1.8691859765265255 (dimensionless) gbase=7.900000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS2L3L (Type: expTwoSynapse:  tauRise=0.002 (SI time) tauDecay=0.01 (SI time) peakTime=0.00402359478108525 (SI time) waveformFactor=1.8691859765265255 (dimensionless) gbase=7.900000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS3R3L (Type: expTwoSynapse:  tauRise=0.0025 (SI time) tauDecay=0.011 (SI time) peakTime=0.004793426455931285 (SI time) waveformFactor=2.000896141088167 (dimensionless) gbase=5.9000000000000006E-8 (SI conductance) erev=-0.0625 (SI voltage))
    SynS1R3R (Type: expTwoSynapse:  tauRise=0.002 (SI time) tauDecay=0.01 (SI time) peakTime=0.00402359478108525 (SI time) waveformFactor=1.8691859765265255 (dimensionless) gbase=7.900000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS2R3R (Type: expTwoSynapse:  tauRise=0.002 (SI time) tauDecay=0.01 (SI time) peakTime=0.00402359478108525 (SI time) waveformFactor=1.8691859765265255 (dimensionless) gbase=7.900000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS3L3R (Type: expTwoSynapse:  tauRise=0.0025 (SI time) tauDecay=0.011 (SI time) peakTime=0.004793426455931285 (SI time) waveformFactor=2.000896141088167 (dimensionless) gbase=5.9000000000000006E-8 (SI conductance) erev=-0.0625 (SI voltage))
    SynS1L4L (Type: expTwoSynapse:  tauRise=0.002 (SI time) tauDecay=0.01 (SI time) peakTime=0.00402359478108525 (SI time) waveformFactor=1.8691859765265255 (dimensionless) gbase=7.900000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS2L4L (Type: expTwoSynapse:  tauRise=0.002 (SI time) tauDecay=0.01 (SI time) peakTime=0.00402359478108525 (SI time) waveformFactor=1.8691859765265255 (dimensionless) gbase=7.900000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS4R4L (Type: expTwoSynapse:  tauRise=0.0025 (SI time) tauDecay=0.011 (SI time) peakTime=0.004793426455931285 (SI time) waveformFactor=2.000896141088167 (dimensionless) gbase=5.9000000000000006E-8 (SI conductance) erev=-0.0625 (SI voltage))
    SynS1R4R (Type: expTwoSynapse:  tauRise=0.002 (SI time) tauDecay=0.01 (SI time) peakTime=0.00402359478108525 (SI time) waveformFactor=1.8691859765265255 (dimensionless) gbase=7.900000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS2R4R (Type: expTwoSynapse:  tauRise=0.002 (SI time) tauDecay=0.01 (SI time) peakTime=0.00402359478108525 (SI time) waveformFactor=1.8691859765265255 (dimensionless) gbase=7.900000000000001E-9 (SI conductance) erev=-0.0625 (SI voltage))
    SynS4L4R (Type: expTwoSynapse:  tauRise=0.0025 (SI time) tauDecay=0.011 (SI time) peakTime=0.004793426455931285 (SI time) waveformFactor=2.000896141088167 (dimensionless) gbase=5.9000000000000006E-8 (SI conductance) erev=-0.0625 (SI voltage))
    net_8 (Type: network)
    hn8_simulation (Type: Simulation:  length=3.0 (SI time) step=1.0E-5 (SI time))


    This NEURON file has been generated by org.neuroml.export (see https://github.com/NeuroML/org.neuroml.export)
         org.neuroml.export  v1.5.3
         org.neuroml.model   v1.5.3
         jLEMS               v0.9.9.0

'''

import neuron

import time

import hashlib
h = neuron.h
h.load_file("nrngui.hoc")

h("objref p")
h("p = new PythonObject()")

class NeuronSimulation():

    def __init__(self, tstop, dt, seed=123456789):

        print("\n    Starting simulation in NEURON generated from NeuroML2 model...\n")

        self.seed = seed
        self.randoms = []
        self.next_global_id = 0  # Used in Random123 classes for elements using random(), etc. 

        self.next_spiking_input_id = 0  # Used in Random123 classes for elements using random(), etc. 

        '''
        Adding simulation Component(id=hn8_simulation type=Simulation) of network/component: net_8 (Type: network)
        
        '''
        # ######################   Population: hn1L_pop
        print("Population hn1L_pop contains 1 instance(s) of component: cell_HN1 of type: cell")

        h.load_file("cell_HN1.hoc")
        a_hn1L_pop = []
        h("{ n_hn1L_pop = 1 }")
        h("objectvar a_hn1L_pop[n_hn1L_pop]")
        for i in range(int(h.n_hn1L_pop)):
            h("a_hn1L_pop[%i] = new cell_HN1()"%i)
            h("access a_hn1L_pop[%i].soma"%i)

            self.next_global_id+=1


        h("proc initialiseV_hn1L_pop() { for i = 0, n_hn1L_pop-1 { a_hn1L_pop[i].set_initial_v() } }")
        h("objref fih_hn1L_pop")
        h('{fih_hn1L_pop = new FInitializeHandler(0, "initialiseV_hn1L_pop()")}')

        h("proc initialiseIons_hn1L_pop() { for i = 0, n_hn1L_pop-1 { a_hn1L_pop[i].set_initial_ion_properties() } }")
        h("objref fih_ion_hn1L_pop")
        h('{fih_ion_hn1L_pop = new FInitializeHandler(1, "initialiseIons_hn1L_pop()")}')

        # ######################   Population: hn1R_pop
        print("Population hn1R_pop contains 1 instance(s) of component: cell_HN1 of type: cell")

        h.load_file("cell_HN1.hoc")
        a_hn1R_pop = []
        h("{ n_hn1R_pop = 1 }")
        h("objectvar a_hn1R_pop[n_hn1R_pop]")
        for i in range(int(h.n_hn1R_pop)):
            h("a_hn1R_pop[%i] = new cell_HN1()"%i)
            h("access a_hn1R_pop[%i].soma"%i)

            self.next_global_id+=1


        h("proc initialiseV_hn1R_pop() { for i = 0, n_hn1R_pop-1 { a_hn1R_pop[i].set_initial_v() } }")
        h("objref fih_hn1R_pop")
        h('{fih_hn1R_pop = new FInitializeHandler(0, "initialiseV_hn1R_pop()")}')

        h("proc initialiseIons_hn1R_pop() { for i = 0, n_hn1R_pop-1 { a_hn1R_pop[i].set_initial_ion_properties() } }")
        h("objref fih_ion_hn1R_pop")
        h('{fih_ion_hn1R_pop = new FInitializeHandler(1, "initialiseIons_hn1R_pop()")}')

        # ######################   Population: hn2L_pop
        print("Population hn2L_pop contains 1 instance(s) of component: cell_HN2 of type: cell")

        h.load_file("cell_HN2.hoc")
        a_hn2L_pop = []
        h("{ n_hn2L_pop = 1 }")
        h("objectvar a_hn2L_pop[n_hn2L_pop]")
        for i in range(int(h.n_hn2L_pop)):
            h("a_hn2L_pop[%i] = new cell_HN2()"%i)
            h("access a_hn2L_pop[%i].soma"%i)

            self.next_global_id+=1


        h("proc initialiseV_hn2L_pop() { for i = 0, n_hn2L_pop-1 { a_hn2L_pop[i].set_initial_v() } }")
        h("objref fih_hn2L_pop")
        h('{fih_hn2L_pop = new FInitializeHandler(0, "initialiseV_hn2L_pop()")}')

        h("proc initialiseIons_hn2L_pop() { for i = 0, n_hn2L_pop-1 { a_hn2L_pop[i].set_initial_ion_properties() } }")
        h("objref fih_ion_hn2L_pop")
        h('{fih_ion_hn2L_pop = new FInitializeHandler(1, "initialiseIons_hn2L_pop()")}')

        # ######################   Population: hn2R_pop
        print("Population hn2R_pop contains 1 instance(s) of component: cell_HN2 of type: cell")

        h.load_file("cell_HN2.hoc")
        a_hn2R_pop = []
        h("{ n_hn2R_pop = 1 }")
        h("objectvar a_hn2R_pop[n_hn2R_pop]")
        for i in range(int(h.n_hn2R_pop)):
            h("a_hn2R_pop[%i] = new cell_HN2()"%i)
            h("access a_hn2R_pop[%i].soma"%i)

            self.next_global_id+=1


        h("proc initialiseV_hn2R_pop() { for i = 0, n_hn2R_pop-1 { a_hn2R_pop[i].set_initial_v() } }")
        h("objref fih_hn2R_pop")
        h('{fih_hn2R_pop = new FInitializeHandler(0, "initialiseV_hn2R_pop()")}')

        h("proc initialiseIons_hn2R_pop() { for i = 0, n_hn2R_pop-1 { a_hn2R_pop[i].set_initial_ion_properties() } }")
        h("objref fih_ion_hn2R_pop")
        h('{fih_ion_hn2R_pop = new FInitializeHandler(1, "initialiseIons_hn2R_pop()")}')

        # ######################   Population: hn3L_pop
        print("Population hn3L_pop contains 1 instance(s) of component: cell_HN34 of type: cell")

        h.load_file("cell_HN34.hoc")
        a_hn3L_pop = []
        h("{ n_hn3L_pop = 1 }")
        h("objectvar a_hn3L_pop[n_hn3L_pop]")
        for i in range(int(h.n_hn3L_pop)):
            h("a_hn3L_pop[%i] = new cell_HN34()"%i)
            h("access a_hn3L_pop[%i].soma"%i)

            self.next_global_id+=1


        h("proc initialiseV_hn3L_pop() { for i = 0, n_hn3L_pop-1 { a_hn3L_pop[i].set_initial_v() } }")
        h("objref fih_hn3L_pop")
        h('{fih_hn3L_pop = new FInitializeHandler(0, "initialiseV_hn3L_pop()")}')

        h("proc initialiseIons_hn3L_pop() { for i = 0, n_hn3L_pop-1 { a_hn3L_pop[i].set_initial_ion_properties() } }")
        h("objref fih_ion_hn3L_pop")
        h('{fih_ion_hn3L_pop = new FInitializeHandler(1, "initialiseIons_hn3L_pop()")}')

        # ######################   Population: hn3R_pop
        print("Population hn3R_pop contains 1 instance(s) of component: cell_HN34 of type: cell")

        h.load_file("cell_HN34.hoc")
        a_hn3R_pop = []
        h("{ n_hn3R_pop = 1 }")
        h("objectvar a_hn3R_pop[n_hn3R_pop]")
        for i in range(int(h.n_hn3R_pop)):
            h("a_hn3R_pop[%i] = new cell_HN34()"%i)
            h("access a_hn3R_pop[%i].soma"%i)

            self.next_global_id+=1


        h("proc initialiseV_hn3R_pop() { for i = 0, n_hn3R_pop-1 { a_hn3R_pop[i].set_initial_v() } }")
        h("objref fih_hn3R_pop")
        h('{fih_hn3R_pop = new FInitializeHandler(0, "initialiseV_hn3R_pop()")}')

        h("proc initialiseIons_hn3R_pop() { for i = 0, n_hn3R_pop-1 { a_hn3R_pop[i].set_initial_ion_properties() } }")
        h("objref fih_ion_hn3R_pop")
        h('{fih_ion_hn3R_pop = new FInitializeHandler(1, "initialiseIons_hn3R_pop()")}')

        # ######################   Population: hn4L_pop
        print("Population hn4L_pop contains 1 instance(s) of component: cell_HN34 of type: cell")

        h.load_file("cell_HN34.hoc")
        a_hn4L_pop = []
        h("{ n_hn4L_pop = 1 }")
        h("objectvar a_hn4L_pop[n_hn4L_pop]")
        for i in range(int(h.n_hn4L_pop)):
            h("a_hn4L_pop[%i] = new cell_HN34()"%i)
            h("access a_hn4L_pop[%i].soma"%i)

            self.next_global_id+=1


        h("proc initialiseV_hn4L_pop() { for i = 0, n_hn4L_pop-1 { a_hn4L_pop[i].set_initial_v() } }")
        h("objref fih_hn4L_pop")
        h('{fih_hn4L_pop = new FInitializeHandler(0, "initialiseV_hn4L_pop()")}')

        h("proc initialiseIons_hn4L_pop() { for i = 0, n_hn4L_pop-1 { a_hn4L_pop[i].set_initial_ion_properties() } }")
        h("objref fih_ion_hn4L_pop")
        h('{fih_ion_hn4L_pop = new FInitializeHandler(1, "initialiseIons_hn4L_pop()")}')

        # ######################   Population: hn4R_pop
        print("Population hn4R_pop contains 1 instance(s) of component: cell_HN34 of type: cell")

        h.load_file("cell_HN34.hoc")
        a_hn4R_pop = []
        h("{ n_hn4R_pop = 1 }")
        h("objectvar a_hn4R_pop[n_hn4R_pop]")
        for i in range(int(h.n_hn4R_pop)):
            h("a_hn4R_pop[%i] = new cell_HN34()"%i)
            h("access a_hn4R_pop[%i].soma"%i)

            self.next_global_id+=1


        h("proc initialiseV_hn4R_pop() { for i = 0, n_hn4R_pop-1 { a_hn4R_pop[i].set_initial_v() } }")
        h("objref fih_hn4R_pop")
        h('{fih_hn4R_pop = new FInitializeHandler(0, "initialiseV_hn4R_pop()")}')

        h("proc initialiseIons_hn4R_pop() { for i = 0, n_hn4R_pop-1 { a_hn4R_pop[i].set_initial_ion_properties() } }")
        h("objref fih_ion_hn4R_pop")
        h('{fih_ion_hn4R_pop = new FInitializeHandler(1, "initialiseIons_hn4R_pop()")}')

        # ######################   Projection: null
        print("Adding projection: null, from hn1L_pop to hn3L_pop with synapse SynA, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn1L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn3L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn3L_pop_0_0_SynA_0")
        h("a_hn3L_pop[0].soma syn_hn3L_pop_0_0_SynA_0 = new SynA(0.5)")
        h("a_hn1L_pop[0].soma a_hn3L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn3L_pop_0_0_SynA_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn1L_pop to hn4L_pop with synapse SynA, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn1L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn4L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn4L_pop_0_0_SynA_0")
        h("a_hn4L_pop[0].soma syn_hn4L_pop_0_0_SynA_0 = new SynA(0.5)")
        h("a_hn1L_pop[0].soma a_hn4L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn4L_pop_0_0_SynA_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn1R_pop to hn3R_pop with synapse SynA, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn1R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn3R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn3R_pop_0_0_SynA_0")
        h("a_hn3R_pop[0].soma syn_hn3R_pop_0_0_SynA_0 = new SynA(0.5)")
        h("a_hn1R_pop[0].soma a_hn3R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn3R_pop_0_0_SynA_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn1R_pop to hn4R_pop with synapse SynA, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn1R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn4R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn4R_pop_0_0_SynA_0")
        h("a_hn4R_pop[0].soma syn_hn4R_pop_0_0_SynA_0 = new SynA(0.5)")
        h("a_hn1R_pop[0].soma a_hn4R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn4R_pop_0_0_SynA_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn2L_pop to hn3L_pop with synapse SynA, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn2L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn3L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn3L_pop_0_0_SynA_1")
        h("a_hn3L_pop[0].soma syn_hn3L_pop_0_0_SynA_1 = new SynA(0.5)")
        h("a_hn2L_pop[0].soma a_hn3L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn3L_pop_0_0_SynA_1, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn2L_pop to hn4L_pop with synapse SynA, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn2L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn4L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn4L_pop_0_0_SynA_1")
        h("a_hn4L_pop[0].soma syn_hn4L_pop_0_0_SynA_1 = new SynA(0.5)")
        h("a_hn2L_pop[0].soma a_hn4L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn4L_pop_0_0_SynA_1, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn2R_pop to hn3R_pop with synapse SynA, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn2R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn3R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn3R_pop_0_0_SynA_1")
        h("a_hn3R_pop[0].soma syn_hn3R_pop_0_0_SynA_1 = new SynA(0.5)")
        h("a_hn2R_pop[0].soma a_hn3R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn3R_pop_0_0_SynA_1, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn2R_pop to hn4R_pop with synapse SynA, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn2R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn4R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn4R_pop_0_0_SynA_1")
        h("a_hn4R_pop[0].soma syn_hn4R_pop_0_0_SynA_1 = new SynA(0.5)")
        h("a_hn2R_pop[0].soma a_hn4R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn4R_pop_0_0_SynA_1, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn3L_pop to hn1L_pop with synapse SynB, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn3L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn1L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn1L_pop_0_0_SynB_0")
        h("a_hn1L_pop[0].soma syn_hn1L_pop_0_0_SynB_0 = new SynB(0.5)")
        h("a_hn3L_pop[0].soma a_hn1L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn1L_pop_0_0_SynB_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn3L_pop to hn2L_pop with synapse SynB, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn3L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn2L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn2L_pop_0_0_SynB_0")
        h("a_hn2L_pop[0].soma syn_hn2L_pop_0_0_SynB_0 = new SynB(0.5)")
        h("a_hn3L_pop[0].soma a_hn2L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn2L_pop_0_0_SynB_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn3R_pop to hn1R_pop with synapse SynB, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn3R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn1R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn1R_pop_0_0_SynB_0")
        h("a_hn1R_pop[0].soma syn_hn1R_pop_0_0_SynB_0 = new SynB(0.5)")
        h("a_hn3R_pop[0].soma a_hn1R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn1R_pop_0_0_SynB_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn3R_pop to hn2R_pop with synapse SynB, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn3R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn2R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn2R_pop_0_0_SynB_0")
        h("a_hn2R_pop[0].soma syn_hn2R_pop_0_0_SynB_0 = new SynB(0.5)")
        h("a_hn3R_pop[0].soma a_hn2R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn2R_pop_0_0_SynB_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn4L_pop to hn1L_pop with synapse SynB, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn4L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn1L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn1L_pop_0_0_SynB_1")
        h("a_hn1L_pop[0].soma syn_hn1L_pop_0_0_SynB_1 = new SynB(0.5)")
        h("a_hn4L_pop[0].soma a_hn1L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn1L_pop_0_0_SynB_1, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn4L_pop to hn2L_pop with synapse SynB, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn4L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn2L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn2L_pop_0_0_SynB_1")
        h("a_hn2L_pop[0].soma syn_hn2L_pop_0_0_SynB_1 = new SynB(0.5)")
        h("a_hn4L_pop[0].soma a_hn2L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn2L_pop_0_0_SynB_1, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn4R_pop to hn1R_pop with synapse SynB, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn4R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn1R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn1R_pop_0_0_SynB_1")
        h("a_hn1R_pop[0].soma syn_hn1R_pop_0_0_SynB_1 = new SynB(0.5)")
        h("a_hn4R_pop[0].soma a_hn1R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn1R_pop_0_0_SynB_1, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn4R_pop to hn2R_pop with synapse SynB, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn4R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn2R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn2R_pop_0_0_SynB_1")
        h("a_hn2R_pop[0].soma syn_hn2R_pop_0_0_SynB_1 = new SynB(0.5)")
        h("a_hn4R_pop[0].soma a_hn2R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn2R_pop_0_0_SynB_1, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn3L_pop to hn3R_pop with synapse SynC, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn3L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn3R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn3R_pop_0_0_SynC_0")
        h("a_hn3R_pop[0].soma syn_hn3R_pop_0_0_SynC_0 = new SynC(0.5)")
        h("a_hn3L_pop[0].soma a_hn3R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn3R_pop_0_0_SynC_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn3R_pop to hn3L_pop with synapse SynC, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn3R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn3L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn3L_pop_0_0_SynC_0")
        h("a_hn3L_pop[0].soma syn_hn3L_pop_0_0_SynC_0 = new SynC(0.5)")
        h("a_hn3R_pop[0].soma a_hn3L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn3L_pop_0_0_SynC_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn4L_pop to hn4R_pop with synapse SynC, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn4L_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn4R_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn4R_pop_0_0_SynC_0")
        h("a_hn4R_pop[0].soma syn_hn4R_pop_0_0_SynC_0 = new SynC(0.5)")
        h("a_hn4L_pop[0].soma a_hn4R_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn4R_pop_0_0_SynC_0, -20.0, 0.0, 1.0))")

        # ######################   Projection: null
        print("Adding projection: null, from hn4R_pop to hn4L_pop with synapse SynC, 1 connection(s)")

        # Connection null: cell 0, seg 0 (0.5) [0.5 on a_hn4R_pop[0].soma] -> cell 0, seg 0 (0.5) [0.5 on a_hn4L_pop[0].soma], weight: 1.0, delay 0.0
        h("objectvar syn_hn4L_pop_0_0_SynC_0")
        h("a_hn4L_pop[0].soma syn_hn4L_pop_0_0_SynC_0 = new SynC(0.5)")
        h("a_hn4R_pop[0].soma a_hn4L_pop[0].synlist.append(new NetCon(&v(0.5), syn_hn4L_pop_0_0_SynC_0, -20.0, 0.0, 1.0))")

        trec = h.Vector()
        trec.record(h._ref_t)

        h.tstop = tstop

        h.dt = dt

        h.steps_per_ms = 1/h.dt

        # ######################   Display: self.display_display_vL
        self.display_display_vL = h.Graph(0)
        self.display_display_vL.size(0,h.tstop,-80.0,50.0)
        self.display_display_vL.view(0, -80.0, h.tstop, 130.0, 80, 330, 330, 250)
        h.graphList[0].append(self.display_display_vL)
        # Line, plotting: hn1L_pop[0]/v
        self.display_display_vL.addexpr("a_hn1L_pop[0].soma.v(0.5)", "a_hn1L_pop[0].soma.v(0.5)", 1, 1, 0.8, 0.9, 2)
        # Line, plotting: hn2L_pop[0]/v
        self.display_display_vL.addexpr("a_hn2L_pop[0].soma.v(0.5)", "a_hn2L_pop[0].soma.v(0.5)", 2, 1, 0.8, 0.9, 2)
        # Line, plotting: hn3L_pop[0]/v
        self.display_display_vL.addexpr("a_hn3L_pop[0].soma.v(0.5)", "a_hn3L_pop[0].soma.v(0.5)", 3, 1, 0.8, 0.9, 2)
        # Line, plotting: hn4L_pop[0]/v
        self.display_display_vL.addexpr("a_hn4L_pop[0].soma.v(0.5)", "a_hn4L_pop[0].soma.v(0.5)", 4, 1, 0.8, 0.9, 2)

        # ######################   Display: self.display_display_vR
        self.display_display_vR = h.Graph(0)
        self.display_display_vR.size(0,h.tstop,-80.0,50.0)
        self.display_display_vR.view(0, -80.0, h.tstop, 130.0, 80, 330, 330, 250)
        h.graphList[0].append(self.display_display_vR)
        # Line, plotting: hn1R_pop[0]/v
        self.display_display_vR.addexpr("a_hn1R_pop[0].soma.v(0.5)", "a_hn1R_pop[0].soma.v(0.5)", 1, 1, 0.8, 0.9, 2)
        # Line, plotting: hn2R_pop[0]/v
        self.display_display_vR.addexpr("a_hn2R_pop[0].soma.v(0.5)", "a_hn2R_pop[0].soma.v(0.5)", 2, 1, 0.8, 0.9, 2)
        # Line, plotting: hn3R_pop[0]/v
        self.display_display_vR.addexpr("a_hn3R_pop[0].soma.v(0.5)", "a_hn3R_pop[0].soma.v(0.5)", 3, 1, 0.8, 0.9, 2)
        # Line, plotting: hn4R_pop[0]/v
        self.display_display_vR.addexpr("a_hn4R_pop[0].soma.v(0.5)", "a_hn4R_pop[0].soma.v(0.5)", 4, 1, 0.8, 0.9, 2)



        # ######################   File to save: time.dat (time)
        # Column: time
        h(' objectvar v_time ')
        h(' { v_time = new Vector() } ')
        h(' { v_time.record(&t) } ')
        h.v_time.resize((h.tstop * h.steps_per_ms) + 1)

        self.initialized = False

        self.sim_end = -1 # will be overwritten

        h.nrncontrolmenu()


    def run(self):

        self.initialized = True
        sim_start = time.time()
        print("Running a simulation of %sms (dt = %sms; seed=%s)" % (h.tstop, h.dt, self.seed))

        h.run()

        self.sim_end = time.time()
        sim_time = self.sim_end - sim_start
        print("Finished NEURON simulation in %f seconds (%f mins)..."%(sim_time, sim_time/60.0))

        self.save_results()


    def advance(self):

        if not self.initialized:
            h.finitialize()
            self.initialized = True

        h.fadvance()


    ###############################################################################
    # Hash function to use in generation of random value
    # This is copied from NetPyNE: https://github.com/Neurosim-lab/netpyne/blob/master/netpyne/simFuncs.py
    ###############################################################################
    def _id32 (self,obj): 
        return int(hashlib.md5(obj).hexdigest()[0:8],16)  # convert 8 first chars of md5 hash in base 16 to int


    ###############################################################################
    # Initialize the stim randomizer
    # This is copied from NetPyNE: https://github.com/Neurosim-lab/netpyne/blob/master/netpyne/simFuncs.py
    ###############################################################################
    def _init_stim_randomizer(self,rand, stimType, gid, seed): 
        rand.Random123(self._id32(stimType), gid, seed)


    def save_results(self):

        print("Saving results at t=%s..."%h.t)

        if self.sim_end < 0: self.sim_end = time.time()

        self.display_display_vL.exec_menu("View = plot")
        self.display_display_vR.exec_menu("View = plot")

        # ######################   File to save: time.dat (time)
        py_v_time = [ t/1000 for t in h.v_time.to_python() ]  # Convert to Python list for speed...

        f_time_f2 = open('time.dat', 'w')
        num_points = len(py_v_time)  # Simulation may have been stopped before tstop...

        for i in range(num_points):
            f_time_f2.write('%f'% py_v_time[i])  # Save in SI units...
        f_time_f2.close()
        print("Saved data to: time.dat")

        save_end = time.time()
        save_time = save_end - self.sim_end
        print("Finished saving results in %f seconds"%(save_time))

        print("Done")

if __name__ == '__main__':

    ns = NeuronSimulation(tstop=3000, dt=0.01, seed=123456789)

    ns.run()

