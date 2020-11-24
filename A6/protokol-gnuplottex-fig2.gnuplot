set terminal epslatex color size 15cm, 10cm
set output 'protokol-gnuplottex-fig2.tex'
        f(x) = a * x + b
        fit f(x) 'data/scan.dat' using 4:(sqrt($1)):5:($2*0.5/sqrt($1)) xyerror via a,b

        set xlabel "$\\sqrt{E_0} \\; [\\U{GeV^{\\frac{1}{2}}}]$"
        set ylabel "$r \\; [\\U{GeV^{\\frac{1}{2}}}]$"

        plot 'data/scan.dat' skip 1 using 4:(sqrt($1)):5:($2*0.5/sqrt($1)) w xyerror t 'data', f(x) t 'afinní fit'
    
