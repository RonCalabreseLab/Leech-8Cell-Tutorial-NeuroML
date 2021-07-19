# Calabrese Lab Leech Tutorial, NeuroML Version #

This is an in-progress conversion of the
[Calabrese Lab 8-cell Leech Tutorial](http://www.biology.emory.edu/research/Calabrese/INTRO/INDEX.HTML) that
is described in paper by
[Hill et al 2001](http://www.biology.emory.edu/research/Calabrese/papers/Hill%20et%20al%202001%20J%20Compu%20Neuro.pdf) from the [Genesis simulator](http://genesis-sim.org/GENESIS) language to
a [NeuroML model description language](https://www.neuroml.org/home)
format. The original Genesis scripts can be found in the [`genesis-scripts`](genesis-scripts/) folder. 
The current version of the NeuroML v2 leech tutorial files can
be found under the [`NeuroML2`](NeuroML2/) folder. The current NeuroML
model can be exported to the [Neuron simulator](https://www.neuron.yale.edu) language and simulated.

## Running the model in jNeuroML

The model can be run directly
in [jNeuroML](https://github.com/NeuroML/jNeuroML) simulator v0.8.3
using one of the [LEMS model defitinion](http://lems.github.io/LEMS/)
files at the base directory:

```bash
jnml run_4cells_Vm.xml
```

This will load the model files under `NeuroML2` and produce the graphs
defined in the LEMS `.xml` files. See other LEMS files for different
run scenarios.

## Converting the model in Neuron

LEMS files that define the model and network can be converted to
Neuron HOC/Python format using:

```bash
jnml run_4cells_Vm.xml -neuron -outputdir Exports/Neuron-8cell/
```

Then, you would need to navigate to the output folder
`Exports/Neuron-8cell/`, and compile the MOD files for Neuron (only
once after conversion):

```bash
cd Exports/Neuron-8cell/
nrnivmodl
```

You can make multiple exports with different LEMS files. Just make
sure to use different export folders.

## Running the model in Neuron

Navigate to the desired exports folder and run Neuron (requires Python
version):

```bash
nrngui -python run_4cells_Vm_nrn.py
```

## Status of the model

Some discrepancies between neuron models exist, which may require fine tuning ion channels:

- [x] Verified that ionic current profiles [match with original Genesis model](NeuroML2/channel_graph_data/README.md)
- [ ] Verify [individual, isolated cell activity](NeuroML2/isolated_cells_graph). In particular, [Cell 3/4 are not behaving correctly](4LCurrents/).
- [ ] Verify network activity
- [ ] Slow synapses (SynS) that include membrane voltage modulation are
  not implemented because they require custom NeuroML components.

### Credits

- [Boima Reuben Massaquoi](https://www.linkedin.com/in/b-m-19099/), `<reubmann AT gmail.com>` - Functional NeuroML version, synapses
- [John Rose](https://www.linkedin.com/in/john-rose-42007612b/) - Initial NeuroML code with ion channels
- [Cengiz Gunay](https://www.linkedin.com/in/cengiz-gunay-5010a89/), [cengique @ GitHub](https://github.com/cengique), `<cengique AT users.sf.net>, <cgunay AT ggc.edu>` - Project lead and technical support, some bugfixes, and documentation
- [Ron Calabrese](http://www.biology.emory.edu/index.cfm?faculty=20) - Principal investigator and one of original Leech Tutorial authors
- Special thanks
  to [Padraig Gleeson](http://www.opensourcebrain.org/users/4) for
  help with NeuroML, recommendations, and fixing several bugs; and
  to [Ankur Singha](https://www.opensourcebrain.org/users/434) for
  help with documentation and NeuroFedora; and the [International Neuroinformatics Coordinating Facility (INCF)](https://summerofcode.withgoogle.com) organization for hosting our project.


### Future directions

* Participating in the
  2021 [Google Summer of Code (GSoC)](https://summerofcode.withgoogle.com)
  with project
  [Re-creating the Leech Heartbeat Network Model Tutorial using the Neuron Simulator in Python and NeuroML](https://summerofcode.withgoogle.com/projects/#6589927334084608) under the [International Neuroinformatics Coordinating Facility (INCF)](https://summerofcode.withgoogle.com) organization.
* Collaborate with [OpenSourceBrain](http://opensourcebrain.org)

