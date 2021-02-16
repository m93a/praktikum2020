set terminal epslatex color size 7.5cm, 5cm
set output 'protokol-gnuplottex-fig7.tex'
        unset xtics
        unset ytics
        set yrange [35:260]
        set key bottom right
        plot 'zprac1/9A a.png_raw.dat' w l lc rgb 'black' t 'pozice A', 'zprac1/9A b.png_raw.dat' w l lc rgb 'red' t 'pozice B'
    
