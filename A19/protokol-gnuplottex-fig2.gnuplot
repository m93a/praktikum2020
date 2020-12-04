set terminal epslatex color size 6cm, 6cm
set output 'protokol-gnuplottex-fig2.tex'
        set datafile separator ','

        a=s=1
        f(x) = -s*x + a
        fit f(x) 'systematicka-chyba-data.csv' skip 1 via a,s

        set key left top
        set xlabel '$\cos\vartheta \, \cot\vartheta$'
        set ylabel '$a_{\rm e} \; [\U{Å}]$' offset 1.5,0,0
        set xrange [-0.2:1.5]
        set yrange [4.32:4.36]
        set xtics 0,0.5
        set ytics 4.32,0.01
        set lmargin 5
        set rmargin 0
        plot 'systematicka-chyba-data.csv' skip 1 t 'data', f(x) t 'fit'
    
