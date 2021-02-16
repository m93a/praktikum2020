plot \
    for [i=0:15] \
    n=i/3 k=i%3+1 \
    'zprac2/all_peaks.dat' \
    using 1:($4==n && $5==k ? $2 : 0/0) \
    lt k*2+1 lc n*2+1 not

