#!/bin/bash
run_folder=$PWD
rm -r Plots
mkdir Plots
for i in `seq 10 1 30`
do 

paste atoms-coords.data spins-000000$i.data > plot.data

cat <<EOF >plot.gnu
set terminal pngcairo size 1200,600 font "Helvetica,14" background rgb 'gray'
set output 'out_config.png'
set view 0,0
set size square
set cbrange [-1:1]
set xrange [-1:21]
set yrange [-1:21]
set palette defined (-1 "blue", 0 "white", 1 "red")
set xlabel "x";set ylabel "y"; set zlabel "z"
set multiplot layout 1,2 title 'Frame $i'
sp "plot.data" u 3:4:5:(\$6):(\$7):(\$8):8 w vectors palette lw 1.5 t 'M', '' u 3:4:5:8 w points palette pt 7 ps 1 t 'Mz'
set view 90,0
sp "plot.data" u 3:4:5:(\$6):(\$7):(\$8):8 w vectors palette lw 1.5 t 'M', '' u 3:4:5:8 w points palette pt 7 ps 1 t 'Mz'

unset multiplot
EOF
 
gnuplot plot.gnu
mv out_config.png Plots/config_$i'.png'



done 
