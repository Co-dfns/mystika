:Namespace rpr_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

RPR∆01_TEST←{_←X 8⍴1 ⋄ 16 > 3↓M.rpr 16 0 0⍪(8⍴16)⊤0}
RPR∆02_TEST←{_←X 8⍴1 ⋄ 0 ≤ 3↓M.rpr 16 0 0⍪(8⍴16)⊤0}
RPR∆03_TEST←{_←X 16 0 0 ⋄ 3↑M.rpr 16 0 0⍪(8⍴16)⊤0}
RPR∆04_TEST←{_←X 1 ⋄ M.gth∘M.rpr⍨16 0 0⍪(8⍴16)⊤74}
RPR∆05_TEST←{_←X 8⍴1 ⋄ 16 > 3↓M.rpr 16 0 0⍪(8⍴16)⊤74}
RPR∆06_TEST←{_←X 8⍴1 ⋄ 0 ≤ 3↓M.rpr 16 0 0⍪(8⍴16)⊤74}
RPR∆07_TEST←{_←X 16 0 0 ⋄ 3↑M.rpr 16 0 0⍪(8⍴16)⊤74}
RPR∆08_TEST←{_←X 1 ⋄ (16 0 0⍪(8⍴16)⊤20)(⊢M.gth M.rpr)16 0 0⍪(8⍴16)⊤74}
RPR∆09_TEST←{_←X 1 ⋄ (16 0 0⍪(8⍴16)⊤20)(⊣M.leq M.rpr)16 0 0⍪(8⍴16)⊤74}
RPR∆10_TEST←{_←X 8⍴1 ⋄ 16 > 3↓(16 0 0⍪(8⍴16)⊤20)M.rpr 16 0 0⍪(8⍴16)⊤74}
RPR∆11_TEST←{_←X 8⍴1 ⋄ 0 ≤ 3↓(16 0 0⍪(8⍴16)⊤20)M.rpr 16 0 0⍪(8⍴16)⊤74}
RPR∆12_TEST←{_←X 16 0 0 ⋄ 3↑(16 0 0⍪(8⍴16)⊤20)M.rpr 16 0 0⍪(8⍴16)⊤74}
                          
:EndNamespace








