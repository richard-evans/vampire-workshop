# Uniaxial anisotropy 

This folder contains some input files for running a constrained monte-carlo simulation (citation <sup name="cmc">[[1]](#cmc-ref)</sup>). This refers to the `cmc-anisotropy` program within vampire. 

You can copy these files to the `working` directory and run vampire there. This will give you an output file called `output`, the contents of which are defined by the input file. 

The temperature and angles sweep is multiplicative, each angle will be simulated at each temperature, so the input file as is takes ~50m on one core. You can try reducing the number of temperature steps for this section. 

Plotting this output should allow you see a total torque curve, sinusoidal with respect to angle from the easy axis, with higher temperatures having a lower magnitude. 


## <a name="cmc-ref">[1]</a>:Reference for the constrained monte carlo implementation. [^](#cmc)
```
  @article{PhysRevB.82.054415,
  title = {Constrained Monte Carlo method and calculation of the temperature dependence of magnetic anisotropy},
  author = {Asselin, P. and Evans, R. F. L. and Barker, J. and Chantrell, R. W. and Yanes, R. and Chubykalo-Fesenko, O. and Hinzke, D. and Nowak, U.},
  journal = {Phys. Rev. B},
  volume = {82},
  issue = {5},
  pages = {054415},
  numpages = {12},
  year = {2010},
  month = {Aug},
  publisher = {American Physical Society},
  doi = {10.1103/PhysRevB.82.054415},
  url = {https://link.aps.org/doi/10.1103/PhysRevB.82.054415}
}
```
