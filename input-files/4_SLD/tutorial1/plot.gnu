set terminal pngcairo size 800,400 font 'Helvetica, 20'
set xlabel 'time (ps)'
set x2label
set key bottom right
unset ytics
set yrange [0:12]
set ytics 0,2,12 axis
set output 'lattice_ms.png'

set ylabel 'T (K)' offset 2,0

set y2tics 0.01  tc lt 2 offset -1 border
set y2range [0.95:1]
set y2label 'M/M_S' tc lt 2 offset -3,0


p 'output' u ($1/1e-12):7 w l lc -1 lw 3  t 'T_L', '' u ($1/1e-12):6 w l lc rgb 'gray'  lw 3  t 'T_S', '' u ($1/1e-12):5 w l lw 3 lc 2 t 'M/M_S' axes x1y2
