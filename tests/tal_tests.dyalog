:Namespace tal_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

TAL∆01_TEST←{_←X 1 ⋄ M.tal 16 0 0,(8⍴16)⊤42}
TAL∆02_TEST←{_←X 5 ⋄ M.tal 16⍪0⍪0⍪(8⍴16)⊤5⍴42}
TAL∆03_TEST←{_←X 4 ⋄ M.tal 16⍪0⍪0⍪(8⍴16)⊤4 7⍴42}

:EndNamespace
