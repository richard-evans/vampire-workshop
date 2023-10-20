set terminal pngcairo size 600,400 font 'Helvetica, 20'
set xlabel 'T(K)'
set ylabel 'M/M_S'
set output 'Mvst.png'

p 'output' u 1:5 w lp pt 7 ps 1.5 notitle

set output 'temp.png'
set xlabel 'T_{in}(K)'
set ylabel 'T(K)'
f(x)=x
p 'output' u 1:6 w lp pt 7 ps 1.5 t 'T_S', '' u 1:7 w lp pt 7 ps 1.5 t 'T_L', f(x) w l lw 1.5 lc -1 notitle
