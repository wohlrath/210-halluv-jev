#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm
set output 'vod.tex'

set title
set xlabel '$U_{34}$ (\si{\volt})'
set ylabel '$I_{12}$ (\si{\milli\ampere})'
set grid x,y
set yrange[0:6]
set xrange[0:2.5]
set key bottom right


#k = 2.12434 +/- 0.003123
f(x)=k*x
fit f(x) 'vod' u 3:1 via k

plot 'vod' u 3:1 ls 1 ps 3 lw 2 notitle, f(x) ls 1 lw 2 title '$I_{12}(\si{\milli\ampere})=\num{2.12434} \cdot U_{34}(\si{\volt})$'

set terminal wxt
set output