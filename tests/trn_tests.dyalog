:Namespace trn_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

TRN∆01_TEST←{_←X  16⍪(8⍴16)⊤⍉(2 3 4)⍴⍳24 ⋄ M.trn 16⍪(8⍴16)⊤(2 3 4)⍴⍳24}
TRN∆02_TEST←{_←X  16⍪(8⍴16)⊤(1 2 0)⍉(2 3 4)⍴⍳24 ⋄ (1 2 0) M.trn 16⍪(8⍴16)⊤(2 3 4)⍴⍳24}

:EndNamespace
