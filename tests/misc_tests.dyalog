:Namespace misc_tests

⎕IO ⎕ML←0 1

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika ⋄ #.UT.sac←1

MA_TEST←{_←X 64⍴0 ⋄ (64⍴1)M.MA¯64↑1}
MS_TEST←{_←X 0,63↑(32⍴1) ⋄ (64↑1)M.MS¯64↑32↑1}
HX_TEST←{_←X'0123456789abcdef' ⋄ M.HX ,⍉(4⍴2)⊤⍳16}
IE_TEST←{_←X 1 ⋄ (8⍴1 0) M.IE 8⍴1 0 0}

XTIMES∆1_TEST←{_←X 4⍴2 ⋄ ⍴M.XTIMES∆H ⍳16}
XTIMES∆2_TEST←{_←X 16 ⋄ ⊃⍴⊃0⌷(⍳8) M.XTIMES∆E ⍳9}
XTIMES∆3_TEST←{_←X 16 ⋄ ⊃⍴⊃1⌷(⍳8) M.XTIMES∆E ⍳9}
XTIMES∆4_TEST←{_←X 5⍴1 ⋄ 9○(M.XTIMES∆U 10)*10}
XTIMES∆5_TEST←{_←X (3⍴2)⍴1 ⋄ (M.XTIMES∆H+M.XTIMES∆U⍴8↑1)M.XTIMES∆F(3⍴2)⍴8↑1}
XTIMES∆6_TEST←{_←X 8⍴1 ⋄ M.XTIMES∆FT 8↑1}
XTIMES∆7_TEST←{_←X 8↑1 ⋄ M.XTIMES∆IFT 8⍴1}
XTIMES∆8_TEST←{_←X ¯15↑8↑1 ⋄ ⌊0.5+9○(8↑1) M.XTIMES∆RC 1⌽8↑1}
XTIMES∆9_TEST←{_←X (6⍴0 1 1),2 0 ⋄ M.C 8⍴0,⍪1+⍳4}
XTIMES∆10_TEST←{_←X 8⍴1 ⋄ (4⍴1) M.XTIMES∆M (4↑1),1}

I∆1_TEST←{_←X 1,¯64↑1 ⋄ (64⍴1) M.I∆R 65↑1}

:EndNamespace
