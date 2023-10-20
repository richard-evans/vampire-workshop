set terminal pngcairo size 600,400 font 'Helvetica, 20'
set xlabel 'time (ps)'
set output 'nve_total_eng.png'

set ylabel 'Energy (a.u.)'

p 'output' u ($1/1e-12):($8+$9+$10+$11) w l lc - 1 lw 2  t 'E_T'

