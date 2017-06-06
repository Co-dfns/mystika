:Namespace misc_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

HX_TEST←{_←X'0123456789abcdef' ⋄ M.HX ,⍉(4⍴2)⊤⍳16}

:EndNamespace
