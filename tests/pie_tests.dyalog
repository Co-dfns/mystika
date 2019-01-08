:Namespace pie_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

PIE∆01_TEST←{_←X 10 57 0,⍎¨'3141592653589793238462643383279502884197169399375105820974' ⋄ M.pie 10⍪0⍪0⍪(58⍴10)⊤1}
PIE∆02_TEST←{_←X 10⍪57⍪0⍪(58⍴10)⊤0 ⋄ M.pie 10⍪0⍪0⍪(58⍴10)⊤0}
PIE∆03_TEST←{_←X 10 57 1,9-⍎¨'3141592653589793238462643383279502884197169399375105820973' ⋄ M.pie 10⍪0⍪1⍪(58⍴10)⊤¯1}
PIE∆04_TEST←{_←X 10 55 0,⍎¨'4995132319207771249155602979414409585873499345006418255350' ⋄ M.pie 10⍪0⍪0⍪(58⍴10)⊤159} 
PIE∆05_TEST←{z←(61↑10),⍪10 55 0,⍎¨'4995132319207771249155602979414409585873499345006418255350'
 z,←10 57 0,⍎¨'3141592653589793238462643383279502884197169399375105820974'
 z,←10 57 1,9-⍎¨'3141592653589793238462643383279502884197169399375105820973' ⋄ _←X z ⋄ M.pie 10⍪0⍪0 0 0 1⍪(58⍴10)⊤0 159 1 ¯1}
PIE∆06_TEST←{_←X  10 57 0,⍎¨'1570796326794896619231321691639751442098584699687552910487' ⋄ M.pie 10⍪1⍪0⍪(58⍴10)⊤5}
PIE∆07_TEST←{_←X  10 64 0,⍎¨'3141592653589793238462643383279502884197169399375105820974' ⋄ M.pie 10⍪7⍪0⍪(58⍴10)⊤1}
PIE∆08_TEST←{z←⊂'1570796326794896619231321691639751442098584699687552910487'
 z,←⊂'2513274122871834590770114706623602307357735519500084656779'
 _←X 58 M.pla M.cry 0J10⍪56⍪0⍪(60⍴0J1 ¯1 0J¯1 1)×¯60↑10J1+.×⍎¨↑ z ⋄ M.pie 0J10 0 0,(58⍴0J10)⊤8J5}

:EndNamespace


