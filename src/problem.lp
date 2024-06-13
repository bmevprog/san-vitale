\ENCODING=ISO-8859-1
\Problem name: 

Maximize
 obj1: 0 tx_0 + 0 ty_0 + point_0_in_poly_0
Subject To
 c1: 42 sina_0 - 24 cosa_0 - 3 sinatx_0 + 3 cosaty_0
     + 2000000 point_0_in_poly_0 >= 2000000
 c2: 35 sina_0 + 25 cosa_0 - sinatx_0 - 3 cosatx_0 - 3 sinaty_0 + cosaty_0
     + 2000000 point_0_in_poly_0 >= 2000000
 c3: - 10 sina_0 + 30 cosa_0 + 2 sinatx_0 - 2 cosatx_0 - 2 sinaty_0
     - 2 cosaty_0 + 2000000 point_0_in_poly_0 >= 2000000
 c4: - 36 sina_0 + 9 cosa_0 + 3 sinatx_0 - 3 cosaty_0
     + 2000000 point_0_in_poly_0 >= 2000000
 c5: - 39 sina_0 - 39 cosa_0 + 2 sinatx_0 + 3 cosatx_0 + 3 sinaty_0
     - 2 cosaty_0 + 2000000 point_0_in_poly_0 >= 2000000
 c6: 39 sina_0 - 52 cosa_0 - 3 sinatx_0 + 2 cosatx_0 + 2 sinaty_0 + 3 cosaty_0
     + 2000000 point_0_in_poly_0 >= 2000000
 sinacosa_0: [ sina_0 ^2 + cosa_0 ^2 ]  = 1
 sinatx_0:   - sinatx_0 + [ tx_0 * sina_0 ]  = 0
 cosatx_0:   - cosatx_0 + [ tx_0 * cosa_0 ]  = 0
 sinaty_0:   - sinaty_0 + [ ty_0 * sina_0 ]  = 0
 cosaty_0:   - cosaty_0 + [ ty_0 * cosa_0 ]  = 0
Bounds
 0 <= point_0_in_poly_0 <= 1
Binaries
 point_0_in_poly_0 
End
