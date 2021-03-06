'''
Neuron simulator export for:

Components:
    passiveChan (Type: ionChannelHH:  conductance=1.0E-11 (SI conductance))
    naChan (Type: ionChannelHH:  conductance=1.0E-11 (SI conductance))
    kChan (Type: ionChannelHH:  conductance=1.0E-11 (SI conductance))
    hhcell (Type: cell)
    pulseGen1 (Type: pulseGenerator:  delay=0.1 (SI time) duration=0.1 (SI time) amplitude=8.000000000000001E-11 (SI current))
    network_1 (Type: network)
    sim1 (Type: Simulation:  length=0.3 (SI time) step=1.0E-5 (SI time))


    This NEURON file has been generated by org.neuroml.export (see https://github.com/NeuroML/org.neuroml.export)
         org.neuroml.export  v1.5.0
         org.neuroml.model   v1.5.0
         jLEMS               v0.9.8.7

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
        Adding simulation Component(id=sim1 type=Simulation) of network/component: network_1 (Type: network)
        
        '''
        # ######################   Population: hhpop
        print("Population hhpop contains 1 instance(s) of component: hhcell of type: cell")

        h.load_file("hhcell.hoc")
        a_hhpop = []
        h("{ n_hhpop = 1 }")
        h("objectvar a_hhpop[n_hhpop]")
        for i in range(int(h.n_hhpop)):
            h("a_hhpop[%i] = new hhcell()"%i)
            h("access a_hhpop[%i].soma"%i)

            self.next_global_id+=1


        h("proc initialiseV_hhpop() { for i = 0, n_hhpop-1 { a_hhpop[i].set_initial_v() } }")
        h("objref fih_hhpop")
        h('{fih_hhpop = new FInitializeHandler(0, "initialiseV_hhpop()")}')

        h("proc initialiseIons_hhpop() { for i = 0, n_hhpop-1 { a_hhpop[i].set_initial_ion_properties() } }")
        h("objref fih_ion_hhpop")
        h('{fih_ion_hhpop = new FInitializeHandler(1, "initialiseIons_hhpop()")}')

        # Adding single input: Component(id=null type=explicitInput)
        h("objref explicitInput_pulseGen1a_hhpop0_soma")
        h("a_hhpop[0].soma { explicitInput_pulseGen1a_hhpop0_soma = new pulseGen1(0.5) } ")

        trec = h.Vector()
        trec.record(h._ref_t)

        h.tstop = tstop

        h.dt = dt

        h.steps_per_ms = 1/h.dt

        # ######################   Display: self.display_d1
        self.display_d1 = h.Graph(0)
        self.display_d1.size(0,h.tstop,-80.0,50.0)
        self.display_d1.view(0, -80.0, h.tstop, 130.0, 80, 330, 330, 250)
        h.graphList[0].append(self.display_d1)
        # Line, plotting: hhpop[0]/v
        self.display_d1.addexpr("a_hhpop[0].soma.v(0.5)", "a_hhpop[0].soma.v(0.5)", 1, 1, 0.8, 0.9, 2)
        # Line, plotting: hhpop[0]/spiking
        self.display_d1.addexpr("a_hhpop[0].soma.spiking(0.5)", "a_hhpop[0].soma.spiking(0.5)", 2, 1, 0.8, 0.9, 2)

        # ######################   Display: self.display_d2
        self.display_d2 = h.Graph(0)
        self.display_d2.size(0,h.tstop,-80.0,50.0)
        self.display_d2.view(0, -80.0, h.tstop, 130.0, 80, 330, 330, 250)
        h.graphList[0].append(self.display_d2)
        # Line, plotting: hhpop[0]/bioPhys1/membraneProperties/naChans/naChan/m/q
        self.display_d2.addexpr("a_hhpop[0].soma.m_q_naChan(0.5)", "a_hhpop[0].soma.m_q_naChan(0.5)", 1, 1, 0.8, 0.9, 2)
        # Line, plotting: hhpop[0]/bioPhys1/membraneProperties/naChans/naChan/h/q
        self.display_d2.addexpr("a_hhpop[0].soma.h_q_naChan(0.5)", "a_hhpop[0].soma.h_q_naChan(0.5)", 2, 1, 0.8, 0.9, 2)
        # Line, plotting: hhpop[0]/bioPhys1/membraneProperties/kChans/kChan/n/q
        self.display_d2.addexpr("a_hhpop[0].soma.n_q_kChan(0.5)", "a_hhpop[0].soma.n_q_kChan(0.5)", 3, 1, 0.8, 0.9, 2)

        # ######################   Display: self.display_d3
        self.display_d3 = h.Graph(0)
        self.display_d3.size(0,h.tstop,-80.0,50.0)
        self.display_d3.view(0, -80.0, h.tstop, 130.0, 80, 330, 330, 250)
        h.graphList[0].append(self.display_d3)
        # Line, plotting: hhpop[0]/bioPhys1/membraneProperties/naChans/iDensity
        self.display_d3.addexpr("a_hhpop[0].soma.ina(0.5)", "a_hhpop[0].soma.ina(0.5)", 1, 1, 0.8, 0.9, 2)
        # Line, plotting: hhpop[0]/bioPhys1/membraneProperties/kChans/iDensity
        self.display_d3.addexpr("a_hhpop[0].soma.ik(0.5)", "a_hhpop[0].soma.ik(0.5)", 2, 1, 0.8, 0.9, 2)

        # ######################   Display: self.display_d4
        self.display_d4 = h.Graph(0)
        self.display_d4.size(0,h.tstop,-80.0,50.0)
        self.display_d4.view(0, -80.0, h.tstop, 130.0, 80, 330, 330, 250)
        h.graphList[0].append(self.display_d4)
        # Line, plotting: hhpop[0]/bioPhys1/membraneProperties/naChans/gDensity
        self.display_d4.addexpr("a_hhpop[0].soma.gion_naChan(0.5)", "a_hhpop[0].soma.gion_naChan(0.5)", 1, 1, 0.8, 0.9, 2)
        # Line, plotting: hhpop[0]/bioPhys1/membraneProperties/kChans/gDensity
        self.display_d4.addexpr("a_hhpop[0].soma.gion_kChan(0.5)", "a_hhpop[0].soma.gion_kChan(0.5)", 2, 1, 0.8, 0.9, 2)



        # ######################   File to save: results/ex5_v.dat (of0)
        # Column: hhpop[0]/v
        h(' objectvar v_v_of0 ')
        h(' { v_v_of0 = new Vector() } ')
        h(' { v_v_of0.record(&a_hhpop[0].soma.v(0.5)) } ')
        h.v_v_of0.resize((h.tstop * h.steps_per_ms) + 1)

        # ######################   File to save: time.dat (time)
        # Column: time
        h(' objectvar v_time ')
        h(' { v_time = new Vector() } ')
        h(' { v_time.record(&t) } ')
        h.v_time.resize((h.tstop * h.steps_per_ms) + 1)

        # ######################   File to save: results/ex5_vars.dat (of1)
        # Column: hhpop[0]/bioPhys1/membraneProperties/naChans/naChan/m/q
        h(' objectvar v_m_of1 ')
        h(' { v_m_of1 = new Vector() } ')
        h(' { v_m_of1.record(&a_hhpop[0].soma.m_q_naChan(0.5)) } ')
        h.v_m_of1.resize((h.tstop * h.steps_per_ms) + 1)
        # Column: hhpop[0]/bioPhys1/membraneProperties/naChans/naChan/h/q
        h(' objectvar v_h_of1 ')
        h(' { v_h_of1 = new Vector() } ')
        h(' { v_h_of1.record(&a_hhpop[0].soma.h_q_naChan(0.5)) } ')
        h.v_h_of1.resize((h.tstop * h.steps_per_ms) + 1)
        # Column: hhpop[0]/bioPhys1/membraneProperties/kChans/kChan/n/q
        h(' objectvar v_n_of1 ')
        h(' { v_n_of1 = new Vector() } ')
        h(' { v_n_of1.record(&a_hhpop[0].soma.n_q_kChan(0.5)) } ')
        h.v_n_of1.resize((h.tstop * h.steps_per_ms) + 1)

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


    def save_results(self):

        print("Saving results at t=%s..."%h.t)

        if self.sim_end < 0: self.sim_end = time.time()

        self.display_d1.exec_menu("View = plot")
        self.display_d2.exec_menu("View = plot")
        self.display_d3.exec_menu("View = plot")
        self.display_d4.exec_menu("View = plot")

        # ######################   File to save: time.dat (time)
        py_v_time = [ t/1000 for t in h.v_time.to_python() ]  # Convert to Python list for speed...

        f_time_f2 = open('time.dat', 'w')
        num_points = len(py_v_time)  # Simulation may have been stopped before tstop...

        for i in range(num_points):
            f_time_f2.write('%f'% py_v_time[i])  # Save in SI units...+ '\n')
        f_time_f2.close()
        print("Saved data to: time.dat")

        # ######################   File to save: results/ex5_v.dat (of0)
        py_v_v_of0 = [ float(x  / 1000.0) for x in h.v_v_of0.to_python() ]  # Convert to Python list for speed, variable has dim: voltage

        f_of0_f2 = open('results/ex5_v.dat', 'w')
        num_points = len(py_v_time)  # Simulation may have been stopped before tstop...

        for i in range(num_points):
            f_of0_f2.write('%e\t'% py_v_time[i]  + '%e\t'%(py_v_v_of0[i]) + '\n')
        f_of0_f2.close()
        print("Saved data to: results/ex5_v.dat")

        # ######################   File to save: results/ex5_vars.dat (of1)
        py_v_m_of1 = [ float(x ) for x in h.v_m_of1.to_python() ]  # Convert to Python list for speed, variable has dim: none
        py_v_h_of1 = [ float(x ) for x in h.v_h_of1.to_python() ]  # Convert to Python list for speed, variable has dim: none
        py_v_n_of1 = [ float(x ) for x in h.v_n_of1.to_python() ]  # Convert to Python list for speed, variable has dim: none

        f_of1_f2 = open('results/ex5_vars.dat', 'w')
        num_points = len(py_v_time)  # Simulation may have been stopped before tstop...

        for i in range(num_points):
            f_of1_f2.write('%e\t'% py_v_time[i]  + '%e\t'%(py_v_m_of1[i])  + '%e\t'%(py_v_h_of1[i])  + '%e\t'%(py_v_n_of1[i]) + '\n')
        f_of1_f2.close()
        print("Saved data to: results/ex5_vars.dat")

        save_end = time.time()
        save_time = save_end - self.sim_end
        print("Finished saving results in %f seconds"%(save_time))

        print("Done")

if __name__ == '__main__':

    ns = NeuronSimulation(tstop=300, dt=0.01, seed=123456789)

    ns.run()

