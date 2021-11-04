\Problem name: Cuisine

Minimize
OBJROW: 1200 x_0_humburger_steak + 370 x_0_grilled_aji + 800 x_0_ebi_chili + 1370 x_0_oden + 400 x_0_omlet + 833.33333 x_0_kani_tama + 2280 x_0_curry + 546.66667 x_0_gyoza + 740 x_0_gratin + 1200 x_1_humburger_steak
 + 370 x_1_grilled_aji + 800 x_1_ebi_chili + 1370 x_1_oden + 400 x_1_omlet + 833.33333 x_1_kani_tama + 2280 x_1_curry + 546.66667 x_1_gyoza + 740 x_1_gratin + 1200 x_2_humburger_steak + 370 x_2_grilled_aji
 + 800 x_2_ebi_chili + 1370 x_2_oden + 400 x_2_omlet + 833.33333 x_2_kani_tama + 2280 x_2_curry + 546.66667 x_2_gyoza + 740 x_2_gratin + 1200 x_3_humburger_steak + 370 x_3_grilled_aji + 800 x_3_ebi_chili
 + 1370 x_3_oden + 400 x_3_omlet + 833.33333 x_3_kani_tama + 2280 x_3_curry + 546.66667 x_3_gyoza + 740 x_3_gratin + 1200 x_4_humburger_steak + 370 x_4_grilled_aji + 800 x_4_ebi_chili + 1370 x_4_oden
 + 400 x_4_omlet + 833.33333 x_4_kani_tama + 2280 x_4_curry + 546.66667 x_4_gyoza + 740 x_4_gratin + 1200 x_5_humburger_steak + 370 x_5_grilled_aji + 800 x_5_ebi_chili + 1370 x_5_oden + 400 x_5_omlet
 + 833.33333 x_5_kani_tama + 2280 x_5_curry + 546.66667 x_5_gyoza + 740 x_5_gratin
