set key top left

plot \
    'zprac1/'.file.'.png_raw.dat' w l t 'jas', \
    'zprac2/'.file.'.png_peaks.dat' using 1:2 \
        w p lc rgb "red" pt 7 t 'peaky', \
    'zprac2/'.file.'.png_peaks.dat' using 1:($2+10):\
        ('$'.($4 == 2 ? 'x' : $4 == 3 ? 'y' : 'z').sprintf('_%1d$',$3)) \
        w labels not