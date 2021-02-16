set terminal epslatex color size 14cm, 6cm
set output 'protokol-gnuplottex-fig6.tex'
        load 'kalibrace.plt'
        set datafile separator ','

        f(x) = a*x
        fit f(x) 'zprac2/lambdas.csv' using (B($1)):($4*0.0484*1000) via a

        set key top left
        set xlabel '$B\,[\!\U{T}]$'
        set ylabel '$\Delta\lambda \, [\!\U{pm}]$'
        set xrange [0.3:1]
        plot 'zprac2/lambdas.csv' using (B($1)):($4*0.0484*1000) t 'data', f(x) t 'fit'
    
