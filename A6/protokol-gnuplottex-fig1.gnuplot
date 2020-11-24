set terminal epslatex color size 15cm, 10cm
set output 'protokol-gnuplottex-fig1.tex'
        f(x) = a * x
        fit f(x) 'data/scan.dat' using 1:2:3 yerror via a

        set xrange [10:60]
        set yrange [0.2:2.4]
        set xlabel "$E_0 \\; [\\U{GeV}]$"
        set ylabel "$E_{\\mathrm d} \\; [\\U{MeV}]$"

        plot 'data/scan.dat' skip 1 using 1:2:3 w yerror t 'data', f(x) t 'lineární fit'
    
