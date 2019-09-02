:Namespace mod_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

MOD∆01_TEST←{_←X  16 0 0⍪(8⍴16)⊤29917 ⋄ (16 0 0⍪(8⍴16)⊤41706) M.mod 16 0 0⍪(8⍴16)⊤1036841077}
MOD∆02_TEST←{_←X  16 0 0⍪(8⍴16)⊤11789 ⋄ (16 0 0⍪(8⍴16)⊤41706) M.mod 16 0 1⍪(8⍴16)⊤1036841077}
MOD∆03_TEST←{_←X  16 0 0⍪(8⍴16)⊤0 ⋄ (16 0 0⍪(8⍴16)⊤41706) M.mod 16 0 0⍪(8⍴16)⊤41706}
MOD∆04_TEST←{_←X  16 0 0⍪(8⍴16)⊤0 ⋄ (16 0 0⍪(8⍴16)⊤41706) M.mod 16 0 1⍪(8⍴16)⊤41706}
MOD∆05_TEST←{_←X  16 0 0⍪(8⍴16)⊤0 ⋄ (16 0 0⍪(8⍴16)⊤41706) M.mod 16 0 0⍪(8⍴16)⊤291942}
MOD∆06_TEST←{_←X  16 0 0⍪(8⍴16)⊤377 ⋄ (16 0 0⍪(8⍴16)⊤1045) M.mod 16⍪0⍪0⍪(8⍴16)⊤377}
MOD∆07_TEST←{_←X  16 0 0⍪(8⍴16)⊤1 ⋄ (16 0 0⍪(8⍴16)⊤1045) M.mod 16⍪0⍪0⍪(8⍴16)⊤1}
MOD∆08_TEST←{_←X  16 0 0⍪(8⍴16)⊤0 ⋄ (16 0 0⍪(8⍴16)⊤1045) M.mod 16⍪0⍪0⍪(8⍴16)⊤0}
MOD∆09_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤38 32 2 ⋄ (16⍪0⍪0⍪(8⍴16)⊤63 138 36) M.mod 16⍪0⍪0⍪(8⍴16)⊤1550}
MOD∆10_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤199 60 212 35 ⋄ (16 0 0⍪(8⍴16)⊤234) M.mod 16⍪0⍪1 0 1 1⍪(8⍴16)⊤737 528 3064 2305}
MOD∆11_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤57 12 78 ⋄ (16⍪0⍪0⍪(8⍴16)⊤223 14 176) M.mod 16⍪0⍪0 1 0⍪(8⍴16)⊤503 2830 1486}
MOD∆12_TEST←{_←X  16 0 0⍪(8⍴16)⊤29917 ⋄ (16 0 0⍪(8⍴16)⊤41706) M.mod 65552 0 0⍪(8⍴16)⊤1036841077}
MOD∆13_TEST←{_←X  16 0 0⍪(8⍴16)⊤29917 ⋄ (65552 0 0⍪(8⍴16)⊤41706) M.mod 16 0 0⍪(8⍴16)⊤1036841077}
MOD∆14_TEST←{_←X  65552 0 0⍪(8⍴16)⊤29917 ⋄ (65552 0 0⍪(8⍴16)⊤41706) M.mod 65552 0 0⍪(8⍴16)⊤1036841077}
MOD∆15_TEST←{_←X  0J16 0 0⍪(8⍴0J16)⊤38J29 ⋄ (0J16 0 0⍪(8⍴0J16)⊤33J139) M.mod 0J16 0 0⍪(8⍴0J16)⊤818J1459}
MOD∆16_TEST←{_←X  10 4 0⍪(8⍴10)⊤22393 ⋄ (10 4 0⍪(8⍴10)⊤57839) M.mod 10 3 0⍪(8⍴10)⊤19591}
MOD∆17_TEST←{_←X  10 4 0⍪(8⍴10)⊤35446 ⋄ (10 4 0⍪(8⍴10)⊤57839) M.mod 10 3 1⍪(8⍴10)⊤19591}

:EndNamespace
