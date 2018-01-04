:Namespace spl_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

SPL∆01_TEST←{_←X 16⍪¨(⊂8⍴16)⊤¨↓⍳4 ⋄ M.spl 16⍪(8⍴16)⊤⍳4}
SPL∆02_TEST←{_←X 16⍪¨(⊂8⍴16)⊤¨↓2 2⍴⍳4 ⋄ M.spl 16⍪(8⍴16)⊤2 2⍴⍳4}
SPL∆03_TEST←{_←X 16⍪¨(⊂8⍴16)⊤¨↓2 3 4⍴⍳24 ⋄ M.spl 16⍪(8⍴16)⊤2 3 4⍴⍳24}
SPL∆04_TEST←{_←X 16⍪¨(⊂8⍴16)⊤¨↓2 3 4 5⍴⍳120 ⋄ M.spl 16⍪(8⍴16)⊤2 3 4 5⍴⍳120}

:EndNamespace
