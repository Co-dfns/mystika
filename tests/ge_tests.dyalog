:Namespace ge_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

GE∆01_TEST←{_←X 1 ⋄ M.GE(8⍴2)⊤170 145}
GE∆02_TEST←{_←X 0 ⋄ M.GE(8⍴2)⊤145 170}
GE∆03_TEST←{_←X 1 ⋄ M.GE(8⍴2)⊤145 145}

:EndNamespace
