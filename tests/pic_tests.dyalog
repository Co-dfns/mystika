:Namespace pic_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

PIC∆01_TEST←{_←X 16⍪(8⍴16)⊤0 ⋄ M.pic 16⍪(8⍴16)⊤⍳24}
PIC∆02_TEST←{_←X 16⍪(8⍴16)⊤0 ⋄ M.pic 16⍪(8⍴16)⊤2 3⍴⍳6}
PIC∆03_TEST←{_←X 16⍪(8⍴16)⊤0 ⋄ M.pic 16⍪(8⍴16)⊤2 3 4⍴⍳24}
PIC∆04_TEST←{_←X 16⍪(8⍴16)⊤0 ⋄ M.pic 16⍪(8⍴16)⊤2 3 4 5⍴⍳120}
PIC∆05_TEST←{_←X 16⍪(8⍴16)⊤⍳24 ⋄ M.pic ⊂16⍪(8⍴16)⊤⍳24}
PIC∆06_TEST←{_←X 16⍪(8⍴16)⊤8 ⋄ (⊂1 0 2) M.pic 16⍪(8⍴16)⊤2 2 3⍴⍳12}
PIC∆07_TEST←{_←X 16⍪(8⍴16)⊤3 ⋄ 3 M.pic 16⍪(8⍴16)⊤⍳12}

:EndNamespace
