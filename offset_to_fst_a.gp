set datafile separator ","
avg(a,b,c,d)=(a+b+c+d)/4
f(b,o)=avg(column(b),column(b+1),column(b+2),column(b+3))-column(b+o)
g(b,o)=column(b)-column(b+o)
set xrange [] noextend
unset ytics
set for [i=1:4] paxis i tics
set for [i=1:4] paxis i range [-8:8]

set multiplot layout 2,2 title "Tone (A)"
unset key

set title "A - first tone"
c=5; plot 'res_ftf.csv' using (g(c,0)):(g(c,1)):(g(c,2)):(g(c,3)) with parallel linecolor rgb "#EECC0000" linewidth 2
set title "A - second tone"
c=9; plot 'res_ftf.csv' using (g(c,0)):(g(c,1)):(g(c,2)):(g(c,3)) with parallel linecolor rgb "#EECC0000" linewidth 2
set title "A - third tone"
c=13; plot 'res_ftf.csv' using (g(c,0)):(g(c,1)):(g(c,2)):(g(c,3)) with parallel linecolor rgb "#EECC0000" linewidth 2
set title "A - fourth tone"
c=1; plot 'res_ftf.csv' using (g(c,0)):(g(c,1)):(g(c,2)):(g(c,3)) with parallel linecolor rgb "#EECC0000" linewidth 2
