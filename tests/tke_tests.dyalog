:Namespace tke_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

TKE∆01_TEST←{_←X 16⍪(8⍴16)⊤2↑⍳4 ⋄ 2 M.tke 16⍪(8⍴16)⊤⍳4}
TKE∆02_TEST←{_←X 16⍪(8⍴16)⊤¯2↑⍳4 ⋄ ¯2 M.tke 16⍪(8⍴16)⊤⍳4}
TKE∆03_TEST←{_←X 16⍪(8⍴16)⊤2 2↑3 3⍴⍳9 ⋄ 2 2 M.tke 16⍪(8⍴16)⊤3 3⍴⍳9}
TKE∆04_TEST←{_←X 16⍪(8⍴16)⊤2 2 2↑2 3 4⍴⍳24 ⋄ 2 2 2 M.tke 16⍪(8⍴16)⊤2 3 4⍴⍳24}
TKE∆05_TEST←{_←X 16⍪(8⍴16)⊤2 2 ¯2↑2 3 4⍴⍳24 ⋄ 2 2 ¯2 M.tke 16⍪(8⍴16)⊤2 3 4⍴⍳24}

:EndNamespace
