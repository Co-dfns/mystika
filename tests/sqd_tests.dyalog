:Namespace sqd_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 
                                                            
SQD∆01_TEST←{_←X 16⍪(8⍴16)⊤⌷5 5 5⍴⍳125 ⋄ M.sqd 16⍪(8⍴16)⊤5 5 5⍴⍳125 }   
SQD∆02_TEST←{_←X 16⍪(8⍴16)⊤4⌷5 5 5⍴⍳125 ⋄ 4 M.sqd 16⍪(8⍴16)⊤5 5 5⍴⍳125 }
SQD∆03_TEST←{_←X 16⍪(8⍴16)⊤2 4⌷5 5 5⍴⍳125 ⋄ 2 4 M.sqd 16⍪(8⍴16)⊤5 5 5⍴⍳125 } 
SQD∆04_TEST←{_←X 16⍪(8⍴16)⊤89⌷⍳125 ⋄ 89 M.sqd 16⍪(8⍴16)⊤⍳125 }

:EndNamespace

