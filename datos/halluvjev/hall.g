#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm
set output 'hall.tex'

set title
set xlabel '$B$ (\si{\tesla})'
set ylabel '$U_H$ (\si{\milli\volt})'
set grid x,y
set yrange[0:170]
set xrange[0:0.450]
set key top left
set key spacing 5

R=0.0612761
t=0.00072
k50=R*0.005/t
k25=R*0.0025/t

f25(x) = k25*x*1000
f50(x) = k50*x*1000

plot 'hall' i 1 u 3:1:4:2 ls 1 lw 2 with xyerrorbars title '$I_{12} = \SI{2.5}{\milli\ampere}$', 'hall' i 0 u 3:1:4:2 ls 2 lw 2 with xyerrorbars title '$I_{12} = \SI{5.0}{\milli\ampere}$', f25(x) ls 1 lw 2 notitle, f50(x) ls 2 lw 2 notitle

set terminal wxt
set output
