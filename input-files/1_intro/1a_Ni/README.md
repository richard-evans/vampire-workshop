# Nickel

This folder contains some input files for running a temperature sweep of Ni. This refers to the `curie-temperature` program within vampire. 

You can copy these files to the `working` directory and run vampire there. This will give you an output file called `output`, the contents of which are defined by the input file. 

Plotting this output should allow you to see the phase transition at the Curie temperature.

The default input file for vampire is called `input`, but a different input file can be specified with the `--input-file <filename>` command line argument at runtime. 

You can use this flag now to run a temperature pulse simulation, the `two-temperature` program within vampire, by copying the `input_pulse` and `Ni.mat` file to the working directory, and running vampire with `--input-file input_pulse` as an argument. 
