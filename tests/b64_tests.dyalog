:Namespace b64_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

B64∆01_TEST←{_←X M.a64 ⋄ M.b64 64 0 0,⍳64}
B64∆02_TEST←{_←X 64 0 0,⍳64 ⋄ M.b64 M.a64}
B64∆03_TEST←{_←X 'CBd2JS' ⋄ M.b64 64 0 0,(6⍴64)⊤2172084818}
B64∆04_TEST←{_←X 64 0 0,(6⍴64)⊤2172084818 ⋄ M.b64 'CBd2JS'}
B64∆05_TEST←{_←X 'CBd2JS' ⋄ M.b64 16 0 0,(8⍴16)⊤2172084818}
B64∆06_TEST←{_←X 16 0 0,(9⍴16)⊤2172084818 ⋄ 16 M.b64 'CBd2JS'}

:EndNamespace



