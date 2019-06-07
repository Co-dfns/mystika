:Namespace sha_chron

⎕IO ⎕ML ⎕WX←0 1 3

M←#.mystika

m1←,⍉(8⍴2)⊤⎕UCS 'abc'
m2←,⍉(8⍴2)⊤⎕UCS 'abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq'
m3←,⍉(8⍴2)⊤⎕UCS 'abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu'

sha_chron_01←'256 M.SHA.sum m1' '256 M.SHA.sum m2'
sha_chron_02←'384 M.SHA.sum m1' '384 M.SHA.sum m3'
sha_chron_03←'512 M.SHA.sum m1' '512 M.SHA.sum m3'

:EndNamespace
