from neuron import h, gui

h.load_file('cell_HN1L.hoc')
cell = h.cell_HN1L()
h.tstop = 300


#pnt = h.pulse_gen_hn1L(cell.x)
#pnt.loc(cell.x)


#pnt.delay = 50
#pnt.duration =150
#pnt.amplitude=12

#h('pnt.loc(o)')
#h('pnt.has_loc')
#h.o.Section
#h.pnt.delay(10)
#h.pulse_gen_hn1L().duration = 150
#h.pulse_gen_hn1L().amplitude = 120
#h.make_pointprocess('cell_L1','cellHN1L')


