:Namespace out_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

OUT∆01_TEST←{_←X 16⍪0⍪(9⍴16)⊤64962 32332∘.+45173 18486 46958 ⋄ (16⍪0⍪(9⍴16)⊤64962 32332) M.add M.out 16⍪0⍪(9⍴16)⊤45173 18486 46958}
OUT∆02_TEST←{_←X 16⍪0⍪(9⍴16)⊤64962 32332∘.×45173 18486 46958 ⋄ (16⍪0⍪(9⍴16)⊤64962 32332) M.mul M.out 16⍪0⍪(9⍴16)⊤45173 18486 46958}
OUT∆03_TEST←{_←X 16⍪0⍪(9⍴16)⊤⍉64962 32332∘.+45173 18486 46958 ⋄ (16⍪0⍪(9⍴16)⊤45173 18486 46958) M.add M.out 16⍪0⍪(9⍴16)⊤64962 32332}
OUT∆04_TEST←{_←X 16⍪0⍪(9⍴16)⊤⍉64962 32332∘.×45173 18486 46958 ⋄ (16⍪0⍪(9⍴16)⊤45173 18486 46958) M.mul M.out 16⍪0⍪(9⍴16)⊤64962 32332}
OUT∆05_TEST←{_←X 16⍪0⍪(9⍴16)⊤(3 2⍴⍳6)∘.+5 1 4⍴⍳20 ⋄ (16⍪0⍪(9⍴16)⊤3 2⍴⍳6)M.add M.out 16⍪0⍪(9⍴16)⊤5 1 4⍴⍳20}
OUT∆06_TEST←{_←X 16⍪0⍪(9⍴16)⊤(3 2⍴⍳6)∘.×5 1 4⍴⍳20 ⋄ (16⍪0⍪(9⍴16)⊤3 2⍴⍳6)M.mul M.out 16⍪0⍪(9⍴16)⊤5 1 4⍴⍳20}
OUT∆07_TEST←{_←X 16⍪0⍪(9⍴16)⊤64962 32332∘.-45173 18486 46958 ⋄ (16⍪0⍪(9⍴16)⊤64962 32332) M.sub M.out 16⍪0⍪(9⍴16)⊤45173 18486 46958}
OUT∆08_TEST←{_←X 16⍪0⍪(9⍴16)⊤-⍉64962 32332∘.-45173 18486 46958 ⋄ (16⍪0⍪(9⍴16)⊤45173 18486 46958) M.sub M.out 16⍪0⍪(9⍴16)⊤64962 32332}

:EndNamespace