Subject To
c_must_eat_0:  x_0_humburger_steak + x_0_grilled_aji + x_0_ebi_chili + x_0_oden + x_0_omlet + x_0_kani_tama + x_0_curry + x_0_gyoza + x_0_gratin = 1
c_must_eat_1:  x_1_humburger_steak + x_1_grilled_aji + x_1_ebi_chili + x_1_oden + x_1_omlet + x_1_kani_tama + x_1_curry + x_1_gyoza + x_1_gratin = 1
c_must_eat_2:  x_2_humburger_steak + x_2_grilled_aji + x_2_ebi_chili + x_2_oden + x_2_omlet + x_2_kani_tama + x_2_curry + x_2_gyoza + x_2_gratin = 1
c_must_eat_3:  x_3_humburger_steak + x_3_grilled_aji + x_3_ebi_chili + x_3_oden + x_3_omlet + x_3_kani_tama + x_3_curry + x_3_gyoza + x_3_gratin = 1
c_must_eat_4:  x_4_humburger_steak + x_4_grilled_aji + x_4_ebi_chili + x_4_oden + x_4_omlet + x_4_kani_tama + x_4_curry + x_4_gyoza + x_4_gratin = 1
c_must_eat_5:  x_5_humburger_steak + x_5_grilled_aji + x_5_ebi_chili + x_5_oden + x_5_omlet + x_5_kani_tama + x_5_curry + x_5_gyoza + x_5_gratin = 1
c_ignore_same_humburger_steak:  x_0_humburger_steak + x_1_humburger_steak + x_2_humburger_steak + x_3_humburger_steak + x_4_humburger_steak + x_5_humburger_steak <= 1
c_ignore_same_grilled_aji:  x_0_grilled_aji + x_1_grilled_aji + x_2_grilled_aji + x_3_grilled_aji + x_4_grilled_aji + x_5_grilled_aji <= 1
c_ignore_same_ebi_chili:  x_0_ebi_chili + x_1_ebi_chili + x_2_ebi_chili + x_3_ebi_chili + x_4_ebi_chili + x_5_ebi_chili <= 1
c_ignore_same_oden:  x_0_oden + x_1_oden + x_2_oden + x_3_oden + x_4_oden + x_5_oden <= 1
c_ignore_same_omlet:  x_0_omlet + x_1_omlet + x_2_omlet + x_3_omlet + x_4_omlet + x_5_omlet <= 1
c_ignore_same_kani_tama:  x_0_kani_tama + x_1_kani_tama + x_2_kani_tama + x_3_kani_tama + x_4_kani_tama + x_5_kani_tama <= 1
c_ignore_same_curry:  x_0_curry + x_1_curry + x_2_curry + x_3_curry + x_4_curry + x_5_curry <= 1
c_ignore_same_gyoza:  x_0_gyoza + x_1_gyoza + x_2_gyoza + x_3_gyoza + x_4_gyoza + x_5_gyoza <= 1
c_ignore_same_gratin:  x_0_gratin + x_1_gratin + x_2_gratin + x_3_gratin + x_4_gratin + x_5_gratin <= 1
Bounds
 0 <= x_0_humburger_steak <= 1
 0 <= x_0_grilled_aji <= 1
 0 <= x_0_ebi_chili <= 1
 0 <= x_0_oden <= 1
 0 <= x_0_omlet <= 1
 0 <= x_0_kani_tama <= 1
 0 <= x_0_curry <= 1
 0 <= x_0_gyoza <= 1
 0 <= x_0_gratin <= 1
 0 <= x_1_humburger_steak <= 1
 0 <= x_1_grilled_aji <= 1
 0 <= x_1_ebi_chili <= 1
 0 <= x_1_oden <= 1
 0 <= x_1_omlet <= 1
 0 <= x_1_kani_tama <= 1
 0 <= x_1_curry <= 1
 0 <= x_1_gyoza <= 1
 0 <= x_1_gratin <= 1
 0 <= x_2_humburger_steak <= 1
 0 <= x_2_grilled_aji <= 1
 0 <= x_2_ebi_chili <= 1
 0 <= x_2_oden <= 1
 0 <= x_2_omlet <= 1
 0 <= x_2_kani_tama <= 1
 0 <= x_2_curry <= 1
 0 <= x_2_gyoza <= 1
 0 <= x_2_gratin <= 1
 0 <= x_3_humburger_steak <= 1
 0 <= x_3_grilled_aji <= 1
 0 <= x_3_ebi_chili <= 1
 0 <= x_3_oden <= 1
 0 <= x_3_omlet <= 1
 0 <= x_3_kani_tama <= 1
 0 <= x_3_curry <= 1
 0 <= x_3_gyoza <= 1
 0 <= x_3_gratin <= 1
 0 <= x_4_humburger_steak <= 1
 0 <= x_4_grilled_aji <= 1
 0 <= x_4_ebi_chili <= 1
 0 <= x_4_oden <= 1
 0 <= x_4_omlet <= 1
 0 <= x_4_kani_tama <= 1
 0 <= x_4_curry <= 1
 0 <= x_4_gyoza <= 1
 0 <= x_4_gratin <= 1
 0 <= x_5_humburger_steak <= 1
 0 <= x_5_grilled_aji <= 1
 0 <= x_5_ebi_chili <= 1
 0 <= x_5_oden <= 1
 0 <= x_5_omlet <= 1
 0 <= x_5_kani_tama <= 1
 0 <= x_5_curry <= 1
 0 <= x_5_gyoza <= 1
 0 <= x_5_gratin <= 1
Integers
x_0_humburger_steak x_0_grilled_aji x_0_ebi_chili x_0_oden x_0_omlet x_0_kani_tama x_0_curry x_0_gyoza x_0_gratin x_1_humburger_steak 
x_1_grilled_aji x_1_ebi_chili x_1_oden x_1_omlet x_1_kani_tama x_1_curry x_1_gyoza x_1_gratin x_2_humburger_steak x_2_grilled_aji 
x_2_ebi_chili x_2_oden x_2_omlet x_2_kani_tama x_2_curry x_2_gyoza x_2_gratin x_3_humburger_steak x_3_grilled_aji x_3_ebi_chili 
x_3_oden x_3_omlet x_3_kani_tama x_3_curry x_3_gyoza x_3_gratin x_4_humburger_steak x_4_grilled_aji x_4_ebi_chili x_4_oden 
x_4_omlet x_4_kani_tama x_4_curry x_4_gyoza x_4_gratin x_5_humburger_steak x_5_grilled_aji x_5_ebi_chili x_5_oden x_5_omlet 
x_5_kani_tama x_5_curry x_5_gyoza x_5_gratin 
End
