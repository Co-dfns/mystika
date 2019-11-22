:Namespace dec_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

DEC∆01_TEST←{_←X '25337' ⋄ M.dec 16 0 0⍪(8⍴16)⊤25337}
DEC∆02_TEST←{_←X '¯25337' ⋄ M.dec 16 0 1⍪(8⍴16)⊤25337}
DEC∆03_TEST←{_←X '1583.5625' ⋄ M.dec 16 1 0⍪(8⍴16)⊤25337}
DEC∆04_TEST←{_←X '5.864E4' ⋄ M.dec 10 ¯1 0⍪(8⍴10)⊤5864}
DEC∆05_TEST←{_←X '5.864E¯6' ⋄ M.dec 10 9 0⍪(8⍴10)⊤5864}
DEC∆06_TEST←{_←X '0.75' ⋄ M.dec 16 1 0⍪(8⍴16)⊤12}
DEC∆07_TEST←{_←X '104J57' ⋄ M.dec 0J16 0 0⍪(12⍴0J16)⊤104J57}
DEC∆08_TEST←{_←X '104J¯57' ⋄ M.dec 0J16 0 0⍪(12⍴0J16)⊤104J¯57}
DEC∆09_TEST←{_←X '¯104J57' ⋄ M.dec 0J16 0 0⍪(12⍴0J16)⊤¯104J57}
DEC∆10_TEST←{_←X '3.5625J¯6.5' ⋄ M.dec 0J16 1 0⍪(12⍴0J16)⊤104J57}
DEC∆11_TEST←{_←X '¯912J¯1664' ⋄ M.dec 0J16 ¯1 0⍪(12⍴0J16)⊤¯104J57}
DEC∆12_TEST←{_←X ↑'192' '0.75' '92' '¯92' ⋄ M.dec 16⍪¯1 1 0 0⍪0 0 0 1⍪(8⍴16)⊤12 12 92 92}

:EndNamespace







                                                                                             
