set terminal epslatex color size 15cm, 8cm
set output 'protokol-gnuplottex-fig1.tex'
        load 'kalibrace.plt'
        set key top left
        set xlabel '$I \, [\U{A}]$'
        set ylabel '$B \, [\U{T}]$'
        set format y '%.1f'

        set y2tics
        set y2range [0:10]
        set y2label '$\Delta B \, [\U{mT}]$'

        plot 'data/kalibrace_magnetu_Hallova_sonda.dat' using 1:($2/10) t 'data $B(I)$' lc rgb 'black', B(x) t 'fit $B(I)$' lc rgb 'red', 'data/kalibrace_magnetu_Hallova_sonda.dat' using 1:(1000*abs($2/10 - B($1))) axes x1y2 pt 4 t 'chyba $\Delta B$'
    
