# OUTPUT
set terminal pngcairo size 900,500 enhanced font "Helvetica,12"
set output "SW_figure.png"

# VIEW SETTINGS
unset key
set view map            # 2D color map from matrix
set pm3d map
#set size ratio -1       # keep aspect reasonable

#analytical
#J=
#gamma=
#mub=
#mu= *mub

set palette defined (0.0 0.0 0.0 0.3, \
                     0.2 0.0 0.4 0.8, \
                     0.5 0.2 0.7 0.6, \
                     0.8 0.8 0.8 0.1, \
                     1.0 1.0 1.0 0.0)


stats 'frequencies.dat' using 1 every ::1::1 nooutput
df = STATS_min*1e-12
print "frequency resolution = ", df , " Thz"
# define frequncy range you want to plot
#fmin = 0.0
#fmax = 5.0e+2/2
#set yrange [fmin:fmax]
set ylabel "Frequency (THz)"

#number of columns are automatic extracted 
ncols = system("wc -l kvectors.out | awk '{print $1}'") 
print "number of k points is ", ncols
# Map x to a normalized Γ(0) → X(1) path
set xrange [0:ncols]
set xlabel "Wave vector along path"

#You can define the path if you know the points of the path
#set xtics ("{/Symbol G}" 0, "X" ncols)
#set logscale cb
# Colorbar
set cblabel "Intensity (arb. units)"

# 'splot ... matrix' treats x = column index, y = row index.
# Axis ranges rescale these indices to your desired physical ranges.
# Example for y scale: ($2*dt)
splot "sw_spectrum.dat" matrix u 1:($2*df):3 with image
unset output
