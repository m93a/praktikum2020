set terminal epslatex color size 17cm, 8cm
set output 'protokol-gnuplottex-fig1.tex'
        set xrange [30:110]
        set xlabel '$2 \vartheta \; [\°]$'
        set ylabel '$I$'
        plot 'data-default/dataset021_Cu.dat' using (10 + $0*0.02):($1/100) w l not
    
