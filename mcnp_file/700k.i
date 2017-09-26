MCNP6 Pin Cell Representation of UWNR TRIGA Fuel
c --------------------- CELL CARD --------------------------------- c
1 3 -7.19 -101 -205 206 imp:n=1                                 $ Fuel
2 2 -8.0   101 -102 -205 206 imp:n=1                            $ Clad
3 1 -1.0   102 -201 202 -203 204 -205 206 imp:n=1               $ Mod
99 0       201:-202:203:-204:205:-206 imp:n=0                $ outside

c --------------------- SURFACE CARD ------------------------------ c
101  CZ  1.74117
102  CZ  1.79578
*201 PX  1.9431
*202 PX -1.9431
*203 PY  1.9431
*204 PY -1.9431
*205 PZ  0.5
*206 PZ -0.5 

c ---------------------- DATA CARD -------------------------------- c
burn  time=50 5R power=.3159 pfrac=0.001 5R bopt=1 14 -1          $Burnup_input
      mat= 3                                                           $burn_mat
      omit= -1 46  66159 67163 67164 67166 68163 68165 68169 69166    $burn_omit
         69167 69171 69172 69173 70168 70169 70170 70171 70172 70173  $burn_omit
         70174 6014 7016 39087 39092 39093 40089 40097 41091 41092    $burn_omit
         41096 41097 41098 41099 42091 42093 70175 70176 71173 71174  $burn_omit
         71177 72175 72181 72182 73179 73183 74179 74181              $burn_omit
m1                                                               $H2O
     1001.80c -1.1210e-01
     1002.80c -2.5766e-05
     8016.80c -8.8752e-01
     8017.80c -3.5930e-04
mt1 lwtr.21t                                                   $350K 
m2                                                             $SS304
     6012 -3.9536e-04
     6013 -4.6337e-06
     14028.80c -4.5933e-03
     14029.80c -2.4168e-04
     14030.80c -1.6499e-04
     15031.80c -2.3000e-04
     16032.80c -1.4207e-04
     16033.80c -1.1568e-06
     16034.80c -6.7533e-06
     16036.80c -1.6825e-08
     24050.80c -7.9299e-03
     24052.80c -1.5903e-01
     24053.80c -1.8380e-02
     24054.80c -4.6613e-03
     25055.80c -9.9999e-03
     26054.80c -3.9616e-02
     26056.80c -6.4489e-01
     26057.80c -1.5160e-02
     26058.80c -2.0529e-03
     28058.80c -6.2157e-02
     28060.80c -2.4767e-02
     28061.80c -1.0946e-03
     28062.80c -3.5473e-03
     28064.80c -9.3243e-04
m3                                                               $UZrH
     1001.80c -1.1408e-02
     6012 -4.8851e-03
     6013 -5.7253e-05
     40090.80c -3.4382e-01
     40091.80c -7.5814e-02
     40092.80c -1.1716e-01
     40094.80c -1.2131e-01
     40096.80c -1.9961e-02
     68162.80c -1.2073e-05
     68164.80c -1.4078e-04
     68166.80c -2.9819e-03
     68167.80c -2.0478e-03
     68168.80c -2.4302e-03
     68170.80c -1.3591e-03
     72174.80c -1.2412e-07
     72176.80c -4.1273e-06
     72177.80c -1.4678e-05
     72178.80c -2.1649e-05
     72179.80c -1.0870e-05
     72180.80c -2.8152e-05
     92234.80c -3.8533e-04
     92235.80c -5.8898e-02
     92236.80c -3.4080e-04
     92238.80c -2.3691e-01
mt3 zr/h.24t h/zr.24t                                           $700K
c
c Crit Card
kcode 150000 1 30 250
ksrc 0 0 0 
c
VOL 9.5242815272 0.606807542 4.971461371 0
c TALLIES
c
c Four Factor Formula Analysis
c
c Neutron reproduction Factor
c Groupwise Fission Production Rate in Fuel (numerator)
F4:n 1
E4 1E-6 10
FM4 -1 3 (-7 -6) (-6)
SD4 1
c Total neutron absorption in the fuel (denominator)
F14:n 1
E14 1E-6 10
FM14 -1 3 (-2 : -6)
SD14 1
c Total neutron absorption in non-fuel
F24:n 2
E24 1E-6 10
FM24 -1 2 -2
SD24 1
c
F34:n 3
E34 1E-6 10
FM34 -1 1 -2
SD34 1
c Flux Spectrum Tally
F44:n 1 2 3 T
E44 1E-9 75ILOG 1E-5 75ILOG 10
c
mode n
print
