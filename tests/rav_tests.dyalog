:Namespace rav_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

RAV∆01_TEST←{_←X 16⍪0⍪(8⍴16)⊤30⍴⍳6 ⋄ M.rav 16⍪0⍪(8⍴16)⊤2 3 5⍴⍳6}
RAV∆02_TEST←{_←X 16⍪0⍪(8⍴16)⊤⍳15 ⋄ M.rav 16⍪0⍪(8⍴16)⊤5 3⍴⍳15}

:EndNamespace
