:Namespace hex_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

HEX∆01_TEST←{_←X'0123456789abcdef' ⋄ M.hex ,⍉(4⍴2)⊤⍳16}
HEX∆02_TEST←{_←X'0123456789abcdef' ⋄ M.hex ⍳16}
HEX∆03_TEST←{x←'000102030405060708090a0b0c0d0e0f'
 _←X x,'101112131415161718191a1b1c1d1e1f'
 8 M.hex ⍳32}
HEX∆04_TEST←{_←X'000102030405060708090a0b0c0d0e0f' ⋄ 8 M.hex ⍳16}
HEX∆05_TEST←{_←X'01234' ⋄ 5 M.hex 0 4 17 20}
HEX∆06_TEST←{_←X'01234b8' ⋄ 5 M.hex 0 4 17 20 23} ⍝ Credit: Nicolle's crazy

:EndNamespace
