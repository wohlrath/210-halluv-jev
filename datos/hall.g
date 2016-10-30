#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm
set output 'vstup.tex'

set title
set xlabel '$U_{BE}$ (\si{\volt})'
set ylabel '$I_B$ (\si{\milli\ampere})'
set grid x,y
set yrange[0:50]
set xrange[0:0.9]
set key top left
set key spacing 5

plot 'vstupinf' u 1:3:2:4 ls 1 lw 2 ps 5 with xyerrorbars title '$R = \infty$', 'vstup1000' u 1:3:2:4 ls 2 lw 2 ps 5 with xyerrorbars title '$R = \SI{1000}{\ohm}$', 'spline' u 1:3 ls 1 lw 3 smooth csplines notitle

set terminal wxt
set output
