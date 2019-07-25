# Dipole fields

This folder contains some input files for running a time series LLG-Heun integration of a long cylinder of Cobalt with dipole field calculations enabled. 

Try running the simulation without and without the input lines beginnig with `dipole:`; you should notice that the dipole field calculations gives a different final spin configuration.

After this you can try changing the lines, choosing macrocell, tensor or atomistic for the solver, and changing the cutoff radius of dipole field interactions. 
```
dipole:solver=tensor
dipole:cutoff-radius
```

You should notice a signifcant change in the total run time for each of the solver methods.

| Accuracy | Speed | |
| ------------- | ------------- | -------------|
| Atomistic  | Macrocell| Higher
| Tensor | Tensor| \|\|
| Macrocell| Macrocell| Lower

