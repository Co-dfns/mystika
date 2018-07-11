:Namespace cnj_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

CNJ∆01_TEST←{_←X 0J16 0, (8⍴0J16)⊤31191J¯54028 ⋄ M.cnj 0J16 0, (8⍴0J16)⊤31191J54028}
CNJ∆02_TEST←{_←X 0J16 0, (8⍴0J16)⊤31191J54028 ⋄ M.cnj⍣2⊢0J16 0, (8⍴0J16)⊤31191J54028}
CNJ∆03_TEST←{_←X 0J16 0, (8⍴0J16)⊤3643311 ⋄ M.cnj 0J16 0, (8⍴0J16)⊤3643311}
CNJ∆04_TEST←{_←X 16 0, (8⍴16)⊤3643311 ⋄ M.cnj 16 0, (8⍴16)⊤3643311}
CNJ∆05_TEST←{_←X 0J16 0, (8⍴0J16)⊤0 ⋄ M.cnj 0J16 0, (8⍴0J16)⊤0}
CNJ∆06_TEST←{_←X 16 0, (8⍴16)⊤0 ⋄ M.cnj 16 0, (8⍴16)⊤0}


:EndNamespace
