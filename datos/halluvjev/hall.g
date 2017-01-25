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

#k25 = 223.184 +/- 1.315
f25(x) = k25*x
fit f25(x) 'hall' i 1 u 3:1 via k25

#k50 = 420.318 +/- 1.244
f50(x) = k50*x
fit f50(x) 'hall' i 0 u 3:1 via k50


plot 'hall' i 1 u 3:1 ls 1 ps 3 lw 2 title '$I_{12} = \SI{2.5}{\milli\ampere}$', f25(x) ls 1 lw 2 title '$U_H(\si{\milli\volt})=\num{223} \cdot B(\si{\tesla})$', 'hall' i 0 u 3:1 ls 2 ps 3 lw 2 title '$I_{12} = \SI{5.0}{\milli\ampere}$', f50(x) ls 2 lw 2 title '$U_H(\si{\milli\volt})=\num{420} \cdot B(\si{\tesla})$'

set terminal wxt
set output
