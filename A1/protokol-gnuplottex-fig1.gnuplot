set terminal epslatex color size 9cm, 5cm
set output 'protokol-gnuplottex-fig1.tex'
        set datafile separator ','

        a = 1
        f(N) = a / sqrt(N)

        fit f(x) 'sirka-peak.csv' skip 1 via a
        plot 'sirka-peak.csv' skip 1 t 'data', f(x) t 'fit $a/\sqrt{N}$'
    
