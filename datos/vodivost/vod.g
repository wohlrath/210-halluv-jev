#!/usr/bin/gnuplot

set terminal epslatex size 18cm,12cm
set output 'vod.tex'

set title
set xlabel '$U_{34}$ (\si{\volt})'
set ylabel '$I_{12}$ (\si{\milli\ampere})'
set grid x,y
set yrange[0:6]
set xrange[0:2.5]
set key top left
set key spacing 5


k=2.12433684
f(x)=k*x

plot 'vod' u 3:1:4:2 ls 1 lw 2 with xyerrorbars notitle, f(x) ls 2 lw 3 notitle

set terminal wxt
set output