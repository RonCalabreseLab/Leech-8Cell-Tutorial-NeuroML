# Leech Heart Interneuron Timing Circuit Model and Tutorial by Andrew Hill, Steve Van Hooser, and Ron Calabrese.

These files contain GENESIS scripts for an 8-cell network model of the leech
heart interneuron beat timing circuit.

## Prerequisites 

To run the tutorial, you'll first need:

- The [GENESIS neural simulator](http://genesis-sim.org/GENESIS/)

    The official Genesis 2.3+ releases include required extensions to GENESIS (leech-libraries).

You can download and compile Genesis or use it from a pre-installed
Linux (via live USB or virtual machine), such as
[NeuroFedora](https://docs.fedoraproject.org/en-US/neurofedora/overview/).

## Running the tutorial

First, copy the GENESIS `.simrc` file (e.g., found at
`/usr/lib64/genesis/startup/.simrc` of the NeuroFedora mentioned
above) to the same directory as this README file.  

Then, start a terminal application and navigate to the same folder.
To start the tutorial, type:

```sh
genesis tutorial.g
```

This will allow the tutorial to find the support files it needs.

The tutorial has introductory material and help contained within it.
The introduction button will ask you to start a browser (default is
"firefox", but you can edit and change it). If you prefer, you can
also access the same material online at
[Calabrese Lab website](http://www.biology.emory.edu/research/Calabrese/INTRO/INDEX.HTML). You
should not need to access any of the material contained in the
"tutorial", "intro", or "model" directories directly--they merely
contain support files for the tutorial.

## Notes

Note 1:  You may want to make sure you have GENESIS working before running this
tutorial.  A quick test would be to run GENESIS with no command arguments to
make sure that it opens and shows a prompt.  You may have to copy the ".simrc"
file from the GENESIS/startup directory if you are using GENESIS for the first
time.

Note 2:  For technical reasons, loading a saved parameter set only works if 
you have write access to the tutorial directory.  If you do not have write
access to this directory, you'll need to either make a copy of the whole 
directory to a place where you have write access or modify the loadscript.g
function in the tutorial folder.  Instructions are given in the comments of
that file.

Note 3: This is a very minor technical point, but ...
When you run the tutorial, you will see a control panel.  The button marked RESET will 
execute the reset command as well as restore the state variables from an ascii file called 
start_state_asc.g.  It is necessary to restore the state variables in order for the model 
cells to oscillate properly.  Alternatively, the simulation may be started from a binary 
file by using the Init Cond. button. This method is more complete because some fields in 
genesis are hidden, preventing them from being accessed by the getfield or setfield commands. 

## References

This is a simplified version of the original README file modified 
in 2021. Original tutorial code and instructions are available on
the
[Calabrese Lab website](http://www.biology.emory.edu/research/Calabrese/software.html).
