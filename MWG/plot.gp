set terminal latex
set output "curve.tex"

f(x) = a*x + b
fit [0.001:0.0013] f(x) 'data.dat' via a,b

set xlabel "1/T"
set ylabel "ln K" offset -1,0


plot 'data.dat' title "K gemittelt", f(x) with lines ls 1 title sprintf("y = %3.4f*x %3.4f",a,b) 

