\ Model san-vitale
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  poly_1_spike_point_0_inside_0 + poly_1_spike_point_1_inside_0
   + poly_1_spike_point_2_inside_0 + poly_1_spike_point_3_inside_0
   + poly_1_spike_point_4_inside_0 + poly_1_spike_point_5_inside_0
   + poly_1_spike_point_6_inside_0 + poly_2_spike_point_0_inside_0
   + poly_2_spike_point_1_inside_0 + poly_2_spike_point_2_inside_0
   + poly_2_spike_point_3_inside_0 + poly_2_spike_point_4_inside_0
   + poly_2_spike_point_5_inside_0 + poly_2_spike_point_6_inside_0
   + poly_2_spike_point_7_inside_0 + poly_0_spike_point_0_inside_1
   + poly_0_spike_point_1_inside_1 + poly_0_spike_point_2_inside_1
   + poly_0_spike_point_3_inside_1 + poly_0_spike_point_4_inside_1
   + poly_0_spike_point_5_inside_1 + poly_0_spike_point_6_inside_1
   + poly_2_spike_point_0_inside_1 + poly_2_spike_point_1_inside_1
   + poly_2_spike_point_2_inside_1 + poly_2_spike_point_3_inside_1
   + poly_2_spike_point_4_inside_1 + poly_2_spike_point_5_inside_1
   + poly_2_spike_point_6_inside_1 + poly_2_spike_point_7_inside_1
   + poly_0_spike_point_0_inside_2 + poly_0_spike_point_1_inside_2
   + poly_0_spike_point_2_inside_2 + poly_0_spike_point_3_inside_2
   + poly_0_spike_point_4_inside_2 + poly_0_spike_point_5_inside_2
   + poly_0_spike_point_6_inside_2 + poly_1_spike_point_0_inside_2
   + poly_1_spike_point_1_inside_2 + poly_1_spike_point_2_inside_2
   + poly_1_spike_point_3_inside_2 + poly_1_spike_point_4_inside_2
   + poly_1_spike_point_5_inside_2 + poly_1_spike_point_6_inside_2
