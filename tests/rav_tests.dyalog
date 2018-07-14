:Namespace rav_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

RAV∆01_TEST←{_←X 16⍪(8|⍳30)⍪0⍪(8⍴16)⊤⍳30 ⋄ M.rav 16⍪(8|⍳30)⍪0⍪(8⍴16)⊤⍳30}
RAV∆02_TEST←{_←X 16⍪(8|⍳15)⍪0⍪(8⍴16)⊤⍳15 ⋄ M.rav 16⍪(5 3⍴8|⍳15)⍪0⍪(8⍴16)⊤5 3⍴⍳15}

:EndNamespace
