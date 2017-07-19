set terminal latex
set output "curve2.tex"

f(x) = a*x+b
fit [0:12] f(x) "Messwerte2.dat" via a,b

set xlabel "t in min"
set ylabel "$\log(A_v)$" offset -1,0

plot 'Messwerte2.dat' using 1:2 title "logarithmische Messwerte", f(x) with lines ls 1 title sprintf("f = %3.4f*t+%3.4f",a,b)

