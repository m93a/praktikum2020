set macros

# sloupce souboru all_peaks:
# $1 = I, $2 = x, $3 = B, $4 = n, $5 = k

A = 1
B = 1
m = ''

do for [I=5:14] {
  do for [k=1:3] {
    m = sprintf( \
      '%s f_%d_%d(x) = A*(x-a_%d_%d)**2 + B; a_%d_%d = 1;', \
        m,   I, k,             I, k,            I, k \
    )
  }
}

@m
m = ''

do for [I=5:14] {
  do for [k=1:3] {
    m = m.sprintf('fit f_%d_%d(x) ', I, k)
    m = m.'"zprac2/all_peaks.dat" '
    m = m.sprintf( \
      'using 4:($1<%.1f && $1>%.1f && $5==%d ? $2 : 0/0) ', \
      I+0.5, I-0.5, k)
    m = m.sprintf('via A, B, a_%d_%d; ', I, k)
  }
}

@m
m = ''

set print 'zprac2/posuny_peaku.dat'
do for [I=5:14] {
  do for [k=1:3] {
    m = m.sprintf('print(sprintf("%s \t %s \t %d \t %d", a_%d_%d, a_%d_%d_err, I, k));', '%f', '%f', I, k, I, k, I, k)
  }
}

@m
