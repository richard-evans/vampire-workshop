# Bilayer material magnetisation

This folder contains input files for creating a bilayer material, and running a time series of monte-carlo steps to find an equilibrium state of the material. 

The output of this simulation includes the material dependent magnetisation. Each material in the system has its statistics calculated separately, allowing the output of each sub-lattices magnetisation. This is important for antiferromagnets, as the average magnetisation in equilibrium is zero, but each sublattice has a finite magnetisation (more information on generating antiferromagnets can be found in `3c_antiferromagnets`.

In this case, separating the magnetisation statistics by height or by material should give the same result, as each layer is a single material. 