Subject To
 R0: poly_1_point_0_inside_0 - poly_1_point_0_inside_0_constraint_0_eq
   <= 0
 poly_1_point_0_inside_0_constraint_0_eq_true: 0.9761904761904772 sina_0
   - 4.535714285714287 cosa_0 + sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - cosa_ty_0 + 4.535714285714287 sina_0_sina_1
   - 0.9761904761904772 sina_0_cosa_1 + 0.9761904761904772 cosa_0_sina_1
   + 4.535714285714287 cosa_0_cosa_1 - sina_0_tx_1 - 2 sina_0_ty_1
   - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_point_0_inside_0_constraint_0_eq <= 2e+12
 poly_1_point_0_inside_0_constraint_0_eq_false: - 0.9761904761904772 sina_0
   + 4.535714285714287 cosa_0 - sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + cosa_ty_0 - 4.535714285714287 sina_0_sina_1
   + 0.9761904761904772 sina_0_cosa_1 - 0.9761904761904772 cosa_0_sina_1
   - 4.535714285714287 cosa_0_cosa_1 + sina_0_tx_1 + 2 sina_0_ty_1
   + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_point_0_inside_0_constraint_0_eq <= 0
 R3: - poly_1_point_0_inside_0 + poly_1_point_0_inside_0_constraint_0_eq
   <= 0
 R4: poly_1_point_0_inside_0 = 0
 R5: poly_1_point_1_inside_0 - poly_1_point_1_inside_0_constraint_0_eq
   <= 0
 poly_1_point_1_inside_0_constraint_0_eq_true: 0.9761904761904772 sina_0
   - 4.535714285714287 cosa_0 + sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - cosa_ty_0 + 4.535714285714287 sina_0_sina_1
   + 4.023809523809523 sina_0_cosa_1 - 4.023809523809523 cosa_0_sina_1
   + 4.535714285714287 cosa_0_cosa_1 - sina_0_tx_1 - 2 sina_0_ty_1
   - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_point_1_inside_0_constraint_0_eq <= 2e+12
 poly_1_point_1_inside_0_constraint_0_eq_false: - 0.9761904761904772 sina_0
   + 4.535714285714287 cosa_0 - sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + cosa_ty_0 - 4.535714285714287 sina_0_sina_1
   - 4.023809523809523 sina_0_cosa_1 + 4.023809523809523 cosa_0_sina_1
   - 4.535714285714287 cosa_0_cosa_1 + sina_0_tx_1 + 2 sina_0_ty_1
   + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_point_1_inside_0_constraint_0_eq <= 0
 R8: - poly_1_point_1_inside_0 + poly_1_point_1_inside_0_constraint_0_eq
   <= 0
 R9: poly_1_point_1_inside_0 = 0
 R10: poly_1_point_2_inside_0 - poly_1_point_2_inside_0_constraint_0_eq
   <= 0
 poly_1_point_2_inside_0_constraint_0_eq_true: 0.9761904761904772 sina_0
   - 4.535714285714287 cosa_0 + sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - cosa_ty_0 + 1.535714285714287 sina_0_sina_1
   + 5.023809523809523 sina_0_cosa_1 - 5.023809523809523 cosa_0_sina_1
   + 1.535714285714287 cosa_0_cosa_1 - sina_0_tx_1 - 2 sina_0_ty_1
   - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_point_2_inside_0_constraint_0_eq <= 2e+12
 poly_1_point_2_inside_0_constraint_0_eq_false: - 0.9761904761904772 sina_0
   + 4.535714285714287 cosa_0 - sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + cosa_ty_0 - 1.535714285714287 sina_0_sina_1
   - 5.023809523809523 sina_0_cosa_1 + 5.023809523809523 cosa_0_sina_1
   - 1.535714285714287 cosa_0_cosa_1 + sina_0_tx_1 + 2 sina_0_ty_1
   + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_point_2_inside_0_constraint_0_eq <= 0
 R13: - poly_1_point_2_inside_0 + poly_1_point_2_inside_0_constraint_0_eq
   <= 0
 R14: poly_1_point_2_inside_0 = 0
 R15: poly_1_point_3_inside_0 - poly_1_point_3_inside_0_constraint_0_eq
   <= 0
 poly_1_point_3_inside_0_constraint_0_eq_true: 0.9761904761904772 sina_0
   - 4.535714285714287 cosa_0 + sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - cosa_ty_0 - 4.464285714285713 sina_0_sina_1
   + 2.023809523809523 sina_0_cosa_1 - 2.023809523809523 cosa_0_sina_1
   - 4.464285714285713 cosa_0_cosa_1 - sina_0_tx_1 - 2 sina_0_ty_1
   - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_point_3_inside_0_constraint_0_eq <= 2e+12
 poly_1_point_3_inside_0_constraint_0_eq_false: - 0.9761904761904772 sina_0
   + 4.535714285714287 cosa_0 - sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + cosa_ty_0 + 4.464285714285713 sina_0_sina_1
   - 2.023809523809523 sina_0_cosa_1 + 2.023809523809523 cosa_0_sina_1
   + 4.464285714285713 cosa_0_cosa_1 + sina_0_tx_1 + 2 sina_0_ty_1
   + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_point_3_inside_0_constraint_0_eq <= 0
 R18: - poly_1_point_3_inside_0 + poly_1_point_3_inside_0_constraint_0_eq
   <= 0
 R19: poly_1_point_3_inside_0 = 0
 R20: poly_1_point_4_inside_0 - poly_1_point_4_inside_0_constraint_0_eq
   <= 0
 poly_1_point_4_inside_0_constraint_0_eq_true: 0.9761904761904772 sina_0
   - 4.535714285714287 cosa_0 + sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - cosa_ty_0 - 5.464285714285713 sina_0_sina_1
   - 0.9761904761904772 sina_0_cosa_1 + 0.9761904761904772 cosa_0_sina_1
   - 5.464285714285713 cosa_0_cosa_1 - sina_0_tx_1 - 2 sina_0_ty_1
   - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_point_4_inside_0_constraint_0_eq <= 2e+12
 poly_1_point_4_inside_0_constraint_0_eq_false: - 0.9761904761904772 sina_0
   + 4.535714285714287 cosa_0 - sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + cosa_ty_0 + 5.464285714285713 sina_0_sina_1
   + 0.9761904761904772 sina_0_cosa_1 - 0.9761904761904772 cosa_0_sina_1
   + 5.464285714285713 cosa_0_cosa_1 + sina_0_tx_1 + 2 sina_0_ty_1
   + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_point_4_inside_0_constraint_0_eq <= 0
 R23: - poly_1_point_4_inside_0 + poly_1_point_4_inside_0_constraint_0_eq
   <= 0
 R24: poly_1_point_4_inside_0 = 0
 R25: poly_1_point_5_inside_0 - poly_1_point_5_inside_0_constraint_0_eq
   <= 0
 poly_1_point_5_inside_0_constraint_0_eq_true: 0.9761904761904772 sina_0
   - 4.535714285714287 cosa_0 + sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - cosa_ty_0 - 0.4642857142857126 sina_0_sina_1
   - 5.976190476190477 sina_0_cosa_1 + 5.976190476190477 cosa_0_sina_1
   - 0.4642857142857126 cosa_0_cosa_1 - sina_0_tx_1 - 2 sina_0_ty_1
   - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_point_5_inside_0_constraint_0_eq <= 2e+12
 poly_1_point_5_inside_0_constraint_0_eq_false: - 0.9761904761904772 sina_0
   + 4.535714285714287 cosa_0 - sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + cosa_ty_0 + 0.4642857142857126 sina_0_sina_1
   + 5.976190476190477 sina_0_cosa_1 - 5.976190476190477 cosa_0_sina_1
   + 0.4642857142857126 cosa_0_cosa_1 + sina_0_tx_1 + 2 sina_0_ty_1
   + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_point_5_inside_0_constraint_0_eq <= 0
 R28: - poly_1_point_5_inside_0 + poly_1_point_5_inside_0_constraint_0_eq
   <= 0
 R29: poly_1_point_5_inside_0 = 0
 R30: poly_1_point_6_inside_0 - poly_1_point_6_inside_0_constraint_0_eq
   <= 0
 poly_1_point_6_inside_0_constraint_0_eq_true: 0.9761904761904772 sina_0
   - 4.535714285714287 cosa_0 + sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - cosa_ty_0 + 4.535714285714287 sina_0_sina_1
   - 0.9761904761904772 sina_0_cosa_1 + 0.9761904761904772 cosa_0_sina_1
   + 4.535714285714287 cosa_0_cosa_1 - sina_0_tx_1 - 2 sina_0_ty_1
   - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_point_6_inside_0_constraint_0_eq <= 2e+12
 poly_1_point_6_inside_0_constraint_0_eq_false: - 0.9761904761904772 sina_0
   + 4.535714285714287 cosa_0 - sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + cosa_ty_0 - 4.535714285714287 sina_0_sina_1
   + 0.9761904761904772 sina_0_cosa_1 - 0.9761904761904772 cosa_0_sina_1
   - 4.535714285714287 cosa_0_cosa_1 + sina_0_tx_1 + 2 sina_0_ty_1
   + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_point_6_inside_0_constraint_0_eq <= 0
 R33: - poly_1_point_6_inside_0 + poly_1_point_6_inside_0_constraint_0_eq
   <= 0
 R34: poly_1_point_6_inside_0 = 0
 R35: poly_1_spike_point_0_inside_0
   - poly_1_spike_point_0_inside_0_constraint_0_eq <= 0
 poly_1_spike_point_0_inside_0_constraint_0_eq_true:
   0.9761904761904772 sina_0 - 4.535714285714287 cosa_0 + sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - cosa_ty_0
   + 5.335714285714287 sina_0_sina_1 - 1.076190476190478 sina_0_cosa_1
   + 1.076190476190478 cosa_0_sina_1 + 5.335714285714287 cosa_0_cosa_1
   - sina_0_tx_1 - 2 sina_0_ty_1 - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_spike_point_0_inside_0_constraint_0_eq <= 2e+12
 poly_1_spike_point_0_inside_0_constraint_0_eq_false:
   - 0.9761904761904772 sina_0 + 4.535714285714287 cosa_0 - sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + cosa_ty_0
   - 5.335714285714287 sina_0_sina_1 + 1.076190476190478 sina_0_cosa_1
   - 1.076190476190478 cosa_0_sina_1 - 5.335714285714287 cosa_0_cosa_1
   + sina_0_tx_1 + 2 sina_0_ty_1 + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_spike_point_0_inside_0_constraint_0_eq <= 0
 R38: - poly_1_spike_point_0_inside_0
   + poly_1_spike_point_0_inside_0_constraint_0_eq <= 0
 R39: poly_1_spike_point_1_inside_0
   - poly_1_spike_point_1_inside_0_constraint_0_eq <= 0
 poly_1_spike_point_1_inside_0_constraint_0_eq_true:
   0.9761904761904772 sina_0 - 4.535714285714287 cosa_0 + sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - cosa_ty_0
   + 5.335714285714287 sina_0_sina_1 + 4.923809523809522 sina_0_cosa_1
   - 4.923809523809522 cosa_0_sina_1 + 5.335714285714287 cosa_0_cosa_1
   - sina_0_tx_1 - 2 sina_0_ty_1 - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_spike_point_1_inside_0_constraint_0_eq <= 2e+12
 poly_1_spike_point_1_inside_0_constraint_0_eq_false:
   - 0.9761904761904772 sina_0 + 4.535714285714287 cosa_0 - sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + cosa_ty_0
   - 5.335714285714287 sina_0_sina_1 - 4.923809523809522 sina_0_cosa_1
   + 4.923809523809522 cosa_0_sina_1 - 5.335714285714287 cosa_0_cosa_1
   + sina_0_tx_1 + 2 sina_0_ty_1 + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_spike_point_1_inside_0_constraint_0_eq <= 0
 R42: - poly_1_spike_point_1_inside_0
   + poly_1_spike_point_1_inside_0_constraint_0_eq <= 0
 R43: poly_1_spike_point_2_inside_0
   - poly_1_spike_point_2_inside_0_constraint_0_eq <= 0
 poly_1_spike_point_2_inside_0_constraint_0_eq_true:
   0.9761904761904772 sina_0 - 4.535714285714287 cosa_0 + sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - cosa_ty_0
   + 1.735714285714287 sina_0_sina_1 + 6.123809523809522 sina_0_cosa_1
   - 6.123809523809522 cosa_0_sina_1 + 1.735714285714287 cosa_0_cosa_1
   - sina_0_tx_1 - 2 sina_0_ty_1 - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_spike_point_2_inside_0_constraint_0_eq <= 2e+12
 poly_1_spike_point_2_inside_0_constraint_0_eq_false:
   - 0.9761904761904772 sina_0 + 4.535714285714287 cosa_0 - sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + cosa_ty_0
   - 1.735714285714287 sina_0_sina_1 - 6.123809523809522 sina_0_cosa_1
   + 6.123809523809522 cosa_0_sina_1 - 1.735714285714287 cosa_0_cosa_1
   + sina_0_tx_1 + 2 sina_0_ty_1 + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_spike_point_2_inside_0_constraint_0_eq <= 0
 R46: - poly_1_spike_point_2_inside_0
   + poly_1_spike_point_2_inside_0_constraint_0_eq <= 0
 R47: poly_1_spike_point_3_inside_0
   - poly_1_spike_point_3_inside_0_constraint_0_eq <= 0
 poly_1_spike_point_3_inside_0_constraint_0_eq_true:
   0.9761904761904772 sina_0 - 4.535714285714287 cosa_0 + sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - cosa_ty_0
   - 5.464285714285713 sina_0_sina_1 + 2.523809523809523 sina_0_cosa_1
   - 2.523809523809523 cosa_0_sina_1 - 5.464285714285713 cosa_0_cosa_1
   - sina_0_tx_1 - 2 sina_0_ty_1 - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_spike_point_3_inside_0_constraint_0_eq <= 2e+12
 poly_1_spike_point_3_inside_0_constraint_0_eq_false:
   - 0.9761904761904772 sina_0 + 4.535714285714287 cosa_0 - sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + cosa_ty_0
   + 5.464285714285713 sina_0_sina_1 - 2.523809523809523 sina_0_cosa_1
   + 2.523809523809523 cosa_0_sina_1 + 5.464285714285713 cosa_0_cosa_1
   + sina_0_tx_1 + 2 sina_0_ty_1 + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_spike_point_3_inside_0_constraint_0_eq <= 0
 R50: - poly_1_spike_point_3_inside_0
   + poly_1_spike_point_3_inside_0_constraint_0_eq <= 0
 R51: poly_1_spike_point_4_inside_0
   - poly_1_spike_point_4_inside_0_constraint_0_eq <= 0
 poly_1_spike_point_4_inside_0_constraint_0_eq_true:
   0.9761904761904772 sina_0 - 4.535714285714287 cosa_0 + sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - cosa_ty_0
   - 6.664285714285712 sina_0_sina_1 - 1.076190476190477 sina_0_cosa_1
   + 1.076190476190477 cosa_0_sina_1 - 6.664285714285712 cosa_0_cosa_1
   - sina_0_tx_1 - 2 sina_0_ty_1 - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_spike_point_4_inside_0_constraint_0_eq <= 2e+12
 poly_1_spike_point_4_inside_0_constraint_0_eq_false:
   - 0.9761904761904772 sina_0 + 4.535714285714287 cosa_0 - sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + cosa_ty_0
   + 6.664285714285712 sina_0_sina_1 + 1.076190476190477 sina_0_cosa_1
   - 1.076190476190477 cosa_0_sina_1 + 6.664285714285712 cosa_0_cosa_1
   + sina_0_tx_1 + 2 sina_0_ty_1 + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_spike_point_4_inside_0_constraint_0_eq <= 0
 R54: - poly_1_spike_point_4_inside_0
   + poly_1_spike_point_4_inside_0_constraint_0_eq <= 0
 R55: poly_1_spike_point_5_inside_0
   - poly_1_spike_point_5_inside_0_constraint_0_eq <= 0
 poly_1_spike_point_5_inside_0_constraint_0_eq_true:
   0.9761904761904772 sina_0 - 4.535714285714287 cosa_0 + sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - cosa_ty_0
   - 0.6642857142857128 sina_0_sina_1 - 7.076190476190477 sina_0_cosa_1
   + 7.076190476190477 cosa_0_sina_1 - 0.6642857142857128 cosa_0_cosa_1
   - sina_0_tx_1 - 2 sina_0_ty_1 - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_spike_point_5_inside_0_constraint_0_eq <= 2e+12
 poly_1_spike_point_5_inside_0_constraint_0_eq_false:
   - 0.9761904761904772 sina_0 + 4.535714285714287 cosa_0 - sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + cosa_ty_0
   + 0.6642857142857128 sina_0_sina_1 + 7.076190476190477 sina_0_cosa_1
   - 7.076190476190477 cosa_0_sina_1 + 0.6642857142857128 cosa_0_cosa_1
   + sina_0_tx_1 + 2 sina_0_ty_1 + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_spike_point_5_inside_0_constraint_0_eq <= 0
 R58: - poly_1_spike_point_5_inside_0
   + poly_1_spike_point_5_inside_0_constraint_0_eq <= 0
 R59: poly_1_spike_point_6_inside_0
   - poly_1_spike_point_6_inside_0_constraint_0_eq <= 0
 poly_1_spike_point_6_inside_0_constraint_0_eq_true:
   0.9761904761904772 sina_0 - 4.535714285714287 cosa_0 + sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - cosa_ty_0
   + 5.335714285714287 sina_0_sina_1 - 1.076190476190478 sina_0_cosa_1
   + 1.076190476190478 cosa_0_sina_1 + 5.335714285714287 cosa_0_cosa_1
   - sina_0_tx_1 - 2 sina_0_ty_1 - 2 cosa_0_tx_1 + cosa_0_ty_1
   + 2e+12 poly_1_spike_point_6_inside_0_constraint_0_eq <= 2e+12
 poly_1_spike_point_6_inside_0_constraint_0_eq_false:
   - 0.9761904761904772 sina_0 + 4.535714285714287 cosa_0 - sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + cosa_ty_0
   - 5.335714285714287 sina_0_sina_1 + 1.076190476190478 sina_0_cosa_1
   - 1.076190476190478 cosa_0_sina_1 - 5.335714285714287 cosa_0_cosa_1
   + sina_0_tx_1 + 2 sina_0_ty_1 + 2 cosa_0_tx_1 - cosa_0_ty_1
   - 2e+12 poly_1_spike_point_6_inside_0_constraint_0_eq <= 0
 R62: - poly_1_spike_point_6_inside_0
   + poly_1_spike_point_6_inside_0_constraint_0_eq <= 0
 R63: poly_2_point_0_inside_0 - poly_2_point_0_inside_0_constraint_0_eq
   <= 0
 poly_2_point_0_inside_0_constraint_0_eq_true: 3.849462365591399 sina_0
   - 4.494623655913979 cosa_0 + 2 sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - 2 cosa_ty_0 + 4.494623655913979 sina_0_sina_2
   - 3.849462365591399 sina_0_cosa_2 + 3.849462365591399 cosa_0_sina_2
   + 4.494623655913979 cosa_0_cosa_2 - 2 sina_0_tx_2 - 2 sina_0_ty_2
   - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_point_0_inside_0_constraint_0_eq <= 2e+12
 poly_2_point_0_inside_0_constraint_0_eq_false: - 3.849462365591399 sina_0
   + 4.494623655913979 cosa_0 - 2 sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + 2 cosa_ty_0 - 4.494623655913979 sina_0_sina_2
   + 3.849462365591399 sina_0_cosa_2 - 3.849462365591399 cosa_0_sina_2
   - 4.494623655913979 cosa_0_cosa_2 + 2 sina_0_tx_2 + 2 sina_0_ty_2
   + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_point_0_inside_0_constraint_0_eq <= 0
 R66: - poly_2_point_0_inside_0 + poly_2_point_0_inside_0_constraint_0_eq
   <= 0
 R67: poly_2_point_0_inside_0 = 0
 R68: poly_2_point_1_inside_0 - poly_2_point_1_inside_0_constraint_0_eq
   <= 0
 poly_2_point_1_inside_0_constraint_0_eq_true: 3.849462365591399 sina_0
   - 4.494623655913979 cosa_0 + 2 sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - 2 cosa_ty_0 + 4.494623655913979 sina_0_sina_2
   + 4.150537634408601 sina_0_cosa_2 - 4.150537634408601 cosa_0_sina_2
   + 4.494623655913979 cosa_0_cosa_2 - 2 sina_0_tx_2 - 2 sina_0_ty_2
   - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_point_1_inside_0_constraint_0_eq <= 2e+12
 poly_2_point_1_inside_0_constraint_0_eq_false: - 3.849462365591399 sina_0
   + 4.494623655913979 cosa_0 - 2 sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + 2 cosa_ty_0 - 4.494623655913979 sina_0_sina_2
   - 4.150537634408601 sina_0_cosa_2 + 4.150537634408601 cosa_0_sina_2
   - 4.494623655913979 cosa_0_cosa_2 + 2 sina_0_tx_2 + 2 sina_0_ty_2
   + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_point_1_inside_0_constraint_0_eq <= 0
 R71: - poly_2_point_1_inside_0 + poly_2_point_1_inside_0_constraint_0_eq
   <= 0
 R72: poly_2_point_1_inside_0 = 0
 R73: poly_2_point_2_inside_0 - poly_2_point_2_inside_0_constraint_0_eq
   <= 0
 poly_2_point_2_inside_0_constraint_0_eq_true: 3.849462365591399 sina_0
   - 4.494623655913979 cosa_0 + 2 sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - 2 cosa_ty_0 + 2.494623655913979 sina_0_sina_2
   + 10.1505376344086 sina_0_cosa_2 - 10.1505376344086 cosa_0_sina_2
   + 2.494623655913979 cosa_0_cosa_2 - 2 sina_0_tx_2 - 2 sina_0_ty_2
   - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_point_2_inside_0_constraint_0_eq <= 2e+12
 poly_2_point_2_inside_0_constraint_0_eq_false: - 3.849462365591399 sina_0
   + 4.494623655913979 cosa_0 - 2 sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + 2 cosa_ty_0 - 2.494623655913979 sina_0_sina_2
   - 10.1505376344086 sina_0_cosa_2 + 10.1505376344086 cosa_0_sina_2
   - 2.494623655913979 cosa_0_cosa_2 + 2 sina_0_tx_2 + 2 sina_0_ty_2
   + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_point_2_inside_0_constraint_0_eq <= 0
 R76: - poly_2_point_2_inside_0 + poly_2_point_2_inside_0_constraint_0_eq
   <= 0
 R77: poly_2_point_2_inside_0 = 0
 R78: poly_2_point_3_inside_0 - poly_2_point_3_inside_0_constraint_0_eq
   <= 0
 poly_2_point_3_inside_0_constraint_0_eq_true: 3.849462365591399 sina_0
   - 4.494623655913979 cosa_0 + 2 sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - 2 cosa_ty_0 - 3.505376344086021 sina_0_sina_2
   + 4.150537634408601 sina_0_cosa_2 - 4.150537634408601 cosa_0_sina_2
   - 3.505376344086021 cosa_0_cosa_2 - 2 sina_0_tx_2 - 2 sina_0_ty_2
   - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_point_3_inside_0_constraint_0_eq <= 2e+12
 poly_2_point_3_inside_0_constraint_0_eq_false: - 3.849462365591399 sina_0
   + 4.494623655913979 cosa_0 - 2 sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + 2 cosa_ty_0 + 3.505376344086021 sina_0_sina_2
   - 4.150537634408601 sina_0_cosa_2 + 4.150537634408601 cosa_0_sina_2
   + 3.505376344086021 cosa_0_cosa_2 + 2 sina_0_tx_2 + 2 sina_0_ty_2
   + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_point_3_inside_0_constraint_0_eq <= 0
 R81: - poly_2_point_3_inside_0 + poly_2_point_3_inside_0_constraint_0_eq
   <= 0
 R82: poly_2_point_3_inside_0 = 0
 R83: poly_2_point_4_inside_0 - poly_2_point_4_inside_0_constraint_0_eq
   <= 0
 poly_2_point_4_inside_0_constraint_0_eq_true: 3.849462365591399 sina_0
   - 4.494623655913979 cosa_0 + 2 sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - 2 cosa_ty_0 - 5.505376344086021 sina_0_sina_2
   - 1.849462365591399 sina_0_cosa_2 + 1.849462365591399 cosa_0_sina_2
   - 5.505376344086021 cosa_0_cosa_2 - 2 sina_0_tx_2 - 2 sina_0_ty_2
   - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_point_4_inside_0_constraint_0_eq <= 2e+12
 poly_2_point_4_inside_0_constraint_0_eq_false: - 3.849462365591399 sina_0
   + 4.494623655913979 cosa_0 - 2 sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + 2 cosa_ty_0 + 5.505376344086021 sina_0_sina_2
   + 1.849462365591399 sina_0_cosa_2 - 1.849462365591399 cosa_0_sina_2
   + 5.505376344086021 cosa_0_cosa_2 + 2 sina_0_tx_2 + 2 sina_0_ty_2
   + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_point_4_inside_0_constraint_0_eq <= 0
 R86: - poly_2_point_4_inside_0 + poly_2_point_4_inside_0_constraint_0_eq
   <= 0
 R87: poly_2_point_4_inside_0 = 0
 R88: poly_2_point_5_inside_0 - poly_2_point_5_inside_0_constraint_0_eq
   <= 0
 poly_2_point_5_inside_0_constraint_0_eq_true: 3.849462365591399 sina_0
   - 4.494623655913979 cosa_0 + 2 sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - 2 cosa_ty_0 - 3.505376344086021 sina_0_sina_2
   - 7.849462365591399 sina_0_cosa_2 + 7.849462365591399 cosa_0_sina_2
   - 3.505376344086021 cosa_0_cosa_2 - 2 sina_0_tx_2 - 2 sina_0_ty_2
   - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_point_5_inside_0_constraint_0_eq <= 2e+12
 poly_2_point_5_inside_0_constraint_0_eq_false: - 3.849462365591399 sina_0
   + 4.494623655913979 cosa_0 - 2 sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + 2 cosa_ty_0 + 3.505376344086021 sina_0_sina_2
   + 7.849462365591399 sina_0_cosa_2 - 7.849462365591399 cosa_0_sina_2
   + 3.505376344086021 cosa_0_cosa_2 + 2 sina_0_tx_2 + 2 sina_0_ty_2
   + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_point_5_inside_0_constraint_0_eq <= 0
 R91: - poly_2_point_5_inside_0 + poly_2_point_5_inside_0_constraint_0_eq
   <= 0
 R92: poly_2_point_5_inside_0 = 0
 R93: poly_2_point_6_inside_0 - poly_2_point_6_inside_0_constraint_0_eq
   <= 0
 poly_2_point_6_inside_0_constraint_0_eq_true: 3.849462365591399 sina_0
   - 4.494623655913979 cosa_0 + 2 sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - 2 cosa_ty_0 + 0.4946236559139789 sina_0_sina_2
   - 7.849462365591399 sina_0_cosa_2 + 7.849462365591399 cosa_0_sina_2
   + 0.4946236559139789 cosa_0_cosa_2 - 2 sina_0_tx_2 - 2 sina_0_ty_2
   - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_point_6_inside_0_constraint_0_eq <= 2e+12
 poly_2_point_6_inside_0_constraint_0_eq_false: - 3.849462365591399 sina_0
   + 4.494623655913979 cosa_0 - 2 sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + 2 cosa_ty_0 - 0.4946236559139789 sina_0_sina_2
   + 7.849462365591399 sina_0_cosa_2 - 7.849462365591399 cosa_0_sina_2
   - 0.4946236559139789 cosa_0_cosa_2 + 2 sina_0_tx_2 + 2 sina_0_ty_2
   + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_point_6_inside_0_constraint_0_eq <= 0
 R96: - poly_2_point_6_inside_0 + poly_2_point_6_inside_0_constraint_0_eq
   <= 0
 R97: poly_2_point_6_inside_0 = 0
 R98: poly_2_point_7_inside_0 - poly_2_point_7_inside_0_constraint_0_eq
   <= 0
 poly_2_point_7_inside_0_constraint_0_eq_true: 3.849462365591399 sina_0
   - 4.494623655913979 cosa_0 + 2 sina_tx_0 + 2 cosa_tx_0 + 2 sina_ty_0
   - 2 cosa_ty_0 + 4.494623655913979 sina_0_sina_2
   - 3.849462365591399 sina_0_cosa_2 + 3.849462365591399 cosa_0_sina_2
   + 4.494623655913979 cosa_0_cosa_2 - 2 sina_0_tx_2 - 2 sina_0_ty_2
   - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_point_7_inside_0_constraint_0_eq <= 2e+12
 poly_2_point_7_inside_0_constraint_0_eq_false: - 3.849462365591399 sina_0
   + 4.494623655913979 cosa_0 - 2 sina_tx_0 - 2 cosa_tx_0 - 2 sina_ty_0
   + 2 cosa_ty_0 - 4.494623655913979 sina_0_sina_2
   + 3.849462365591399 sina_0_cosa_2 - 3.849462365591399 cosa_0_sina_2
   - 4.494623655913979 cosa_0_cosa_2 + 2 sina_0_tx_2 + 2 sina_0_ty_2
   + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_point_7_inside_0_constraint_0_eq <= 0
 R101: - poly_2_point_7_inside_0 + poly_2_point_7_inside_0_constraint_0_eq
   <= 0
 R102: poly_2_point_7_inside_0 = 0
 R103: poly_2_spike_point_0_inside_0
   - poly_2_spike_point_0_inside_0_constraint_0_eq <= 0
 poly_2_spike_point_0_inside_0_constraint_0_eq_true:
   3.849462365591399 sina_0 - 4.494623655913979 cosa_0 + 2 sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - 2 cosa_ty_0
   + 5.294623655913979 sina_0_sina_2 - 4.649462365591399 sina_0_cosa_2
   + 4.649462365591399 cosa_0_sina_2 + 5.294623655913979 cosa_0_cosa_2
   - 2 sina_0_tx_2 - 2 sina_0_ty_2 - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_spike_point_0_inside_0_constraint_0_eq <= 2e+12
 poly_2_spike_point_0_inside_0_constraint_0_eq_false:
   - 3.849462365591399 sina_0 + 4.494623655913979 cosa_0 - 2 sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + 2 cosa_ty_0
   - 5.294623655913979 sina_0_sina_2 + 4.649462365591399 sina_0_cosa_2
   - 4.649462365591399 cosa_0_sina_2 - 5.294623655913979 cosa_0_cosa_2
   + 2 sina_0_tx_2 + 2 sina_0_ty_2 + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_spike_point_0_inside_0_constraint_0_eq <= 0
 R106: - poly_2_spike_point_0_inside_0
   + poly_2_spike_point_0_inside_0_constraint_0_eq <= 0
 R107: poly_2_spike_point_1_inside_0
   - poly_2_spike_point_1_inside_0_constraint_0_eq <= 0
 poly_2_spike_point_1_inside_0_constraint_0_eq_true:
   3.849462365591399 sina_0 - 4.494623655913979 cosa_0 + 2 sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - 2 cosa_ty_0
   + 5.294623655913979 sina_0_sina_2 + 4.950537634408601 sina_0_cosa_2
   - 4.950537634408601 cosa_0_sina_2 + 5.294623655913979 cosa_0_cosa_2
   - 2 sina_0_tx_2 - 2 sina_0_ty_2 - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_spike_point_1_inside_0_constraint_0_eq <= 2e+12
 poly_2_spike_point_1_inside_0_constraint_0_eq_false:
   - 3.849462365591399 sina_0 + 4.494623655913979 cosa_0 - 2 sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + 2 cosa_ty_0
   - 5.294623655913979 sina_0_sina_2 - 4.950537634408601 sina_0_cosa_2
   + 4.950537634408601 cosa_0_sina_2 - 5.294623655913979 cosa_0_cosa_2
   + 2 sina_0_tx_2 + 2 sina_0_ty_2 + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_spike_point_1_inside_0_constraint_0_eq <= 0
 R110: - poly_2_spike_point_1_inside_0
   + poly_2_spike_point_1_inside_0_constraint_0_eq <= 0
 R111: poly_2_spike_point_2_inside_0
   - poly_2_spike_point_2_inside_0_constraint_0_eq <= 0
 poly_2_spike_point_2_inside_0_constraint_0_eq_true:
   3.849462365591399 sina_0 - 4.494623655913979 cosa_0 + 2 sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - 2 cosa_ty_0
   + 2.894623655913978 sina_0_sina_2 + 12.1505376344086 sina_0_cosa_2
   - 12.1505376344086 cosa_0_sina_2 + 2.894623655913978 cosa_0_cosa_2
   - 2 sina_0_tx_2 - 2 sina_0_ty_2 - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_spike_point_2_inside_0_constraint_0_eq <= 2e+12
 poly_2_spike_point_2_inside_0_constraint_0_eq_false:
   - 3.849462365591399 sina_0 + 4.494623655913979 cosa_0 - 2 sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + 2 cosa_ty_0
   - 2.894623655913978 sina_0_sina_2 - 12.1505376344086 sina_0_cosa_2
   + 12.1505376344086 cosa_0_sina_2 - 2.894623655913978 cosa_0_cosa_2
   + 2 sina_0_tx_2 + 2 sina_0_ty_2 + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_spike_point_2_inside_0_constraint_0_eq <= 0
 R114: - poly_2_spike_point_2_inside_0
   + poly_2_spike_point_2_inside_0_constraint_0_eq <= 0
 R115: poly_2_spike_point_3_inside_0
   - poly_2_spike_point_3_inside_0_constraint_0_eq <= 0
 poly_2_spike_point_3_inside_0_constraint_0_eq_true:
   3.849462365591399 sina_0 - 4.494623655913979 cosa_0 + 2 sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - 2 cosa_ty_0
   - 4.305376344086021 sina_0_sina_2 + 4.950537634408601 sina_0_cosa_2
   - 4.950537634408601 cosa_0_sina_2 - 4.305376344086021 cosa_0_cosa_2
   - 2 sina_0_tx_2 - 2 sina_0_ty_2 - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_spike_point_3_inside_0_constraint_0_eq <= 2e+12
 poly_2_spike_point_3_inside_0_constraint_0_eq_false:
   - 3.849462365591399 sina_0 + 4.494623655913979 cosa_0 - 2 sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + 2 cosa_ty_0
   + 4.305376344086021 sina_0_sina_2 - 4.950537634408601 sina_0_cosa_2
   + 4.950537634408601 cosa_0_sina_2 + 4.305376344086021 cosa_0_cosa_2
   + 2 sina_0_tx_2 + 2 sina_0_ty_2 + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_spike_point_3_inside_0_constraint_0_eq <= 0
 R118: - poly_2_spike_point_3_inside_0
   + poly_2_spike_point_3_inside_0_constraint_0_eq <= 0
 R119: poly_2_spike_point_4_inside_0
   - poly_2_spike_point_4_inside_0_constraint_0_eq <= 0
 poly_2_spike_point_4_inside_0_constraint_0_eq_true:
   3.849462365591399 sina_0 - 4.494623655913979 cosa_0 + 2 sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - 2 cosa_ty_0
   - 6.705376344086021 sina_0_sina_2 - 2.249462365591399 sina_0_cosa_2
   + 2.249462365591399 cosa_0_sina_2 - 6.705376344086021 cosa_0_cosa_2
   - 2 sina_0_tx_2 - 2 sina_0_ty_2 - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_spike_point_4_inside_0_constraint_0_eq <= 2e+12
 poly_2_spike_point_4_inside_0_constraint_0_eq_false:
   - 3.849462365591399 sina_0 + 4.494623655913979 cosa_0 - 2 sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + 2 cosa_ty_0
   + 6.705376344086021 sina_0_sina_2 + 2.249462365591399 sina_0_cosa_2
   - 2.249462365591399 cosa_0_sina_2 + 6.705376344086021 cosa_0_cosa_2
   + 2 sina_0_tx_2 + 2 sina_0_ty_2 + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_spike_point_4_inside_0_constraint_0_eq <= 0
 R122: - poly_2_spike_point_4_inside_0
   + poly_2_spike_point_4_inside_0_constraint_0_eq <= 0
 R123: poly_2_spike_point_5_inside_0
   - poly_2_spike_point_5_inside_0_constraint_0_eq <= 0
 poly_2_spike_point_5_inside_0_constraint_0_eq_true:
   3.849462365591399 sina_0 - 4.494623655913979 cosa_0 + 2 sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - 2 cosa_ty_0
   - 4.305376344086021 sina_0_sina_2 - 9.449462365591399 sina_0_cosa_2
   + 9.449462365591399 cosa_0_sina_2 - 4.305376344086021 cosa_0_cosa_2
   - 2 sina_0_tx_2 - 2 sina_0_ty_2 - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_spike_point_5_inside_0_constraint_0_eq <= 2e+12
 poly_2_spike_point_5_inside_0_constraint_0_eq_false:
   - 3.849462365591399 sina_0 + 4.494623655913979 cosa_0 - 2 sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + 2 cosa_ty_0
   + 4.305376344086021 sina_0_sina_2 + 9.449462365591399 sina_0_cosa_2
   - 9.449462365591399 cosa_0_sina_2 + 4.305376344086021 cosa_0_cosa_2
   + 2 sina_0_tx_2 + 2 sina_0_ty_2 + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_spike_point_5_inside_0_constraint_0_eq <= 0
 R126: - poly_2_spike_point_5_inside_0
   + poly_2_spike_point_5_inside_0_constraint_0_eq <= 0
 R127: poly_2_spike_point_6_inside_0
   - poly_2_spike_point_6_inside_0_constraint_0_eq <= 0
 poly_2_spike_point_6_inside_0_constraint_0_eq_true:
   3.849462365591399 sina_0 - 4.494623655913979 cosa_0 + 2 sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - 2 cosa_ty_0
   + 0.4946236559139789 sina_0_sina_2 - 9.449462365591398 sina_0_cosa_2
   + 9.449462365591398 cosa_0_sina_2 + 0.4946236559139789 cosa_0_cosa_2
   - 2 sina_0_tx_2 - 2 sina_0_ty_2 - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_spike_point_6_inside_0_constraint_0_eq <= 2e+12
 poly_2_spike_point_6_inside_0_constraint_0_eq_false:
   - 3.849462365591399 sina_0 + 4.494623655913979 cosa_0 - 2 sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + 2 cosa_ty_0
   - 0.4946236559139789 sina_0_sina_2 + 9.449462365591398 sina_0_cosa_2
   - 9.449462365591398 cosa_0_sina_2 - 0.4946236559139789 cosa_0_cosa_2
   + 2 sina_0_tx_2 + 2 sina_0_ty_2 + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_spike_point_6_inside_0_constraint_0_eq <= 0
 R130: - poly_2_spike_point_6_inside_0
   + poly_2_spike_point_6_inside_0_constraint_0_eq <= 0
 R131: poly_2_spike_point_7_inside_0
   - poly_2_spike_point_7_inside_0_constraint_0_eq <= 0
 poly_2_spike_point_7_inside_0_constraint_0_eq_true:
   3.849462365591399 sina_0 - 4.494623655913979 cosa_0 + 2 sina_tx_0
   + 2 cosa_tx_0 + 2 sina_ty_0 - 2 cosa_ty_0
   + 5.294623655913979 sina_0_sina_2 - 4.649462365591399 sina_0_cosa_2
   + 4.649462365591399 cosa_0_sina_2 + 5.294623655913979 cosa_0_cosa_2
   - 2 sina_0_tx_2 - 2 sina_0_ty_2 - 2 cosa_0_tx_2 + 2 cosa_0_ty_2
   + 2e+12 poly_2_spike_point_7_inside_0_constraint_0_eq <= 2e+12
 poly_2_spike_point_7_inside_0_constraint_0_eq_false:
   - 3.849462365591399 sina_0 + 4.494623655913979 cosa_0 - 2 sina_tx_0
   - 2 cosa_tx_0 - 2 sina_ty_0 + 2 cosa_ty_0
   - 5.294623655913979 sina_0_sina_2 + 4.649462365591399 sina_0_cosa_2
   - 4.649462365591399 cosa_0_sina_2 - 5.294623655913979 cosa_0_cosa_2
   + 2 sina_0_tx_2 + 2 sina_0_ty_2 + 2 cosa_0_tx_2 - 2 cosa_0_ty_2
   - 2e+12 poly_2_spike_point_7_inside_0_constraint_0_eq <= 0
 R134: - poly_2_spike_point_7_inside_0
   + poly_2_spike_point_7_inside_0_constraint_0_eq <= 0
 R135: poly_0_point_0_inside_1 - poly_0_point_0_inside_1_constraint_0_eq
   <= 0
 poly_0_point_0_inside_1_constraint_0_eq_true: 5.571428571428571 sina_1
   - 5.642857142857144 cosa_1 + 3 sina_tx_1 - 3 cosa_ty_1
   + 5.642857142857144 sina_0_sina_1 + 5.571428571428571 sina_0_cosa_1
   - 5.571428571428571 cosa_0_sina_1 + 5.642857142857144 cosa_0_cosa_1
   - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_point_0_inside_1_constraint_0_eq <= 2e+12
 poly_0_point_0_inside_1_constraint_0_eq_false: - 5.571428571428571 sina_1
   + 5.642857142857144 cosa_1 - 3 sina_tx_1 + 3 cosa_ty_1
   - 5.642857142857144 sina_0_sina_1 - 5.571428571428571 sina_0_cosa_1
   + 5.571428571428571 cosa_0_sina_1 - 5.642857142857144 cosa_0_cosa_1
   + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_point_0_inside_1_constraint_0_eq <= 0
 R138: - poly_0_point_0_inside_1 + poly_0_point_0_inside_1_constraint_0_eq
   <= 0
 R139: poly_0_point_0_inside_1 = 0
 R140: poly_0_point_1_inside_1 - poly_0_point_1_inside_1_constraint_0_eq
   <= 0
 poly_0_point_1_inside_1_constraint_0_eq_true: 5.571428571428571 sina_1
   - 5.642857142857144 cosa_1 + 3 sina_tx_1 - 3 cosa_ty_1
   + 5.642857142857144 sina_0_sina_1 - 3.428571428571428 sina_0_cosa_1
   + 3.428571428571428 cosa_0_sina_1 + 5.642857142857144 cosa_0_cosa_1
   - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_point_1_inside_1_constraint_0_eq <= 2e+12
 poly_0_point_1_inside_1_constraint_0_eq_false: - 5.571428571428571 sina_1
   + 5.642857142857144 cosa_1 - 3 sina_tx_1 + 3 cosa_ty_1
   - 5.642857142857144 sina_0_sina_1 + 3.428571428571428 sina_0_cosa_1
   - 3.428571428571428 cosa_0_sina_1 - 5.642857142857144 cosa_0_cosa_1
   + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_point_1_inside_1_constraint_0_eq <= 0
 R143: - poly_0_point_1_inside_1 + poly_0_point_1_inside_1_constraint_0_eq
   <= 0
 R144: poly_0_point_1_inside_1 = 0
 R145: poly_0_point_2_inside_1 - poly_0_point_2_inside_1_constraint_0_eq
   <= 0
 poly_0_point_2_inside_1_constraint_0_eq_true: 5.571428571428571 sina_1
   - 5.642857142857144 cosa_1 + 3 sina_tx_1 - 3 cosa_ty_1
   - 0.3571428571428559 sina_0_sina_1 - 6.428571428571429 sina_0_cosa_1
   + 6.428571428571429 cosa_0_sina_1 - 0.3571428571428559 cosa_0_cosa_1
   - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_point_2_inside_1_constraint_0_eq <= 2e+12
 poly_0_point_2_inside_1_constraint_0_eq_false: - 5.571428571428571 sina_1
   + 5.642857142857144 cosa_1 - 3 sina_tx_1 + 3 cosa_ty_1
   + 0.3571428571428559 sina_0_sina_1 + 6.428571428571429 sina_0_cosa_1
   - 6.428571428571429 cosa_0_sina_1 + 0.3571428571428559 cosa_0_cosa_1
   + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_point_2_inside_1_constraint_0_eq <= 0
 R148: - poly_0_point_2_inside_1 + poly_0_point_2_inside_1_constraint_0_eq
   <= 0
 R149: poly_0_point_2_inside_1 = 0
 R150: poly_0_point_3_inside_1 - poly_0_point_3_inside_1_constraint_0_eq
   <= 0
 poly_0_point_3_inside_1_constraint_0_eq_true: 5.571428571428571 sina_1
   - 5.642857142857144 cosa_1 + 3 sina_tx_1 - 3 cosa_ty_1
   - 9.357142857142856 sina_0_sina_1 - 3.428571428571428 sina_0_cosa_1
   + 3.428571428571428 cosa_0_sina_1 - 9.357142857142856 cosa_0_cosa_1
   - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_point_3_inside_1_constraint_0_eq <= 2e+12
 poly_0_point_3_inside_1_constraint_0_eq_false: - 5.571428571428571 sina_1
   + 5.642857142857144 cosa_1 - 3 sina_tx_1 + 3 cosa_ty_1
   + 9.357142857142856 sina_0_sina_1 + 3.428571428571428 sina_0_cosa_1
   - 3.428571428571428 cosa_0_sina_1 + 9.357142857142856 cosa_0_cosa_1
   + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_point_3_inside_1_constraint_0_eq <= 0
 R153: - poly_0_point_3_inside_1 + poly_0_point_3_inside_1_constraint_0_eq
   <= 0
 R154: poly_0_point_3_inside_1 = 0
 R155: poly_0_point_4_inside_1 - poly_0_point_4_inside_1_constraint_0_eq
   <= 0
 poly_0_point_4_inside_1_constraint_0_eq_true: 5.571428571428571 sina_1
   - 5.642857142857144 cosa_1 + 3 sina_tx_1 - 3 cosa_ty_1
   - 3.357142857142856 sina_0_sina_1 + 2.571428571428572 sina_0_cosa_1
   - 2.571428571428572 cosa_0_sina_1 - 3.357142857142856 cosa_0_cosa_1
   - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_point_4_inside_1_constraint_0_eq <= 2e+12
 poly_0_point_4_inside_1_constraint_0_eq_false: - 5.571428571428571 sina_1
   + 5.642857142857144 cosa_1 - 3 sina_tx_1 + 3 cosa_ty_1
   + 3.357142857142856 sina_0_sina_1 - 2.571428571428572 sina_0_cosa_1
   + 2.571428571428572 cosa_0_sina_1 + 3.357142857142856 cosa_0_cosa_1
   + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_point_4_inside_1_constraint_0_eq <= 0
 R158: - poly_0_point_4_inside_1 + poly_0_point_4_inside_1_constraint_0_eq
   <= 0
 R159: poly_0_point_4_inside_1 = 0
 R160: poly_0_point_5_inside_1 - poly_0_point_5_inside_1_constraint_0_eq
   <= 0
 poly_0_point_5_inside_1_constraint_0_eq_true: 5.571428571428571 sina_1
   - 5.642857142857144 cosa_1 + 3 sina_tx_1 - 3 cosa_ty_1
   + 2.642857142857144 sina_0_sina_1 + 8.571428571428571 sina_0_cosa_1
   - 8.571428571428571 cosa_0_sina_1 + 2.642857142857144 cosa_0_cosa_1
   - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_point_5_inside_1_constraint_0_eq <= 2e+12
 poly_0_point_5_inside_1_constraint_0_eq_false: - 5.571428571428571 sina_1
   + 5.642857142857144 cosa_1 - 3 sina_tx_1 + 3 cosa_ty_1
   - 2.642857142857144 sina_0_sina_1 - 8.571428571428571 sina_0_cosa_1
   + 8.571428571428571 cosa_0_sina_1 - 2.642857142857144 cosa_0_cosa_1
   + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_point_5_inside_1_constraint_0_eq <= 0
 R163: - poly_0_point_5_inside_1 + poly_0_point_5_inside_1_constraint_0_eq
   <= 0
 R164: poly_0_point_5_inside_1 = 0
 R165: poly_0_point_6_inside_1 - poly_0_point_6_inside_1_constraint_0_eq
   <= 0
 poly_0_point_6_inside_1_constraint_0_eq_true: 5.571428571428571 sina_1
   - 5.642857142857144 cosa_1 + 3 sina_tx_1 - 3 cosa_ty_1
   + 5.642857142857144 sina_0_sina_1 + 5.571428571428571 sina_0_cosa_1
   - 5.571428571428571 cosa_0_sina_1 + 5.642857142857144 cosa_0_cosa_1
   - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_point_6_inside_1_constraint_0_eq <= 2e+12
 poly_0_point_6_inside_1_constraint_0_eq_false: - 5.571428571428571 sina_1
   + 5.642857142857144 cosa_1 - 3 sina_tx_1 + 3 cosa_ty_1
   - 5.642857142857144 sina_0_sina_1 - 5.571428571428571 sina_0_cosa_1
   + 5.571428571428571 cosa_0_sina_1 - 5.642857142857144 cosa_0_cosa_1
   + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_point_6_inside_1_constraint_0_eq <= 0
 R168: - poly_0_point_6_inside_1 + poly_0_point_6_inside_1_constraint_0_eq
   <= 0
 R169: poly_0_point_6_inside_1 = 0
 R170: poly_0_spike_point_0_inside_1
   - poly_0_spike_point_0_inside_1_constraint_0_eq <= 0
 poly_0_spike_point_0_inside_1_constraint_0_eq_true:
   5.571428571428571 sina_1 - 5.642857142857144 cosa_1 + 3 sina_tx_1
   - 3 cosa_ty_1 + 7.142857142857144 sina_0_sina_1
   + 6.471428571428572 sina_0_cosa_1 - 6.471428571428572 cosa_0_sina_1
   + 7.142857142857144 cosa_0_cosa_1 - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_spike_point_0_inside_1_constraint_0_eq <= 2e+12
 poly_0_spike_point_0_inside_1_constraint_0_eq_false:
   - 5.571428571428571 sina_1 + 5.642857142857144 cosa_1 - 3 sina_tx_1
   + 3 cosa_ty_1 - 7.142857142857144 sina_0_sina_1
   - 6.471428571428572 sina_0_cosa_1 + 6.471428571428572 cosa_0_sina_1
   - 7.142857142857144 cosa_0_cosa_1 + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_spike_point_0_inside_1_constraint_0_eq <= 0
 R173: - poly_0_spike_point_0_inside_1
   + poly_0_spike_point_0_inside_1_constraint_0_eq <= 0
 R174: poly_0_spike_point_1_inside_1
   - poly_0_spike_point_1_inside_1_constraint_0_eq <= 0
 poly_0_spike_point_1_inside_1_constraint_0_eq_true:
   5.571428571428571 sina_1 - 5.642857142857144 cosa_1 + 3 sina_tx_1
   - 3 cosa_ty_1 + 7.142857142857144 sina_0_sina_1
   - 4.328571428571427 sina_0_cosa_1 + 4.328571428571427 cosa_0_sina_1
   + 7.142857142857144 cosa_0_cosa_1 - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_spike_point_1_inside_1_constraint_0_eq <= 2e+12
 poly_0_spike_point_1_inside_1_constraint_0_eq_false:
   - 5.571428571428571 sina_1 + 5.642857142857144 cosa_1 - 3 sina_tx_1
   + 3 cosa_ty_1 - 7.142857142857144 sina_0_sina_1
   + 4.328571428571427 sina_0_cosa_1 - 4.328571428571427 cosa_0_sina_1
   - 7.142857142857144 cosa_0_cosa_1 + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_spike_point_1_inside_1_constraint_0_eq <= 0
 R177: - poly_0_spike_point_1_inside_1
   + poly_0_spike_point_1_inside_1_constraint_0_eq <= 0
 R178: poly_0_spike_point_2_inside_1
   - poly_0_spike_point_2_inside_1_constraint_0_eq <= 0
 poly_0_spike_point_2_inside_1_constraint_0_eq_true:
   5.571428571428571 sina_1 - 5.642857142857144 cosa_1 + 3 sina_tx_1
   - 3 cosa_ty_1 - 0.0571428571428559 sina_0_sina_1
   - 7.928571428571429 sina_0_cosa_1 + 7.928571428571429 cosa_0_sina_1
   - 0.0571428571428559 cosa_0_cosa_1 - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_spike_point_2_inside_1_constraint_0_eq <= 2e+12
 poly_0_spike_point_2_inside_1_constraint_0_eq_false:
   - 5.571428571428571 sina_1 + 5.642857142857144 cosa_1 - 3 sina_tx_1
   + 3 cosa_ty_1 + 0.0571428571428559 sina_0_sina_1
   + 7.928571428571429 sina_0_cosa_1 - 7.928571428571429 cosa_0_sina_1
   + 0.0571428571428559 cosa_0_cosa_1 + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_spike_point_2_inside_1_constraint_0_eq <= 0
 R181: - poly_0_spike_point_2_inside_1
   + poly_0_spike_point_2_inside_1_constraint_0_eq <= 0
 R182: poly_0_spike_point_3_inside_1
   - poly_0_spike_point_3_inside_1_constraint_0_eq <= 0
 poly_0_spike_point_3_inside_1_constraint_0_eq_true:
   5.571428571428571 sina_1 - 5.642857142857144 cosa_1 + 3 sina_tx_1
   - 3 cosa_ty_1 - 10.85714285714285 sina_0_sina_1
   - 4.328571428571427 sina_0_cosa_1 + 4.328571428571427 cosa_0_sina_1
   - 10.85714285714285 cosa_0_cosa_1 - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_spike_point_3_inside_1_constraint_0_eq <= 2e+12
 poly_0_spike_point_3_inside_1_constraint_0_eq_false:
   - 5.571428571428571 sina_1 + 5.642857142857144 cosa_1 - 3 sina_tx_1
   + 3 cosa_ty_1 + 10.85714285714285 sina_0_sina_1
   + 4.328571428571427 sina_0_cosa_1 - 4.328571428571427 cosa_0_sina_1
   + 10.85714285714285 cosa_0_cosa_1 + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_spike_point_3_inside_1_constraint_0_eq <= 0
 R185: - poly_0_spike_point_3_inside_1
   + poly_0_spike_point_3_inside_1_constraint_0_eq <= 0
 R186: poly_0_spike_point_4_inside_1
   - poly_0_spike_point_4_inside_1_constraint_0_eq <= 0
 poly_0_spike_point_4_inside_1_constraint_0_eq_true:
   5.571428571428571 sina_1 - 5.642857142857144 cosa_1 + 3 sina_tx_1
   - 3 cosa_ty_1 - 3.657142857142856 sina_0_sina_1
   + 2.871428571428572 sina_0_cosa_1 - 2.871428571428572 cosa_0_sina_1
   - 3.657142857142856 cosa_0_cosa_1 - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_spike_point_4_inside_1_constraint_0_eq <= 2e+12
 poly_0_spike_point_4_inside_1_constraint_0_eq_false:
   - 5.571428571428571 sina_1 + 5.642857142857144 cosa_1 - 3 sina_tx_1
   + 3 cosa_ty_1 + 3.657142857142856 sina_0_sina_1
   - 2.871428571428572 sina_0_cosa_1 + 2.871428571428572 cosa_0_sina_1
   + 3.657142857142856 cosa_0_cosa_1 + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_spike_point_4_inside_1_constraint_0_eq <= 0
 R189: - poly_0_spike_point_4_inside_1
   + poly_0_spike_point_4_inside_1_constraint_0_eq <= 0
 R190: poly_0_spike_point_5_inside_1
   - poly_0_spike_point_5_inside_1_constraint_0_eq <= 0
 poly_0_spike_point_5_inside_1_constraint_0_eq_true:
   5.571428571428571 sina_1 - 5.642857142857144 cosa_1 + 3 sina_tx_1
   - 3 cosa_ty_1 + 3.542857142857144 sina_0_sina_1
   + 10.07142857142857 sina_0_cosa_1 - 10.07142857142857 cosa_0_sina_1
   + 3.542857142857144 cosa_0_cosa_1 - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_spike_point_5_inside_1_constraint_0_eq <= 2e+12
 poly_0_spike_point_5_inside_1_constraint_0_eq_false:
   - 5.571428571428571 sina_1 + 5.642857142857144 cosa_1 - 3 sina_tx_1
   + 3 cosa_ty_1 - 3.542857142857144 sina_0_sina_1
   - 10.07142857142857 sina_0_cosa_1 + 10.07142857142857 cosa_0_sina_1
   - 3.542857142857144 cosa_0_cosa_1 + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_spike_point_5_inside_1_constraint_0_eq <= 0
 R193: - poly_0_spike_point_5_inside_1
   + poly_0_spike_point_5_inside_1_constraint_0_eq <= 0
 R194: poly_0_spike_point_6_inside_1
   - poly_0_spike_point_6_inside_1_constraint_0_eq <= 0
 poly_0_spike_point_6_inside_1_constraint_0_eq_true:
   5.571428571428571 sina_1 - 5.642857142857144 cosa_1 + 3 sina_tx_1
   - 3 cosa_ty_1 + 7.142857142857144 sina_0_sina_1
   + 6.471428571428572 sina_0_cosa_1 - 6.471428571428572 cosa_0_sina_1
   + 7.142857142857144 cosa_0_cosa_1 - 3 sina_1_tx_0 + 3 cosa_1_ty_0
   + 2e+12 poly_0_spike_point_6_inside_1_constraint_0_eq <= 2e+12
 poly_0_spike_point_6_inside_1_constraint_0_eq_false:
   - 5.571428571428571 sina_1 + 5.642857142857144 cosa_1 - 3 sina_tx_1
   + 3 cosa_ty_1 - 7.142857142857144 sina_0_sina_1
   - 6.471428571428572 sina_0_cosa_1 + 6.471428571428572 cosa_0_sina_1
   - 7.142857142857144 cosa_0_cosa_1 + 3 sina_1_tx_0 - 3 cosa_1_ty_0
   - 2e+12 poly_0_spike_point_6_inside_1_constraint_0_eq <= 0
 R197: - poly_0_spike_point_6_inside_1
   + poly_0_spike_point_6_inside_1_constraint_0_eq <= 0
 R198: poly_2_point_0_inside_1 - poly_2_point_0_inside_1_constraint_0_eq
   <= 0
 poly_2_point_0_inside_1_constraint_0_eq_true: 3.849462365591399 sina_1
   - 4.494623655913979 cosa_1 + 2 sina_tx_1 + 2 cosa_tx_1 + 2 sina_ty_1
   - 2 cosa_ty_1 + 4.494623655913979 sina_1_sina_2
   - 3.849462365591399 sina_1_cosa_2 + 3.849462365591399 cosa_1_sina_2
   + 4.494623655913979 cosa_1_cosa_2 - 2 sina_1_tx_2 - 2 sina_1_ty_2
   - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_point_0_inside_1_constraint_0_eq <= 2e+12
 poly_2_point_0_inside_1_constraint_0_eq_false: - 3.849462365591399 sina_1
   + 4.494623655913979 cosa_1 - 2 sina_tx_1 - 2 cosa_tx_1 - 2 sina_ty_1
   + 2 cosa_ty_1 - 4.494623655913979 sina_1_sina_2
   + 3.849462365591399 sina_1_cosa_2 - 3.849462365591399 cosa_1_sina_2
   - 4.494623655913979 cosa_1_cosa_2 + 2 sina_1_tx_2 + 2 sina_1_ty_2
   + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_point_0_inside_1_constraint_0_eq <= 0
 R201: - poly_2_point_0_inside_1 + poly_2_point_0_inside_1_constraint_0_eq
   <= 0
 R202: poly_2_point_0_inside_1 = 0
 R203: poly_2_point_1_inside_1 - poly_2_point_1_inside_1_constraint_0_eq
   <= 0
 poly_2_point_1_inside_1_constraint_0_eq_true: 3.849462365591399 sina_1
   - 4.494623655913979 cosa_1 + 2 sina_tx_1 + 2 cosa_tx_1 + 2 sina_ty_1
   - 2 cosa_ty_1 + 4.494623655913979 sina_1_sina_2
   + 4.150537634408601 sina_1_cosa_2 - 4.150537634408601 cosa_1_sina_2
   + 4.494623655913979 cosa_1_cosa_2 - 2 sina_1_tx_2 - 2 sina_1_ty_2
   - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_point_1_inside_1_constraint_0_eq <= 2e+12
 poly_2_point_1_inside_1_constraint_0_eq_false: - 3.849462365591399 sina_1
   + 4.494623655913979 cosa_1 - 2 sina_tx_1 - 2 cosa_tx_1 - 2 sina_ty_1
   + 2 cosa_ty_1 - 4.494623655913979 sina_1_sina_2
   - 4.150537634408601 sina_1_cosa_2 + 4.150537634408601 cosa_1_sina_2
   - 4.494623655913979 cosa_1_cosa_2 + 2 sina_1_tx_2 + 2 sina_1_ty_2
   + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_point_1_inside_1_constraint_0_eq <= 0
 R206: - poly_2_point_1_inside_1 + poly_2_point_1_inside_1_constraint_0_eq
   <= 0
 R207: poly_2_point_1_inside_1 = 0
 R208: poly_2_point_2_inside_1 - poly_2_point_2_inside_1_constraint_0_eq
   <= 0
 poly_2_point_2_inside_1_constraint_0_eq_true: 3.849462365591399 sina_1
   - 4.494623655913979 cosa_1 + 2 sina_tx_1 + 2 cosa_tx_1 + 2 sina_ty_1
   - 2 cosa_ty_1 + 2.494623655913979 sina_1_sina_2
   + 10.1505376344086 sina_1_cosa_2 - 10.1505376344086 cosa_1_sina_2
   + 2.494623655913979 cosa_1_cosa_2 - 2 sina_1_tx_2 - 2 sina_1_ty_2
   - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_point_2_inside_1_constraint_0_eq <= 2e+12
 poly_2_point_2_inside_1_constraint_0_eq_false: - 3.849462365591399 sina_1
   + 4.494623655913979 cosa_1 - 2 sina_tx_1 - 2 cosa_tx_1 - 2 sina_ty_1
   + 2 cosa_ty_1 - 2.494623655913979 sina_1_sina_2
   - 10.1505376344086 sina_1_cosa_2 + 10.1505376344086 cosa_1_sina_2
   - 2.494623655913979 cosa_1_cosa_2 + 2 sina_1_tx_2 + 2 sina_1_ty_2
   + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_point_2_inside_1_constraint_0_eq <= 0
 R211: - poly_2_point_2_inside_1 + poly_2_point_2_inside_1_constraint_0_eq
   <= 0
 R212: poly_2_point_2_inside_1 = 0
 R213: poly_2_point_3_inside_1 - poly_2_point_3_inside_1_constraint_0_eq
   <= 0
 poly_2_point_3_inside_1_constraint_0_eq_true: 3.849462365591399 sina_1
   - 4.494623655913979 cosa_1 + 2 sina_tx_1 + 2 cosa_tx_1 + 2 sina_ty_1
   - 2 cosa_ty_1 - 3.505376344086021 sina_1_sina_2
   + 4.150537634408601 sina_1_cosa_2 - 4.150537634408601 cosa_1_sina_2
   - 3.505376344086021 cosa_1_cosa_2 - 2 sina_1_tx_2 - 2 sina_1_ty_2
   - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_point_3_inside_1_constraint_0_eq <= 2e+12
 poly_2_point_3_inside_1_constraint_0_eq_false: - 3.849462365591399 sina_1
   + 4.494623655913979 cosa_1 - 2 sina_tx_1 - 2 cosa_tx_1 - 2 sina_ty_1
   + 2 cosa_ty_1 + 3.505376344086021 sina_1_sina_2
   - 4.150537634408601 sina_1_cosa_2 + 4.150537634408601 cosa_1_sina_2
   + 3.505376344086021 cosa_1_cosa_2 + 2 sina_1_tx_2 + 2 sina_1_ty_2
   + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_point_3_inside_1_constraint_0_eq <= 0
 R216: - poly_2_point_3_inside_1 + poly_2_point_3_inside_1_constraint_0_eq
   <= 0
 R217: poly_2_point_3_inside_1 = 0
 R218: poly_2_point_4_inside_1 - poly_2_point_4_inside_1_constraint_0_eq
   <= 0
 poly_2_point_4_inside_1_constraint_0_eq_true: 3.849462365591399 sina_1
   - 4.494623655913979 cosa_1 + 2 sina_tx_1 + 2 cosa_tx_1 + 2 sina_ty_1
   - 2 cosa_ty_1 - 5.505376344086021 sina_1_sina_2
   - 1.849462365591399 sina_1_cosa_2 + 1.849462365591399 cosa_1_sina_2
   - 5.505376344086021 cosa_1_cosa_2 - 2 sina_1_tx_2 - 2 sina_1_ty_2
   - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_point_4_inside_1_constraint_0_eq <= 2e+12
 poly_2_point_4_inside_1_constraint_0_eq_false: - 3.849462365591399 sina_1
   + 4.494623655913979 cosa_1 - 2 sina_tx_1 - 2 cosa_tx_1 - 2 sina_ty_1
   + 2 cosa_ty_1 + 5.505376344086021 sina_1_sina_2
   + 1.849462365591399 sina_1_cosa_2 - 1.849462365591399 cosa_1_sina_2
   + 5.505376344086021 cosa_1_cosa_2 + 2 sina_1_tx_2 + 2 sina_1_ty_2
   + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_point_4_inside_1_constraint_0_eq <= 0
 R221: - poly_2_point_4_inside_1 + poly_2_point_4_inside_1_constraint_0_eq
   <= 0
 R222: poly_2_point_4_inside_1 = 0
 R223: poly_2_point_5_inside_1 - poly_2_point_5_inside_1_constraint_0_eq
   <= 0
 poly_2_point_5_inside_1_constraint_0_eq_true: 3.849462365591399 sina_1
   - 4.494623655913979 cosa_1 + 2 sina_tx_1 + 2 cosa_tx_1 + 2 sina_ty_1
   - 2 cosa_ty_1 - 3.505376344086021 sina_1_sina_2
   - 7.849462365591399 sina_1_cosa_2 + 7.849462365591399 cosa_1_sina_2
   - 3.505376344086021 cosa_1_cosa_2 - 2 sina_1_tx_2 - 2 sina_1_ty_2
   - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_point_5_inside_1_constraint_0_eq <= 2e+12
 poly_2_point_5_inside_1_constraint_0_eq_false: - 3.849462365591399 sina_1
   + 4.494623655913979 cosa_1 - 2 sina_tx_1 - 2 cosa_tx_1 - 2 sina_ty_1
   + 2 cosa_ty_1 + 3.505376344086021 sina_1_sina_2
   + 7.849462365591399 sina_1_cosa_2 - 7.849462365591399 cosa_1_sina_2
   + 3.505376344086021 cosa_1_cosa_2 + 2 sina_1_tx_2 + 2 sina_1_ty_2
   + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_point_5_inside_1_constraint_0_eq <= 0
 R226: - poly_2_point_5_inside_1 + poly_2_point_5_inside_1_constraint_0_eq
   <= 0
 R227: poly_2_point_5_inside_1 = 0
 R228: poly_2_point_6_inside_1 - poly_2_point_6_inside_1_constraint_0_eq
   <= 0
 poly_2_point_6_inside_1_constraint_0_eq_true: 3.849462365591399 sina_1
   - 4.494623655913979 cosa_1 + 2 sina_tx_1 + 2 cosa_tx_1 + 2 sina_ty_1
   - 2 cosa_ty_1 + 0.4946236559139789 sina_1_sina_2
   - 7.849462365591399 sina_1_cosa_2 + 7.849462365591399 cosa_1_sina_2
   + 0.4946236559139789 cosa_1_cosa_2 - 2 sina_1_tx_2 - 2 sina_1_ty_2
   - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_point_6_inside_1_constraint_0_eq <= 2e+12
 poly_2_point_6_inside_1_constraint_0_eq_false: - 3.849462365591399 sina_1
   + 4.494623655913979 cosa_1 - 2 sina_tx_1 - 2 cosa_tx_1 - 2 sina_ty_1
   + 2 cosa_ty_1 - 0.4946236559139789 sina_1_sina_2
   + 7.849462365591399 sina_1_cosa_2 - 7.849462365591399 cosa_1_sina_2
   - 0.4946236559139789 cosa_1_cosa_2 + 2 sina_1_tx_2 + 2 sina_1_ty_2
   + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_point_6_inside_1_constraint_0_eq <= 0
 R231: - poly_2_point_6_inside_1 + poly_2_point_6_inside_1_constraint_0_eq
   <= 0
 R232: poly_2_point_6_inside_1 = 0
 R233: poly_2_point_7_inside_1 - poly_2_point_7_inside_1_constraint_0_eq
   <= 0
 poly_2_point_7_inside_1_constraint_0_eq_true: 3.849462365591399 sina_1
   - 4.494623655913979 cosa_1 + 2 sina_tx_1 + 2 cosa_tx_1 + 2 sina_ty_1
   - 2 cosa_ty_1 + 4.494623655913979 sina_1_sina_2
   - 3.849462365591399 sina_1_cosa_2 + 3.849462365591399 cosa_1_sina_2
   + 4.494623655913979 cosa_1_cosa_2 - 2 sina_1_tx_2 - 2 sina_1_ty_2
   - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_point_7_inside_1_constraint_0_eq <= 2e+12
 poly_2_point_7_inside_1_constraint_0_eq_false: - 3.849462365591399 sina_1
   + 4.494623655913979 cosa_1 - 2 sina_tx_1 - 2 cosa_tx_1 - 2 sina_ty_1
   + 2 cosa_ty_1 - 4.494623655913979 sina_1_sina_2
   + 3.849462365591399 sina_1_cosa_2 - 3.849462365591399 cosa_1_sina_2
   - 4.494623655913979 cosa_1_cosa_2 + 2 sina_1_tx_2 + 2 sina_1_ty_2
   + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_point_7_inside_1_constraint_0_eq <= 0
 R236: - poly_2_point_7_inside_1 + poly_2_point_7_inside_1_constraint_0_eq
   <= 0
 R237: poly_2_point_7_inside_1 = 0
 R238: poly_2_spike_point_0_inside_1
   - poly_2_spike_point_0_inside_1_constraint_0_eq <= 0
 poly_2_spike_point_0_inside_1_constraint_0_eq_true:
   3.849462365591399 sina_1 - 4.494623655913979 cosa_1 + 2 sina_tx_1
   + 2 cosa_tx_1 + 2 sina_ty_1 - 2 cosa_ty_1
   + 5.294623655913979 sina_1_sina_2 - 4.649462365591399 sina_1_cosa_2
   + 4.649462365591399 cosa_1_sina_2 + 5.294623655913979 cosa_1_cosa_2
   - 2 sina_1_tx_2 - 2 sina_1_ty_2 - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_spike_point_0_inside_1_constraint_0_eq <= 2e+12
 poly_2_spike_point_0_inside_1_constraint_0_eq_false:
   - 3.849462365591399 sina_1 + 4.494623655913979 cosa_1 - 2 sina_tx_1
   - 2 cosa_tx_1 - 2 sina_ty_1 + 2 cosa_ty_1
   - 5.294623655913979 sina_1_sina_2 + 4.649462365591399 sina_1_cosa_2
   - 4.649462365591399 cosa_1_sina_2 - 5.294623655913979 cosa_1_cosa_2
   + 2 sina_1_tx_2 + 2 sina_1_ty_2 + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_spike_point_0_inside_1_constraint_0_eq <= 0
 R241: - poly_2_spike_point_0_inside_1
   + poly_2_spike_point_0_inside_1_constraint_0_eq <= 0
 R242: poly_2_spike_point_1_inside_1
   - poly_2_spike_point_1_inside_1_constraint_0_eq <= 0
 poly_2_spike_point_1_inside_1_constraint_0_eq_true:
   3.849462365591399 sina_1 - 4.494623655913979 cosa_1 + 2 sina_tx_1
   + 2 cosa_tx_1 + 2 sina_ty_1 - 2 cosa_ty_1
   + 5.294623655913979 sina_1_sina_2 + 4.950537634408601 sina_1_cosa_2
   - 4.950537634408601 cosa_1_sina_2 + 5.294623655913979 cosa_1_cosa_2
   - 2 sina_1_tx_2 - 2 sina_1_ty_2 - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_spike_point_1_inside_1_constraint_0_eq <= 2e+12
 poly_2_spike_point_1_inside_1_constraint_0_eq_false:
   - 3.849462365591399 sina_1 + 4.494623655913979 cosa_1 - 2 sina_tx_1
   - 2 cosa_tx_1 - 2 sina_ty_1 + 2 cosa_ty_1
   - 5.294623655913979 sina_1_sina_2 - 4.950537634408601 sina_1_cosa_2
   + 4.950537634408601 cosa_1_sina_2 - 5.294623655913979 cosa_1_cosa_2
   + 2 sina_1_tx_2 + 2 sina_1_ty_2 + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_spike_point_1_inside_1_constraint_0_eq <= 0
 R245: - poly_2_spike_point_1_inside_1
   + poly_2_spike_point_1_inside_1_constraint_0_eq <= 0
 R246: poly_2_spike_point_2_inside_1
   - poly_2_spike_point_2_inside_1_constraint_0_eq <= 0
 poly_2_spike_point_2_inside_1_constraint_0_eq_true:
   3.849462365591399 sina_1 - 4.494623655913979 cosa_1 + 2 sina_tx_1
   + 2 cosa_tx_1 + 2 sina_ty_1 - 2 cosa_ty_1
   + 2.894623655913978 sina_1_sina_2 + 12.1505376344086 sina_1_cosa_2
   - 12.1505376344086 cosa_1_sina_2 + 2.894623655913978 cosa_1_cosa_2
   - 2 sina_1_tx_2 - 2 sina_1_ty_2 - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_spike_point_2_inside_1_constraint_0_eq <= 2e+12
 poly_2_spike_point_2_inside_1_constraint_0_eq_false:
   - 3.849462365591399 sina_1 + 4.494623655913979 cosa_1 - 2 sina_tx_1
   - 2 cosa_tx_1 - 2 sina_ty_1 + 2 cosa_ty_1
   - 2.894623655913978 sina_1_sina_2 - 12.1505376344086 sina_1_cosa_2
   + 12.1505376344086 cosa_1_sina_2 - 2.894623655913978 cosa_1_cosa_2
   + 2 sina_1_tx_2 + 2 sina_1_ty_2 + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_spike_point_2_inside_1_constraint_0_eq <= 0
 R249: - poly_2_spike_point_2_inside_1
   + poly_2_spike_point_2_inside_1_constraint_0_eq <= 0
 R250: poly_2_spike_point_3_inside_1
   - poly_2_spike_point_3_inside_1_constraint_0_eq <= 0
 poly_2_spike_point_3_inside_1_constraint_0_eq_true:
   3.849462365591399 sina_1 - 4.494623655913979 cosa_1 + 2 sina_tx_1
   + 2 cosa_tx_1 + 2 sina_ty_1 - 2 cosa_ty_1
   - 4.305376344086021 sina_1_sina_2 + 4.950537634408601 sina_1_cosa_2
   - 4.950537634408601 cosa_1_sina_2 - 4.305376344086021 cosa_1_cosa_2
   - 2 sina_1_tx_2 - 2 sina_1_ty_2 - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_spike_point_3_inside_1_constraint_0_eq <= 2e+12
 poly_2_spike_point_3_inside_1_constraint_0_eq_false:
   - 3.849462365591399 sina_1 + 4.494623655913979 cosa_1 - 2 sina_tx_1
   - 2 cosa_tx_1 - 2 sina_ty_1 + 2 cosa_ty_1
   + 4.305376344086021 sina_1_sina_2 - 4.950537634408601 sina_1_cosa_2
   + 4.950537634408601 cosa_1_sina_2 + 4.305376344086021 cosa_1_cosa_2
   + 2 sina_1_tx_2 + 2 sina_1_ty_2 + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_spike_point_3_inside_1_constraint_0_eq <= 0
 R253: - poly_2_spike_point_3_inside_1
   + poly_2_spike_point_3_inside_1_constraint_0_eq <= 0
 R254: poly_2_spike_point_4_inside_1
   - poly_2_spike_point_4_inside_1_constraint_0_eq <= 0
 poly_2_spike_point_4_inside_1_constraint_0_eq_true:
   3.849462365591399 sina_1 - 4.494623655913979 cosa_1 + 2 sina_tx_1
   + 2 cosa_tx_1 + 2 sina_ty_1 - 2 cosa_ty_1
   - 6.705376344086021 sina_1_sina_2 - 2.249462365591399 sina_1_cosa_2
   + 2.249462365591399 cosa_1_sina_2 - 6.705376344086021 cosa_1_cosa_2
   - 2 sina_1_tx_2 - 2 sina_1_ty_2 - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_spike_point_4_inside_1_constraint_0_eq <= 2e+12
 poly_2_spike_point_4_inside_1_constraint_0_eq_false:
   - 3.849462365591399 sina_1 + 4.494623655913979 cosa_1 - 2 sina_tx_1
   - 2 cosa_tx_1 - 2 sina_ty_1 + 2 cosa_ty_1
   + 6.705376344086021 sina_1_sina_2 + 2.249462365591399 sina_1_cosa_2
   - 2.249462365591399 cosa_1_sina_2 + 6.705376344086021 cosa_1_cosa_2
   + 2 sina_1_tx_2 + 2 sina_1_ty_2 + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_spike_point_4_inside_1_constraint_0_eq <= 0
 R257: - poly_2_spike_point_4_inside_1
   + poly_2_spike_point_4_inside_1_constraint_0_eq <= 0
 R258: poly_2_spike_point_5_inside_1
   - poly_2_spike_point_5_inside_1_constraint_0_eq <= 0
 poly_2_spike_point_5_inside_1_constraint_0_eq_true:
   3.849462365591399 sina_1 - 4.494623655913979 cosa_1 + 2 sina_tx_1
   + 2 cosa_tx_1 + 2 sina_ty_1 - 2 cosa_ty_1
   - 4.305376344086021 sina_1_sina_2 - 9.449462365591399 sina_1_cosa_2
   + 9.449462365591399 cosa_1_sina_2 - 4.305376344086021 cosa_1_cosa_2
   - 2 sina_1_tx_2 - 2 sina_1_ty_2 - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_spike_point_5_inside_1_constraint_0_eq <= 2e+12
 poly_2_spike_point_5_inside_1_constraint_0_eq_false:
   - 3.849462365591399 sina_1 + 4.494623655913979 cosa_1 - 2 sina_tx_1
   - 2 cosa_tx_1 - 2 sina_ty_1 + 2 cosa_ty_1
   + 4.305376344086021 sina_1_sina_2 + 9.449462365591399 sina_1_cosa_2
   - 9.449462365591399 cosa_1_sina_2 + 4.305376344086021 cosa_1_cosa_2
   + 2 sina_1_tx_2 + 2 sina_1_ty_2 + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_spike_point_5_inside_1_constraint_0_eq <= 0
 R261: - poly_2_spike_point_5_inside_1
   + poly_2_spike_point_5_inside_1_constraint_0_eq <= 0
 R262: poly_2_spike_point_6_inside_1
   - poly_2_spike_point_6_inside_1_constraint_0_eq <= 0
 poly_2_spike_point_6_inside_1_constraint_0_eq_true:
   3.849462365591399 sina_1 - 4.494623655913979 cosa_1 + 2 sina_tx_1
   + 2 cosa_tx_1 + 2 sina_ty_1 - 2 cosa_ty_1
   + 0.4946236559139789 sina_1_sina_2 - 9.449462365591398 sina_1_cosa_2
   + 9.449462365591398 cosa_1_sina_2 + 0.4946236559139789 cosa_1_cosa_2
   - 2 sina_1_tx_2 - 2 sina_1_ty_2 - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_spike_point_6_inside_1_constraint_0_eq <= 2e+12
 poly_2_spike_point_6_inside_1_constraint_0_eq_false:
   - 3.849462365591399 sina_1 + 4.494623655913979 cosa_1 - 2 sina_tx_1
   - 2 cosa_tx_1 - 2 sina_ty_1 + 2 cosa_ty_1
   - 0.4946236559139789 sina_1_sina_2 + 9.449462365591398 sina_1_cosa_2
   - 9.449462365591398 cosa_1_sina_2 - 0.4946236559139789 cosa_1_cosa_2
   + 2 sina_1_tx_2 + 2 sina_1_ty_2 + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_spike_point_6_inside_1_constraint_0_eq <= 0
 R265: - poly_2_spike_point_6_inside_1
   + poly_2_spike_point_6_inside_1_constraint_0_eq <= 0
 R266: poly_2_spike_point_7_inside_1
   - poly_2_spike_point_7_inside_1_constraint_0_eq <= 0
 poly_2_spike_point_7_inside_1_constraint_0_eq_true:
   3.849462365591399 sina_1 - 4.494623655913979 cosa_1 + 2 sina_tx_1
   + 2 cosa_tx_1 + 2 sina_ty_1 - 2 cosa_ty_1
   + 5.294623655913979 sina_1_sina_2 - 4.649462365591399 sina_1_cosa_2
   + 4.649462365591399 cosa_1_sina_2 + 5.294623655913979 cosa_1_cosa_2
   - 2 sina_1_tx_2 - 2 sina_1_ty_2 - 2 cosa_1_tx_2 + 2 cosa_1_ty_2
   + 2e+12 poly_2_spike_point_7_inside_1_constraint_0_eq <= 2e+12
 poly_2_spike_point_7_inside_1_constraint_0_eq_false:
   - 3.849462365591399 sina_1 + 4.494623655913979 cosa_1 - 2 sina_tx_1
   - 2 cosa_tx_1 - 2 sina_ty_1 + 2 cosa_ty_1
   - 5.294623655913979 sina_1_sina_2 + 4.649462365591399 sina_1_cosa_2
   - 4.649462365591399 cosa_1_sina_2 - 5.294623655913979 cosa_1_cosa_2
   + 2 sina_1_tx_2 + 2 sina_1_ty_2 + 2 cosa_1_tx_2 - 2 cosa_1_ty_2
   - 2e+12 poly_2_spike_point_7_inside_1_constraint_0_eq <= 0
 R269: - poly_2_spike_point_7_inside_1
   + poly_2_spike_point_7_inside_1_constraint_0_eq <= 0
 R270: poly_0_point_0_inside_2 - poly_0_point_0_inside_2_constraint_0_eq
   <= 0
 poly_0_point_0_inside_2_constraint_0_eq_true: 5.571428571428571 sina_2
   - 5.642857142857144 cosa_2 + 3 sina_tx_2 - 3 cosa_ty_2
   + 5.642857142857144 sina_0_sina_2 + 5.571428571428571 sina_0_cosa_2
   - 5.571428571428571 cosa_0_sina_2 + 5.642857142857144 cosa_0_cosa_2
   - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_point_0_inside_2_constraint_0_eq <= 2e+12
 poly_0_point_0_inside_2_constraint_0_eq_false: - 5.571428571428571 sina_2
   + 5.642857142857144 cosa_2 - 3 sina_tx_2 + 3 cosa_ty_2
   - 5.642857142857144 sina_0_sina_2 - 5.571428571428571 sina_0_cosa_2
   + 5.571428571428571 cosa_0_sina_2 - 5.642857142857144 cosa_0_cosa_2
   + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_point_0_inside_2_constraint_0_eq <= 0
 R273: - poly_0_point_0_inside_2 + poly_0_point_0_inside_2_constraint_0_eq
   <= 0
 R274: poly_0_point_0_inside_2 = 0
 R275: poly_0_point_1_inside_2 - poly_0_point_1_inside_2_constraint_0_eq
   <= 0
 poly_0_point_1_inside_2_constraint_0_eq_true: 5.571428571428571 sina_2
   - 5.642857142857144 cosa_2 + 3 sina_tx_2 - 3 cosa_ty_2
   + 5.642857142857144 sina_0_sina_2 - 3.428571428571428 sina_0_cosa_2
   + 3.428571428571428 cosa_0_sina_2 + 5.642857142857144 cosa_0_cosa_2
   - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_point_1_inside_2_constraint_0_eq <= 2e+12
 poly_0_point_1_inside_2_constraint_0_eq_false: - 5.571428571428571 sina_2
   + 5.642857142857144 cosa_2 - 3 sina_tx_2 + 3 cosa_ty_2
   - 5.642857142857144 sina_0_sina_2 + 3.428571428571428 sina_0_cosa_2
   - 3.428571428571428 cosa_0_sina_2 - 5.642857142857144 cosa_0_cosa_2
   + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_point_1_inside_2_constraint_0_eq <= 0
 R278: - poly_0_point_1_inside_2 + poly_0_point_1_inside_2_constraint_0_eq
   <= 0
 R279: poly_0_point_1_inside_2 = 0
 R280: poly_0_point_2_inside_2 - poly_0_point_2_inside_2_constraint_0_eq
   <= 0
 poly_0_point_2_inside_2_constraint_0_eq_true: 5.571428571428571 sina_2
   - 5.642857142857144 cosa_2 + 3 sina_tx_2 - 3 cosa_ty_2
   - 0.3571428571428559 sina_0_sina_2 - 6.428571428571429 sina_0_cosa_2
   + 6.428571428571429 cosa_0_sina_2 - 0.3571428571428559 cosa_0_cosa_2
   - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_point_2_inside_2_constraint_0_eq <= 2e+12
 poly_0_point_2_inside_2_constraint_0_eq_false: - 5.571428571428571 sina_2
   + 5.642857142857144 cosa_2 - 3 sina_tx_2 + 3 cosa_ty_2
   + 0.3571428571428559 sina_0_sina_2 + 6.428571428571429 sina_0_cosa_2
   - 6.428571428571429 cosa_0_sina_2 + 0.3571428571428559 cosa_0_cosa_2
   + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_point_2_inside_2_constraint_0_eq <= 0
 R283: - poly_0_point_2_inside_2 + poly_0_point_2_inside_2_constraint_0_eq
   <= 0
 R284: poly_0_point_2_inside_2 = 0
 R285: poly_0_point_3_inside_2 - poly_0_point_3_inside_2_constraint_0_eq
   <= 0
 poly_0_point_3_inside_2_constraint_0_eq_true: 5.571428571428571 sina_2
   - 5.642857142857144 cosa_2 + 3 sina_tx_2 - 3 cosa_ty_2
   - 9.357142857142856 sina_0_sina_2 - 3.428571428571428 sina_0_cosa_2
   + 3.428571428571428 cosa_0_sina_2 - 9.357142857142856 cosa_0_cosa_2
   - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_point_3_inside_2_constraint_0_eq <= 2e+12
 poly_0_point_3_inside_2_constraint_0_eq_false: - 5.571428571428571 sina_2
   + 5.642857142857144 cosa_2 - 3 sina_tx_2 + 3 cosa_ty_2
   + 9.357142857142856 sina_0_sina_2 + 3.428571428571428 sina_0_cosa_2
   - 3.428571428571428 cosa_0_sina_2 + 9.357142857142856 cosa_0_cosa_2
   + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_point_3_inside_2_constraint_0_eq <= 0
 R288: - poly_0_point_3_inside_2 + poly_0_point_3_inside_2_constraint_0_eq
   <= 0
 R289: poly_0_point_3_inside_2 = 0
 R290: poly_0_point_4_inside_2 - poly_0_point_4_inside_2_constraint_0_eq
   <= 0
 poly_0_point_4_inside_2_constraint_0_eq_true: 5.571428571428571 sina_2
   - 5.642857142857144 cosa_2 + 3 sina_tx_2 - 3 cosa_ty_2
   - 3.357142857142856 sina_0_sina_2 + 2.571428571428572 sina_0_cosa_2
   - 2.571428571428572 cosa_0_sina_2 - 3.357142857142856 cosa_0_cosa_2
   - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_point_4_inside_2_constraint_0_eq <= 2e+12
 poly_0_point_4_inside_2_constraint_0_eq_false: - 5.571428571428571 sina_2
   + 5.642857142857144 cosa_2 - 3 sina_tx_2 + 3 cosa_ty_2
   + 3.357142857142856 sina_0_sina_2 - 2.571428571428572 sina_0_cosa_2
   + 2.571428571428572 cosa_0_sina_2 + 3.357142857142856 cosa_0_cosa_2
   + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_point_4_inside_2_constraint_0_eq <= 0
 R293: - poly_0_point_4_inside_2 + poly_0_point_4_inside_2_constraint_0_eq
   <= 0
 R294: poly_0_point_4_inside_2 = 0
 R295: poly_0_point_5_inside_2 - poly_0_point_5_inside_2_constraint_0_eq
   <= 0
 poly_0_point_5_inside_2_constraint_0_eq_true: 5.571428571428571 sina_2
   - 5.642857142857144 cosa_2 + 3 sina_tx_2 - 3 cosa_ty_2
   + 2.642857142857144 sina_0_sina_2 + 8.571428571428571 sina_0_cosa_2
   - 8.571428571428571 cosa_0_sina_2 + 2.642857142857144 cosa_0_cosa_2
   - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_point_5_inside_2_constraint_0_eq <= 2e+12
 poly_0_point_5_inside_2_constraint_0_eq_false: - 5.571428571428571 sina_2
   + 5.642857142857144 cosa_2 - 3 sina_tx_2 + 3 cosa_ty_2
   - 2.642857142857144 sina_0_sina_2 - 8.571428571428571 sina_0_cosa_2
   + 8.571428571428571 cosa_0_sina_2 - 2.642857142857144 cosa_0_cosa_2
   + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_point_5_inside_2_constraint_0_eq <= 0
 R298: - poly_0_point_5_inside_2 + poly_0_point_5_inside_2_constraint_0_eq
   <= 0
 R299: poly_0_point_5_inside_2 = 0
 R300: poly_0_point_6_inside_2 - poly_0_point_6_inside_2_constraint_0_eq
   <= 0
 poly_0_point_6_inside_2_constraint_0_eq_true: 5.571428571428571 sina_2
   - 5.642857142857144 cosa_2 + 3 sina_tx_2 - 3 cosa_ty_2
   + 5.642857142857144 sina_0_sina_2 + 5.571428571428571 sina_0_cosa_2
   - 5.571428571428571 cosa_0_sina_2 + 5.642857142857144 cosa_0_cosa_2
   - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_point_6_inside_2_constraint_0_eq <= 2e+12
 poly_0_point_6_inside_2_constraint_0_eq_false: - 5.571428571428571 sina_2
   + 5.642857142857144 cosa_2 - 3 sina_tx_2 + 3 cosa_ty_2
   - 5.642857142857144 sina_0_sina_2 - 5.571428571428571 sina_0_cosa_2
   + 5.571428571428571 cosa_0_sina_2 - 5.642857142857144 cosa_0_cosa_2
   + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_point_6_inside_2_constraint_0_eq <= 0
 R303: - poly_0_point_6_inside_2 + poly_0_point_6_inside_2_constraint_0_eq
   <= 0
 R304: poly_0_point_6_inside_2 = 0
 R305: poly_0_spike_point_0_inside_2
   - poly_0_spike_point_0_inside_2_constraint_0_eq <= 0
 poly_0_spike_point_0_inside_2_constraint_0_eq_true:
   5.571428571428571 sina_2 - 5.642857142857144 cosa_2 + 3 sina_tx_2
   - 3 cosa_ty_2 + 7.142857142857144 sina_0_sina_2
   + 6.471428571428572 sina_0_cosa_2 - 6.471428571428572 cosa_0_sina_2
   + 7.142857142857144 cosa_0_cosa_2 - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_spike_point_0_inside_2_constraint_0_eq <= 2e+12
 poly_0_spike_point_0_inside_2_constraint_0_eq_false:
   - 5.571428571428571 sina_2 + 5.642857142857144 cosa_2 - 3 sina_tx_2
   + 3 cosa_ty_2 - 7.142857142857144 sina_0_sina_2
   - 6.471428571428572 sina_0_cosa_2 + 6.471428571428572 cosa_0_sina_2
   - 7.142857142857144 cosa_0_cosa_2 + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_spike_point_0_inside_2_constraint_0_eq <= 0
 R308: - poly_0_spike_point_0_inside_2
   + poly_0_spike_point_0_inside_2_constraint_0_eq <= 0
 R309: poly_0_spike_point_1_inside_2
   - poly_0_spike_point_1_inside_2_constraint_0_eq <= 0
 poly_0_spike_point_1_inside_2_constraint_0_eq_true:
   5.571428571428571 sina_2 - 5.642857142857144 cosa_2 + 3 sina_tx_2
   - 3 cosa_ty_2 + 7.142857142857144 sina_0_sina_2
   - 4.328571428571427 sina_0_cosa_2 + 4.328571428571427 cosa_0_sina_2
   + 7.142857142857144 cosa_0_cosa_2 - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_spike_point_1_inside_2_constraint_0_eq <= 2e+12
 poly_0_spike_point_1_inside_2_constraint_0_eq_false:
   - 5.571428571428571 sina_2 + 5.642857142857144 cosa_2 - 3 sina_tx_2
   + 3 cosa_ty_2 - 7.142857142857144 sina_0_sina_2
   + 4.328571428571427 sina_0_cosa_2 - 4.328571428571427 cosa_0_sina_2
   - 7.142857142857144 cosa_0_cosa_2 + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_spike_point_1_inside_2_constraint_0_eq <= 0
 R312: - poly_0_spike_point_1_inside_2
   + poly_0_spike_point_1_inside_2_constraint_0_eq <= 0
 R313: poly_0_spike_point_2_inside_2
   - poly_0_spike_point_2_inside_2_constraint_0_eq <= 0
 poly_0_spike_point_2_inside_2_constraint_0_eq_true:
   5.571428571428571 sina_2 - 5.642857142857144 cosa_2 + 3 sina_tx_2
   - 3 cosa_ty_2 - 0.0571428571428559 sina_0_sina_2
   - 7.928571428571429 sina_0_cosa_2 + 7.928571428571429 cosa_0_sina_2
   - 0.0571428571428559 cosa_0_cosa_2 - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_spike_point_2_inside_2_constraint_0_eq <= 2e+12
 poly_0_spike_point_2_inside_2_constraint_0_eq_false:
   - 5.571428571428571 sina_2 + 5.642857142857144 cosa_2 - 3 sina_tx_2
   + 3 cosa_ty_2 + 0.0571428571428559 sina_0_sina_2
   + 7.928571428571429 sina_0_cosa_2 - 7.928571428571429 cosa_0_sina_2
   + 0.0571428571428559 cosa_0_cosa_2 + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_spike_point_2_inside_2_constraint_0_eq <= 0
 R316: - poly_0_spike_point_2_inside_2
   + poly_0_spike_point_2_inside_2_constraint_0_eq <= 0
 R317: poly_0_spike_point_3_inside_2
   - poly_0_spike_point_3_inside_2_constraint_0_eq <= 0
 poly_0_spike_point_3_inside_2_constraint_0_eq_true:
   5.571428571428571 sina_2 - 5.642857142857144 cosa_2 + 3 sina_tx_2
   - 3 cosa_ty_2 - 10.85714285714285 sina_0_sina_2
   - 4.328571428571427 sina_0_cosa_2 + 4.328571428571427 cosa_0_sina_2
   - 10.85714285714285 cosa_0_cosa_2 - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_spike_point_3_inside_2_constraint_0_eq <= 2e+12
 poly_0_spike_point_3_inside_2_constraint_0_eq_false:
   - 5.571428571428571 sina_2 + 5.642857142857144 cosa_2 - 3 sina_tx_2
   + 3 cosa_ty_2 + 10.85714285714285 sina_0_sina_2
   + 4.328571428571427 sina_0_cosa_2 - 4.328571428571427 cosa_0_sina_2
   + 10.85714285714285 cosa_0_cosa_2 + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_spike_point_3_inside_2_constraint_0_eq <= 0
 R320: - poly_0_spike_point_3_inside_2
   + poly_0_spike_point_3_inside_2_constraint_0_eq <= 0
 R321: poly_0_spike_point_4_inside_2
   - poly_0_spike_point_4_inside_2_constraint_0_eq <= 0
 poly_0_spike_point_4_inside_2_constraint_0_eq_true:
   5.571428571428571 sina_2 - 5.642857142857144 cosa_2 + 3 sina_tx_2
   - 3 cosa_ty_2 - 3.657142857142856 sina_0_sina_2
   + 2.871428571428572 sina_0_cosa_2 - 2.871428571428572 cosa_0_sina_2
   - 3.657142857142856 cosa_0_cosa_2 - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_spike_point_4_inside_2_constraint_0_eq <= 2e+12
 poly_0_spike_point_4_inside_2_constraint_0_eq_false:
   - 5.571428571428571 sina_2 + 5.642857142857144 cosa_2 - 3 sina_tx_2
   + 3 cosa_ty_2 + 3.657142857142856 sina_0_sina_2
   - 2.871428571428572 sina_0_cosa_2 + 2.871428571428572 cosa_0_sina_2
   + 3.657142857142856 cosa_0_cosa_2 + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_spike_point_4_inside_2_constraint_0_eq <= 0
 R324: - poly_0_spike_point_4_inside_2
   + poly_0_spike_point_4_inside_2_constraint_0_eq <= 0
 R325: poly_0_spike_point_5_inside_2
   - poly_0_spike_point_5_inside_2_constraint_0_eq <= 0
 poly_0_spike_point_5_inside_2_constraint_0_eq_true:
   5.571428571428571 sina_2 - 5.642857142857144 cosa_2 + 3 sina_tx_2
   - 3 cosa_ty_2 + 3.542857142857144 sina_0_sina_2
   + 10.07142857142857 sina_0_cosa_2 - 10.07142857142857 cosa_0_sina_2
   + 3.542857142857144 cosa_0_cosa_2 - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_spike_point_5_inside_2_constraint_0_eq <= 2e+12
 poly_0_spike_point_5_inside_2_constraint_0_eq_false:
   - 5.571428571428571 sina_2 + 5.642857142857144 cosa_2 - 3 sina_tx_2
   + 3 cosa_ty_2 - 3.542857142857144 sina_0_sina_2
   - 10.07142857142857 sina_0_cosa_2 + 10.07142857142857 cosa_0_sina_2
   - 3.542857142857144 cosa_0_cosa_2 + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_spike_point_5_inside_2_constraint_0_eq <= 0
 R328: - poly_0_spike_point_5_inside_2
   + poly_0_spike_point_5_inside_2_constraint_0_eq <= 0
 R329: poly_0_spike_point_6_inside_2
   - poly_0_spike_point_6_inside_2_constraint_0_eq <= 0
 poly_0_spike_point_6_inside_2_constraint_0_eq_true:
   5.571428571428571 sina_2 - 5.642857142857144 cosa_2 + 3 sina_tx_2
   - 3 cosa_ty_2 + 7.142857142857144 sina_0_sina_2
   + 6.471428571428572 sina_0_cosa_2 - 6.471428571428572 cosa_0_sina_2
   + 7.142857142857144 cosa_0_cosa_2 - 3 sina_2_tx_0 + 3 cosa_2_ty_0
   + 2e+12 poly_0_spike_point_6_inside_2_constraint_0_eq <= 2e+12
 poly_0_spike_point_6_inside_2_constraint_0_eq_false:
   - 5.571428571428571 sina_2 + 5.642857142857144 cosa_2 - 3 sina_tx_2
   + 3 cosa_ty_2 - 7.142857142857144 sina_0_sina_2
   - 6.471428571428572 sina_0_cosa_2 + 6.471428571428572 cosa_0_sina_2
   - 7.142857142857144 cosa_0_cosa_2 + 3 sina_2_tx_0 - 3 cosa_2_ty_0
   - 2e+12 poly_0_spike_point_6_inside_2_constraint_0_eq <= 0
 R332: - poly_0_spike_point_6_inside_2
   + poly_0_spike_point_6_inside_2_constraint_0_eq <= 0
 R333: poly_1_point_0_inside_2 - poly_1_point_0_inside_2_constraint_0_eq
   <= 0
 poly_1_point_0_inside_2_constraint_0_eq_true: 0.9761904761904772 sina_2
   - 4.535714285714287 cosa_2 + sina_tx_2 + 2 cosa_tx_2 + 2 sina_ty_2
   - cosa_ty_2 + 4.535714285714287 sina_1_sina_2
   + 0.9761904761904772 sina_1_cosa_2 - 0.9761904761904772 cosa_1_sina_2
   + 4.535714285714287 cosa_1_cosa_2 - sina_2_tx_1 - 2 sina_2_ty_1
   - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_point_0_inside_2_constraint_0_eq <= 2e+12
 poly_1_point_0_inside_2_constraint_0_eq_false: - 0.9761904761904772 sina_2
   + 4.535714285714287 cosa_2 - sina_tx_2 - 2 cosa_tx_2 - 2 sina_ty_2
   + cosa_ty_2 - 4.535714285714287 sina_1_sina_2
   - 0.9761904761904772 sina_1_cosa_2 + 0.9761904761904772 cosa_1_sina_2
   - 4.535714285714287 cosa_1_cosa_2 + sina_2_tx_1 + 2 sina_2_ty_1
   + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_point_0_inside_2_constraint_0_eq <= 0
 R336: - poly_1_point_0_inside_2 + poly_1_point_0_inside_2_constraint_0_eq
   <= 0
 R337: poly_1_point_0_inside_2 = 0
 R338: poly_1_point_1_inside_2 - poly_1_point_1_inside_2_constraint_0_eq
   <= 0
 poly_1_point_1_inside_2_constraint_0_eq_true: 0.9761904761904772 sina_2
   - 4.535714285714287 cosa_2 + sina_tx_2 + 2 cosa_tx_2 + 2 sina_ty_2
   - cosa_ty_2 + 4.535714285714287 sina_1_sina_2
   - 4.023809523809523 sina_1_cosa_2 + 4.023809523809523 cosa_1_sina_2
   + 4.535714285714287 cosa_1_cosa_2 - sina_2_tx_1 - 2 sina_2_ty_1
   - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_point_1_inside_2_constraint_0_eq <= 2e+12
 poly_1_point_1_inside_2_constraint_0_eq_false: - 0.9761904761904772 sina_2
   + 4.535714285714287 cosa_2 - sina_tx_2 - 2 cosa_tx_2 - 2 sina_ty_2
   + cosa_ty_2 - 4.535714285714287 sina_1_sina_2
   + 4.023809523809523 sina_1_cosa_2 - 4.023809523809523 cosa_1_sina_2
   - 4.535714285714287 cosa_1_cosa_2 + sina_2_tx_1 + 2 sina_2_ty_1
   + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_point_1_inside_2_constraint_0_eq <= 0
 R341: - poly_1_point_1_inside_2 + poly_1_point_1_inside_2_constraint_0_eq
   <= 0
 R342: poly_1_point_1_inside_2 = 0
 R343: poly_1_point_2_inside_2 - poly_1_point_2_inside_2_constraint_0_eq
   <= 0
 poly_1_point_2_inside_2_constraint_0_eq_true: 0.9761904761904772 sina_2
   - 4.535714285714287 cosa_2 + sina_tx_2 + 2 cosa_tx_2 + 2 sina_ty_2
   - cosa_ty_2 + 1.535714285714287 sina_1_sina_2
   - 5.023809523809523 sina_1_cosa_2 + 5.023809523809523 cosa_1_sina_2
   + 1.535714285714287 cosa_1_cosa_2 - sina_2_tx_1 - 2 sina_2_ty_1
   - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_point_2_inside_2_constraint_0_eq <= 2e+12
 poly_1_point_2_inside_2_constraint_0_eq_false: - 0.9761904761904772 sina_2
   + 4.535714285714287 cosa_2 - sina_tx_2 - 2 cosa_tx_2 - 2 sina_ty_2
   + cosa_ty_2 - 1.535714285714287 sina_1_sina_2
   + 5.023809523809523 sina_1_cosa_2 - 5.023809523809523 cosa_1_sina_2
   - 1.535714285714287 cosa_1_cosa_2 + sina_2_tx_1 + 2 sina_2_ty_1
   + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_point_2_inside_2_constraint_0_eq <= 0
 R346: - poly_1_point_2_inside_2 + poly_1_point_2_inside_2_constraint_0_eq
   <= 0
 R347: poly_1_point_2_inside_2 = 0
 R348: poly_1_point_3_inside_2 - poly_1_point_3_inside_2_constraint_0_eq
   <= 0
 poly_1_point_3_inside_2_constraint_0_eq_true: 0.9761904761904772 sina_2
   - 4.535714285714287 cosa_2 + sina_tx_2 + 2 cosa_tx_2 + 2 sina_ty_2
   - cosa_ty_2 - 4.464285714285713 sina_1_sina_2
   - 2.023809523809523 sina_1_cosa_2 + 2.023809523809523 cosa_1_sina_2
   - 4.464285714285713 cosa_1_cosa_2 - sina_2_tx_1 - 2 sina_2_ty_1
   - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_point_3_inside_2_constraint_0_eq <= 2e+12
 poly_1_point_3_inside_2_constraint_0_eq_false: - 0.9761904761904772 sina_2
   + 4.535714285714287 cosa_2 - sina_tx_2 - 2 cosa_tx_2 - 2 sina_ty_2
   + cosa_ty_2 + 4.464285714285713 sina_1_sina_2
   + 2.023809523809523 sina_1_cosa_2 - 2.023809523809523 cosa_1_sina_2
   + 4.464285714285713 cosa_1_cosa_2 + sina_2_tx_1 + 2 sina_2_ty_1
   + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_point_3_inside_2_constraint_0_eq <= 0
 R351: - poly_1_point_3_inside_2 + poly_1_point_3_inside_2_constraint_0_eq
   <= 0
 R352: poly_1_point_3_inside_2 = 0
 R353: poly_1_point_4_inside_2 - poly_1_point_4_inside_2_constraint_0_eq
   <= 0
 poly_1_point_4_inside_2_constraint_0_eq_true: 0.9761904761904772 sina_2
   - 4.535714285714287 cosa_2 + sina_tx_2 + 2 cosa_tx_2 + 2 sina_ty_2
   - cosa_ty_2 - 5.464285714285713 sina_1_sina_2
   + 0.9761904761904772 sina_1_cosa_2 - 0.9761904761904772 cosa_1_sina_2
   - 5.464285714285713 cosa_1_cosa_2 - sina_2_tx_1 - 2 sina_2_ty_1
   - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_point_4_inside_2_constraint_0_eq <= 2e+12
 poly_1_point_4_inside_2_constraint_0_eq_false: - 0.9761904761904772 sina_2
   + 4.535714285714287 cosa_2 - sina_tx_2 - 2 cosa_tx_2 - 2 sina_ty_2
   + cosa_ty_2 + 5.464285714285713 sina_1_sina_2
   - 0.9761904761904772 sina_1_cosa_2 + 0.9761904761904772 cosa_1_sina_2
   + 5.464285714285713 cosa_1_cosa_2 + sina_2_tx_1 + 2 sina_2_ty_1
   + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_point_4_inside_2_constraint_0_eq <= 0
 R356: - poly_1_point_4_inside_2 + poly_1_point_4_inside_2_constraint_0_eq
   <= 0
 R357: poly_1_point_4_inside_2 = 0
 R358: poly_1_point_5_inside_2 - poly_1_point_5_inside_2_constraint_0_eq
   <= 0
 poly_1_point_5_inside_2_constraint_0_eq_true: 0.9761904761904772 sina_2
   - 4.535714285714287 cosa_2 + sina_tx_2 + 2 cosa_tx_2 + 2 sina_ty_2
   - cosa_ty_2 - 0.4642857142857126 sina_1_sina_2
   + 5.976190476190477 sina_1_cosa_2 - 5.976190476190477 cosa_1_sina_2
   - 0.4642857142857126 cosa_1_cosa_2 - sina_2_tx_1 - 2 sina_2_ty_1
   - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_point_5_inside_2_constraint_0_eq <= 2e+12
 poly_1_point_5_inside_2_constraint_0_eq_false: - 0.9761904761904772 sina_2
   + 4.535714285714287 cosa_2 - sina_tx_2 - 2 cosa_tx_2 - 2 sina_ty_2
   + cosa_ty_2 + 0.4642857142857126 sina_1_sina_2
   - 5.976190476190477 sina_1_cosa_2 + 5.976190476190477 cosa_1_sina_2
   + 0.4642857142857126 cosa_1_cosa_2 + sina_2_tx_1 + 2 sina_2_ty_1
   + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_point_5_inside_2_constraint_0_eq <= 0
 R361: - poly_1_point_5_inside_2 + poly_1_point_5_inside_2_constraint_0_eq
   <= 0
 R362: poly_1_point_5_inside_2 = 0
 R363: poly_1_point_6_inside_2 - poly_1_point_6_inside_2_constraint_0_eq
   <= 0
 poly_1_point_6_inside_2_constraint_0_eq_true: 0.9761904761904772 sina_2
   - 4.535714285714287 cosa_2 + sina_tx_2 + 2 cosa_tx_2 + 2 sina_ty_2
   - cosa_ty_2 + 4.535714285714287 sina_1_sina_2
   + 0.9761904761904772 sina_1_cosa_2 - 0.9761904761904772 cosa_1_sina_2
   + 4.535714285714287 cosa_1_cosa_2 - sina_2_tx_1 - 2 sina_2_ty_1
   - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_point_6_inside_2_constraint_0_eq <= 2e+12
 poly_1_point_6_inside_2_constraint_0_eq_false: - 0.9761904761904772 sina_2
   + 4.535714285714287 cosa_2 - sina_tx_2 - 2 cosa_tx_2 - 2 sina_ty_2
   + cosa_ty_2 - 4.535714285714287 sina_1_sina_2
   - 0.9761904761904772 sina_1_cosa_2 + 0.9761904761904772 cosa_1_sina_2
   - 4.535714285714287 cosa_1_cosa_2 + sina_2_tx_1 + 2 sina_2_ty_1
   + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_point_6_inside_2_constraint_0_eq <= 0
 R366: - poly_1_point_6_inside_2 + poly_1_point_6_inside_2_constraint_0_eq
   <= 0
 R367: poly_1_point_6_inside_2 = 0
 R368: poly_1_spike_point_0_inside_2
   - poly_1_spike_point_0_inside_2_constraint_0_eq <= 0
 poly_1_spike_point_0_inside_2_constraint_0_eq_true:
   0.9761904761904772 sina_2 - 4.535714285714287 cosa_2 + sina_tx_2
   + 2 cosa_tx_2 + 2 sina_ty_2 - cosa_ty_2
   + 5.335714285714287 sina_1_sina_2 + 1.076190476190478 sina_1_cosa_2
   - 1.076190476190478 cosa_1_sina_2 + 5.335714285714287 cosa_1_cosa_2
   - sina_2_tx_1 - 2 sina_2_ty_1 - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_spike_point_0_inside_2_constraint_0_eq <= 2e+12
 poly_1_spike_point_0_inside_2_constraint_0_eq_false:
   - 0.9761904761904772 sina_2 + 4.535714285714287 cosa_2 - sina_tx_2
   - 2 cosa_tx_2 - 2 sina_ty_2 + cosa_ty_2
   - 5.335714285714287 sina_1_sina_2 - 1.076190476190478 sina_1_cosa_2
   + 1.076190476190478 cosa_1_sina_2 - 5.335714285714287 cosa_1_cosa_2
   + sina_2_tx_1 + 2 sina_2_ty_1 + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_spike_point_0_inside_2_constraint_0_eq <= 0
 R371: - poly_1_spike_point_0_inside_2
   + poly_1_spike_point_0_inside_2_constraint_0_eq <= 0
 R372: poly_1_spike_point_1_inside_2
   - poly_1_spike_point_1_inside_2_constraint_0_eq <= 0
 poly_1_spike_point_1_inside_2_constraint_0_eq_true:
   0.9761904761904772 sina_2 - 4.535714285714287 cosa_2 + sina_tx_2
   + 2 cosa_tx_2 + 2 sina_ty_2 - cosa_ty_2
   + 5.335714285714287 sina_1_sina_2 - 4.923809523809522 sina_1_cosa_2
   + 4.923809523809522 cosa_1_sina_2 + 5.335714285714287 cosa_1_cosa_2
   - sina_2_tx_1 - 2 sina_2_ty_1 - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_spike_point_1_inside_2_constraint_0_eq <= 2e+12
 poly_1_spike_point_1_inside_2_constraint_0_eq_false:
   - 0.9761904761904772 sina_2 + 4.535714285714287 cosa_2 - sina_tx_2
   - 2 cosa_tx_2 - 2 sina_ty_2 + cosa_ty_2
   - 5.335714285714287 sina_1_sina_2 + 4.923809523809522 sina_1_cosa_2
   - 4.923809523809522 cosa_1_sina_2 - 5.335714285714287 cosa_1_cosa_2
   + sina_2_tx_1 + 2 sina_2_ty_1 + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_spike_point_1_inside_2_constraint_0_eq <= 0
 R375: - poly_1_spike_point_1_inside_2
   + poly_1_spike_point_1_inside_2_constraint_0_eq <= 0
 R376: poly_1_spike_point_2_inside_2
   - poly_1_spike_point_2_inside_2_constraint_0_eq <= 0
 poly_1_spike_point_2_inside_2_constraint_0_eq_true:
   0.9761904761904772 sina_2 - 4.535714285714287 cosa_2 + sina_tx_2
   + 2 cosa_tx_2 + 2 sina_ty_2 - cosa_ty_2
   + 1.735714285714287 sina_1_sina_2 - 6.123809523809522 sina_1_cosa_2
   + 6.123809523809522 cosa_1_sina_2 + 1.735714285714287 cosa_1_cosa_2
   - sina_2_tx_1 - 2 sina_2_ty_1 - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_spike_point_2_inside_2_constraint_0_eq <= 2e+12
 poly_1_spike_point_2_inside_2_constraint_0_eq_false:
   - 0.9761904761904772 sina_2 + 4.535714285714287 cosa_2 - sina_tx_2
   - 2 cosa_tx_2 - 2 sina_ty_2 + cosa_ty_2
   - 1.735714285714287 sina_1_sina_2 + 6.123809523809522 sina_1_cosa_2
   - 6.123809523809522 cosa_1_sina_2 - 1.735714285714287 cosa_1_cosa_2
   + sina_2_tx_1 + 2 sina_2_ty_1 + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_spike_point_2_inside_2_constraint_0_eq <= 0
 R379: - poly_1_spike_point_2_inside_2
   + poly_1_spike_point_2_inside_2_constraint_0_eq <= 0
 R380: poly_1_spike_point_3_inside_2
   - poly_1_spike_point_3_inside_2_constraint_0_eq <= 0
 poly_1_spike_point_3_inside_2_constraint_0_eq_true:
   0.9761904761904772 sina_2 - 4.535714285714287 cosa_2 + sina_tx_2
   + 2 cosa_tx_2 + 2 sina_ty_2 - cosa_ty_2
   - 5.464285714285713 sina_1_sina_2 - 2.523809523809523 sina_1_cosa_2
   + 2.523809523809523 cosa_1_sina_2 - 5.464285714285713 cosa_1_cosa_2
   - sina_2_tx_1 - 2 sina_2_ty_1 - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_spike_point_3_inside_2_constraint_0_eq <= 2e+12
 poly_1_spike_point_3_inside_2_constraint_0_eq_false:
   - 0.9761904761904772 sina_2 + 4.535714285714287 cosa_2 - sina_tx_2
   - 2 cosa_tx_2 - 2 sina_ty_2 + cosa_ty_2
   + 5.464285714285713 sina_1_sina_2 + 2.523809523809523 sina_1_cosa_2
   - 2.523809523809523 cosa_1_sina_2 + 5.464285714285713 cosa_1_cosa_2
   + sina_2_tx_1 + 2 sina_2_ty_1 + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_spike_point_3_inside_2_constraint_0_eq <= 0
 R383: - poly_1_spike_point_3_inside_2
   + poly_1_spike_point_3_inside_2_constraint_0_eq <= 0
 R384: poly_1_spike_point_4_inside_2
   - poly_1_spike_point_4_inside_2_constraint_0_eq <= 0
 poly_1_spike_point_4_inside_2_constraint_0_eq_true:
   0.9761904761904772 sina_2 - 4.535714285714287 cosa_2 + sina_tx_2
   + 2 cosa_tx_2 + 2 sina_ty_2 - cosa_ty_2
   - 6.664285714285712 sina_1_sina_2 + 1.076190476190477 sina_1_cosa_2
   - 1.076190476190477 cosa_1_sina_2 - 6.664285714285712 cosa_1_cosa_2
   - sina_2_tx_1 - 2 sina_2_ty_1 - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_spike_point_4_inside_2_constraint_0_eq <= 2e+12
 poly_1_spike_point_4_inside_2_constraint_0_eq_false:
   - 0.9761904761904772 sina_2 + 4.535714285714287 cosa_2 - sina_tx_2
   - 2 cosa_tx_2 - 2 sina_ty_2 + cosa_ty_2
   + 6.664285714285712 sina_1_sina_2 - 1.076190476190477 sina_1_cosa_2
   + 1.076190476190477 cosa_1_sina_2 + 6.664285714285712 cosa_1_cosa_2
   + sina_2_tx_1 + 2 sina_2_ty_1 + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_spike_point_4_inside_2_constraint_0_eq <= 0
 R387: - poly_1_spike_point_4_inside_2
   + poly_1_spike_point_4_inside_2_constraint_0_eq <= 0
 R388: poly_1_spike_point_5_inside_2
   - poly_1_spike_point_5_inside_2_constraint_0_eq <= 0
 poly_1_spike_point_5_inside_2_constraint_0_eq_true:
   0.9761904761904772 sina_2 - 4.535714285714287 cosa_2 + sina_tx_2
   + 2 cosa_tx_2 + 2 sina_ty_2 - cosa_ty_2
   - 0.6642857142857128 sina_1_sina_2 + 7.076190476190477 sina_1_cosa_2
   - 7.076190476190477 cosa_1_sina_2 - 0.6642857142857128 cosa_1_cosa_2
   - sina_2_tx_1 - 2 sina_2_ty_1 - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_spike_point_5_inside_2_constraint_0_eq <= 2e+12
 poly_1_spike_point_5_inside_2_constraint_0_eq_false:
   - 0.9761904761904772 sina_2 + 4.535714285714287 cosa_2 - sina_tx_2
   - 2 cosa_tx_2 - 2 sina_ty_2 + cosa_ty_2
   + 0.6642857142857128 sina_1_sina_2 - 7.076190476190477 sina_1_cosa_2
   + 7.076190476190477 cosa_1_sina_2 + 0.6642857142857128 cosa_1_cosa_2
   + sina_2_tx_1 + 2 sina_2_ty_1 + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_spike_point_5_inside_2_constraint_0_eq <= 0
 R391: - poly_1_spike_point_5_inside_2
   + poly_1_spike_point_5_inside_2_constraint_0_eq <= 0
 R392: poly_1_spike_point_6_inside_2
   - poly_1_spike_point_6_inside_2_constraint_0_eq <= 0
 poly_1_spike_point_6_inside_2_constraint_0_eq_true:
   0.9761904761904772 sina_2 - 4.535714285714287 cosa_2 + sina_tx_2
   + 2 cosa_tx_2 + 2 sina_ty_2 - cosa_ty_2
   + 5.335714285714287 sina_1_sina_2 + 1.076190476190478 sina_1_cosa_2
   - 1.076190476190478 cosa_1_sina_2 + 5.335714285714287 cosa_1_cosa_2
   - sina_2_tx_1 - 2 sina_2_ty_1 - 2 cosa_2_tx_1 + cosa_2_ty_1
   + 2e+12 poly_1_spike_point_6_inside_2_constraint_0_eq <= 2e+12
 poly_1_spike_point_6_inside_2_constraint_0_eq_false:
   - 0.9761904761904772 sina_2 + 4.535714285714287 cosa_2 - sina_tx_2
   - 2 cosa_tx_2 - 2 sina_ty_2 + cosa_ty_2
   - 5.335714285714287 sina_1_sina_2 - 1.076190476190478 sina_1_cosa_2
   + 1.076190476190478 cosa_1_sina_2 - 5.335714285714287 cosa_1_cosa_2
   + sina_2_tx_1 + 2 sina_2_ty_1 + 2 cosa_2_tx_1 - cosa_2_ty_1
   - 2e+12 poly_1_spike_point_6_inside_2_constraint_0_eq <= 0
 R395: - poly_1_spike_point_6_inside_2
   + poly_1_spike_point_6_inside_2_constraint_0_eq <= 0
 sinacosa_0: [ sina_0 ^2 + cosa_0 ^2 ] = 1
 sina_tx_0: - sina_tx_0 + [ tx_0 * sina_0 ] = 0
 cosa_tx_0: - cosa_tx_0 + [ tx_0 * cosa_0 ] = 0
 sina_ty_0: - sina_ty_0 + [ ty_0 * sina_0 ] = 0
 cosa_ty_0: - cosa_ty_0 + [ ty_0 * cosa_0 ] = 0
 sinacosa_1: [ sina_1 ^2 + cosa_1 ^2 ] = 1
 sina_tx_1: - sina_tx_1 + [ tx_1 * sina_1 ] = 0
 cosa_tx_1: - cosa_tx_1 + [ tx_1 * cosa_1 ] = 0
 sina_ty_1: - sina_ty_1 + [ ty_1 * sina_1 ] = 0
 cosa_ty_1: - cosa_ty_1 + [ ty_1 * cosa_1 ] = 0
 sinacosa_2: [ sina_2 ^2 + cosa_2 ^2 ] = 1
 sina_tx_2: - sina_tx_2 + [ tx_2 * sina_2 ] = 0
 cosa_tx_2: - cosa_tx_2 + [ tx_2 * cosa_2 ] = 0
 sina_ty_2: - sina_ty_2 + [ ty_2 * sina_2 ] = 0
 cosa_ty_2: - cosa_ty_2 + [ ty_2 * cosa_2 ] = 0
 sina_0_sina_1: - sina_0_sina_1 + [ sina_0 * sina_1 ] = 0
 sina_0_cosa_1: - sina_0_cosa_1 + [ sina_0 * cosa_1 ] = 0
 cosa_0_sina_1: - cosa_0_sina_1 + [ cosa_0 * sina_1 ] = 0
 cosa_0_cosa_1: - cosa_0_cosa_1 + [ cosa_0 * cosa_1 ] = 0
 sina_0_sina_2: - sina_0_sina_2 + [ sina_0 * sina_2 ] = 0
 sina_0_cosa_2: - sina_0_cosa_2 + [ sina_0 * cosa_2 ] = 0
 cosa_0_sina_2: - cosa_0_sina_2 + [ cosa_0 * sina_2 ] = 0
 cosa_0_cosa_2: - cosa_0_cosa_2 + [ cosa_0 * cosa_2 ] = 0
 sina_1_sina_2: - sina_1_sina_2 + [ sina_1 * sina_2 ] = 0
 sina_1_cosa_2: - sina_1_cosa_2 + [ sina_1 * cosa_2 ] = 0
 cosa_1_sina_2: - cosa_1_sina_2 + [ cosa_1 * sina_2 ] = 0
 cosa_1_cosa_2: - cosa_1_cosa_2 + [ cosa_1 * cosa_2 ] = 0
 sina_0_tx_1: - sina_0_tx_1 + [ sina_0 * tx_1 ] = 0
 sina_0_ty_1: - sina_0_ty_1 + [ sina_0 * ty_1 ] = 0
 cosa_0_tx_1: - cosa_0_tx_1 + [ cosa_0 * tx_1 ] = 0
 cosa_0_ty_1: - cosa_0_ty_1 + [ cosa_0 * ty_1 ] = 0
 sina_0_tx_2: - sina_0_tx_2 + [ sina_0 * tx_2 ] = 0
 sina_0_ty_2: - sina_0_ty_2 + [ sina_0 * ty_2 ] = 0
 cosa_0_tx_2: - cosa_0_tx_2 + [ cosa_0 * tx_2 ] = 0
 cosa_0_ty_2: - cosa_0_ty_2 + [ cosa_0 * ty_2 ] = 0
 sina_1_tx_0: - sina_1_tx_0 + [ tx_0 * sina_1 ] = 0
 sina_1_ty_0: - sina_1_ty_0 + [ ty_0 * sina_1 ] = 0
 cosa_1_tx_0: - cosa_1_tx_0 + [ tx_0 * cosa_1 ] = 0
 cosa_1_ty_0: - cosa_1_ty_0 + [ ty_0 * cosa_1 ] = 0
 sina_1_tx_2: - sina_1_tx_2 + [ sina_1 * tx_2 ] = 0
 sina_1_ty_2: - sina_1_ty_2 + [ sina_1 * ty_2 ] = 0
 cosa_1_tx_2: - cosa_1_tx_2 + [ cosa_1 * tx_2 ] = 0
 cosa_1_ty_2: - cosa_1_ty_2 + [ cosa_1 * ty_2 ] = 0
 sina_2_tx_0: - sina_2_tx_0 + [ tx_0 * sina_2 ] = 0
 sina_2_ty_0: - sina_2_ty_0 + [ ty_0 * sina_2 ] = 0
 cosa_2_tx_0: - cosa_2_tx_0 + [ tx_0 * cosa_2 ] = 0
 cosa_2_ty_0: - cosa_2_ty_0 + [ ty_0 * cosa_2 ] = 0
 sina_2_tx_1: - sina_2_tx_1 + [ tx_1 * sina_2 ] = 0
 sina_2_ty_1: - sina_2_ty_1 + [ ty_1 * sina_2 ] = 0
 cosa_2_tx_1: - cosa_2_tx_1 + [ tx_1 * cosa_2 ] = 0
 cosa_2_ty_1: - cosa_2_ty_1 + [ ty_1 * cosa_2 ] = 0
