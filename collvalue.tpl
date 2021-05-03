set terminal pngcairo size 800,600 enhanced font 'Verdana,10'
set output \"${graphImageLocation}\"
set key left bottom
set y2tics
set arrow from graph 0,first 0 to graph 1, first 0 nohead
set xdata time
set format x \"%d/%m/%y\"
set timefmt \"%Y.%m.%d\"

file=\"${collectionValueDataLocation}\";
plot file using 1:2 with lines title 'Minimum', file using 1:3 with lines title 'Median', file using 1:4 with lines title 'Maximum'
