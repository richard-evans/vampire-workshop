# Field cooling 

This folder contains some input files for running a field cool simulation. This refers to the `field-cool` program within vampire. 

You can copy these files to the `working` directory and run vampire there. This will give you an output file called `output`, the contents of which are defined by the input file. 

This simulates cooling a material down from 30K to 0K and should result in the formation of skyrmions that you can visualise using the visualise.sh script. 

This set of inputs uses an explicit exchange matrix, contrasting with `3b_skyrmions_in_built_dmi` which uses the in built Dzyaloshinskii–Moriya interaction method.  