Bounds
 tx_0 <= 10000
 ty_0 <= 10000
 -1 <= sina_0 <= 1
 -1 <= cosa_0 <= 1
 tx_1 <= 10000
 ty_1 <= 10000
 -1 <= sina_1 <= 1
 -1 <= cosa_1 <= 1
 tx_2 <= 10000
 ty_2 <= 10000
 -1 <= sina_2 <= 1
 -1 <= cosa_2 <= 1
Binaries
 poly_1_point_0_inside_0 poly_1_point_0_inside_0_constraint_0_eq
 poly_1_point_1_inside_0 poly_1_point_1_inside_0_constraint_0_eq
 poly_1_point_2_inside_0 poly_1_point_2_inside_0_constraint_0_eq
 poly_1_point_3_inside_0 poly_1_point_3_inside_0_constraint_0_eq
 poly_1_point_4_inside_0 poly_1_point_4_inside_0_constraint_0_eq
 poly_1_point_5_inside_0 poly_1_point_5_inside_0_constraint_0_eq
 poly_1_point_6_inside_0 poly_1_point_6_inside_0_constraint_0_eq
 poly_1_spike_point_0_inside_0
 poly_1_spike_point_0_inside_0_constraint_0_eq
 poly_1_spike_point_1_inside_0
 poly_1_spike_point_1_inside_0_constraint_0_eq
 poly_1_spike_point_2_inside_0
 poly_1_spike_point_2_inside_0_constraint_0_eq
 poly_1_spike_point_3_inside_0
 poly_1_spike_point_3_inside_0_constraint_0_eq
 poly_1_spike_point_4_inside_0
 poly_1_spike_point_4_inside_0_constraint_0_eq
 poly_1_spike_point_5_inside_0
 poly_1_spike_point_5_inside_0_constraint_0_eq
 poly_1_spike_point_6_inside_0
 poly_1_spike_point_6_inside_0_constraint_0_eq poly_2_point_0_inside_0
 poly_2_point_0_inside_0_constraint_0_eq poly_2_point_1_inside_0
 poly_2_point_1_inside_0_constraint_0_eq poly_2_point_2_inside_0
 poly_2_point_2_inside_0_constraint_0_eq poly_2_point_3_inside_0
 poly_2_point_3_inside_0_constraint_0_eq poly_2_point_4_inside_0
 poly_2_point_4_inside_0_constraint_0_eq poly_2_point_5_inside_0
 poly_2_point_5_inside_0_constraint_0_eq poly_2_point_6_inside_0
 poly_2_point_6_inside_0_constraint_0_eq poly_2_point_7_inside_0
 poly_2_point_7_inside_0_constraint_0_eq poly_2_spike_point_0_inside_0
 poly_2_spike_point_0_inside_0_constraint_0_eq
 poly_2_spike_point_1_inside_0
 poly_2_spike_point_1_inside_0_constraint_0_eq
 poly_2_spike_point_2_inside_0
 poly_2_spike_point_2_inside_0_constraint_0_eq
 poly_2_spike_point_3_inside_0
 poly_2_spike_point_3_inside_0_constraint_0_eq
 poly_2_spike_point_4_inside_0
 poly_2_spike_point_4_inside_0_constraint_0_eq
 poly_2_spike_point_5_inside_0
 poly_2_spike_point_5_inside_0_constraint_0_eq
 poly_2_spike_point_6_inside_0
 poly_2_spike_point_6_inside_0_constraint_0_eq
 poly_2_spike_point_7_inside_0
 poly_2_spike_point_7_inside_0_constraint_0_eq poly_0_point_0_inside_1
 poly_0_point_0_inside_1_constraint_0_eq poly_0_point_1_inside_1
 poly_0_point_1_inside_1_constraint_0_eq poly_0_point_2_inside_1
 poly_0_point_2_inside_1_constraint_0_eq poly_0_point_3_inside_1
 poly_0_point_3_inside_1_constraint_0_eq poly_0_point_4_inside_1
 poly_0_point_4_inside_1_constraint_0_eq poly_0_point_5_inside_1
 poly_0_point_5_inside_1_constraint_0_eq poly_0_point_6_inside_1
 poly_0_point_6_inside_1_constraint_0_eq poly_0_spike_point_0_inside_1
 poly_0_spike_point_0_inside_1_constraint_0_eq
 poly_0_spike_point_1_inside_1
 poly_0_spike_point_1_inside_1_constraint_0_eq
 poly_0_spike_point_2_inside_1
 poly_0_spike_point_2_inside_1_constraint_0_eq
 poly_0_spike_point_3_inside_1
 poly_0_spike_point_3_inside_1_constraint_0_eq
 poly_0_spike_point_4_inside_1
 poly_0_spike_point_4_inside_1_constraint_0_eq
 poly_0_spike_point_5_inside_1
 poly_0_spike_point_5_inside_1_constraint_0_eq
 poly_0_spike_point_6_inside_1
 poly_0_spike_point_6_inside_1_constraint_0_eq poly_2_point_0_inside_1
 poly_2_point_0_inside_1_constraint_0_eq poly_2_point_1_inside_1
 poly_2_point_1_inside_1_constraint_0_eq poly_2_point_2_inside_1
 poly_2_point_2_inside_1_constraint_0_eq poly_2_point_3_inside_1
 poly_2_point_3_inside_1_constraint_0_eq poly_2_point_4_inside_1
 poly_2_point_4_inside_1_constraint_0_eq poly_2_point_5_inside_1
 poly_2_point_5_inside_1_constraint_0_eq poly_2_point_6_inside_1
 poly_2_point_6_inside_1_constraint_0_eq poly_2_point_7_inside_1
 poly_2_point_7_inside_1_constraint_0_eq poly_2_spike_point_0_inside_1
 poly_2_spike_point_0_inside_1_constraint_0_eq
 poly_2_spike_point_1_inside_1
 poly_2_spike_point_1_inside_1_constraint_0_eq
 poly_2_spike_point_2_inside_1
 poly_2_spike_point_2_inside_1_constraint_0_eq
 poly_2_spike_point_3_inside_1
 poly_2_spike_point_3_inside_1_constraint_0_eq
 poly_2_spike_point_4_inside_1
 poly_2_spike_point_4_inside_1_constraint_0_eq
 poly_2_spike_point_5_inside_1
 poly_2_spike_point_5_inside_1_constraint_0_eq
 poly_2_spike_point_6_inside_1
 poly_2_spike_point_6_inside_1_constraint_0_eq
 poly_2_spike_point_7_inside_1
 poly_2_spike_point_7_inside_1_constraint_0_eq poly_0_point_0_inside_2
 poly_0_point_0_inside_2_constraint_0_eq poly_0_point_1_inside_2
 poly_0_point_1_inside_2_constraint_0_eq poly_0_point_2_inside_2
 poly_0_point_2_inside_2_constraint_0_eq poly_0_point_3_inside_2
 poly_0_point_3_inside_2_constraint_0_eq poly_0_point_4_inside_2
 poly_0_point_4_inside_2_constraint_0_eq poly_0_point_5_inside_2
 poly_0_point_5_inside_2_constraint_0_eq poly_0_point_6_inside_2
 poly_0_point_6_inside_2_constraint_0_eq poly_0_spike_point_0_inside_2
 poly_0_spike_point_0_inside_2_constraint_0_eq
 poly_0_spike_point_1_inside_2
 poly_0_spike_point_1_inside_2_constraint_0_eq
 poly_0_spike_point_2_inside_2
 poly_0_spike_point_2_inside_2_constraint_0_eq
 poly_0_spike_point_3_inside_2
 poly_0_spike_point_3_inside_2_constraint_0_eq
 poly_0_spike_point_4_inside_2
 poly_0_spike_point_4_inside_2_constraint_0_eq
 poly_0_spike_point_5_inside_2
 poly_0_spike_point_5_inside_2_constraint_0_eq
 poly_0_spike_point_6_inside_2
 poly_0_spike_point_6_inside_2_constraint_0_eq poly_1_point_0_inside_2
 poly_1_point_0_inside_2_constraint_0_eq poly_1_point_1_inside_2
 poly_1_point_1_inside_2_constraint_0_eq poly_1_point_2_inside_2
 poly_1_point_2_inside_2_constraint_0_eq poly_1_point_3_inside_2
 poly_1_point_3_inside_2_constraint_0_eq poly_1_point_4_inside_2
 poly_1_point_4_inside_2_constraint_0_eq poly_1_point_5_inside_2
 poly_1_point_5_inside_2_constraint_0_eq poly_1_point_6_inside_2
 poly_1_point_6_inside_2_constraint_0_eq poly_1_spike_point_0_inside_2
 poly_1_spike_point_0_inside_2_constraint_0_eq
 poly_1_spike_point_1_inside_2
 poly_1_spike_point_1_inside_2_constraint_0_eq
 poly_1_spike_point_2_inside_2
 poly_1_spike_point_2_inside_2_constraint_0_eq
 poly_1_spike_point_3_inside_2
 poly_1_spike_point_3_inside_2_constraint_0_eq
 poly_1_spike_point_4_inside_2
 poly_1_spike_point_4_inside_2_constraint_0_eq
 poly_1_spike_point_5_inside_2
 poly_1_spike_point_5_inside_2_constraint_0_eq
 poly_1_spike_point_6_inside_2
 poly_1_spike_point_6_inside_2_constraint_0_eq
End
