:Namespace cry_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

CRY∆01_TEST←{_←X 14 15 1 15 8 2 12 9 ⋄ 16 M.cry 14 14 17 15 7 18 11 25}
CRY∆02_TEST←{_←X ⍉5 8⍴14 15 1 15 8 2 12 9 ⋄ 16 M.cry ⍉5 8⍴14 14 17 15 7 18 11 25}
CRY∆03_TEST←{_←X 8⍴5 ⋄ 16 M.cry 8⍴5}
CRY∆04_TEST←{_←X 8⍴0 ⋄ 16 M.cry 16,⍨7⍴15}

:EndNamespace
