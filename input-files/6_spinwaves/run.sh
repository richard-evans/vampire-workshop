#Example for parallel 
#mpirun -np 6 ./vampire-parallel
#Example for serial
./vampire-serial


#For plotting the Spin Wave
for i in 1; do  echo $i;
paste sw_spec_0"$i"_real_0* > sw_spectrum.dat | gnuplot plot_sw.gnu 
cp SW_figure.png SW_"$i"_figure.png ;
rm SW_figure.png
done

#bash visualise.sh
