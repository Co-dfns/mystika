:Namespace enc_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika


ENC∆01_TEST←{_←X 10 0 0,0 ⋄ M.enc '0'}
ENC∆02_TEST←{_←X 10 0 0,2 6 ⋄ M.enc '26'}
ENC∆03_TEST←{_←X 10 0 1,2 6 ⋄ M.enc '¯26'}
ENC∆04_TEST←{_←X 10 3 0,3 0 7 1 4 ⋄ M.enc '30.714'}
ENC∆05_TEST←{_←X 10 ¯33 0,1 9 4 ⋄ M.enc '1.94E35'}
ENC∆06_TEST←{_←X 0J10 0 0,(5⍴0J10)⊤¯52J63 ⋄ M.enc '¯52J63'}
ENC∆07_TEST←{_←X 0J10 2 0,(6⍴0J10)⊤170J¯203 ⋄ M.enc '¯1.7J2.03'}
ENC∆08_TEST←{_←X 0J10 ¯15 0,(12⍴0J10)⊤¯209J130000000 ⋄ M.enc '1.3E23J2.09E17'}
ENC∆09_TEST←{_←X 10⍪0 0 0 3 ¯33⍪0 0 1 0 0⍪⍉↑¯5↑¨0(2 6)(2 6)(3 0 7 1 4)(1 9 4) ⋄ M.enc '0' '26' '¯26' '30.714' '1.94E35'}
ENC∆10_TEST←{_←X 10⍪0 0 0 3 ¯33⍪0 0 1 0 0⍪⍉↑¯5↑¨0(2 6)(2 6)(3 0 7 1 4)(1 9 4) ⋄ M.enc ↑'0' '26' '¯26' '30.714' '1.94E35'}
ENC∆11_TEST←{_←X 0J10⍪0 0 0 2 ¯15⍪0⍪(12⍴0J10)⊤0 ¯26 ¯52J63 170J¯203 ¯209J130000000 ⋄ M.enc '0' '¯26' '¯52J63' '¯1.7J2.03' '1.3E23J2.09E17'}
ENC∆12_TEST←{_←X 0J10⍪0 0 0 2 ¯15⍪0⍪(12⍴0J10)⊤0 ¯26 ¯52J63 170J¯203 ¯209J130000000 ⋄ M.enc ↑'0' '¯26' '¯52J63' '¯1.7J2.03' '1.3E23J2.09E17'}

:EndNamespace







                                                                                             
