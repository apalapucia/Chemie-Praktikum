set terminal latex
set output "curve.tex"

f(x) = a*exp(k*x)
fit [0:12] f(x) "Messwerte.dat" via a,k

set xlabel "t in min"
set ylabel "$A_v$" offset -1,0

plot 'Messwerte.dat' using 1:2 title "Messwerte", f(x) with lines ls 1 title sprintf("f = %3.4f*exp(%3.4f*t)",a,k)

