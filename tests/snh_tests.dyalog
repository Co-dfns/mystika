:Namespace snh_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

SNH∆01_TEST←{_←X 10 19 0,(16⍴10)⊤0 ⋄ M.snh 10 0 0,(16⍴10)⊤0}
SNH∆02_TEST←{_←X 10 7 0,(10⍴10)⊤8161209051 ⋄ M.snh 10 9 0,⍎¨'7397710068'}
SNH∆03_TEST←{_←X 10 7 1,(10⍴10)⊤¯8161209052 ⋄ M.snh M.sub 10 9 0,⍎¨'7397710068'}
SNH∆04_TEST←{_←X M.r2c 10 14 0,¯1 0J1+.× ⍎¨↑'2701681325800393' '0385373803791938' ⋄ M.snh 0J10 0 0,(16⍴0J10)⊤4J3}
SNH∆05_TEST←{_←X 10⍪13 8 8⍪0 0 1⍪0,⍉⍎¨↑'2728991719' '7271008280' ⋄ M.snh 10⍪0⍪0 0 1⍪(10⍴10)⊤0 4 4}

:EndNamespace


