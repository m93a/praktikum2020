a1 = .08; a2 = -.03; a3 = -.02; c1 = 8.9; c2 = 11.1
B(x) = a1*x + (x > c1 ? a2*(x-c1) : 0) + (x > c2 ? a3*(x-c2) : 0)
fit B(x) 'data/kalibrace_magnetu_Hallova_sonda.dat' \
    using 1:($2/10) via a1, a2, a3, c1, c2
