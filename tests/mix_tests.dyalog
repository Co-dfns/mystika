:Namespace mix_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

MIX∆01_TEST←{_←X 16⍪(8⍴16)⊤⍳4 ⋄ M.mix M.spl 16⍪(8⍴16)⊤⍳4}
MIX∆02_TEST←{_←X 16⍪(8⍴16)⊤2 2⍴⍳4 ⋄ M.mix M.spl 16⍪(8⍴16)⊤2 2⍴⍳4}
MIX∆03_TEST←{_←X 16⍪(8⍴16)⊤2 3 4⍴⍳24 ⋄ M.mix M.spl 16⍪(8⍴16)⊤2 3 4⍴⍳24}
MIX∆04_TEST←{_←X 16⍪(8⍴16)⊤2 3 4 5⍴⍳120 ⋄ M.mix M.spl 16⍪(8⍴16)⊤2 3 4 5⍴⍳120}

:EndNamespace
