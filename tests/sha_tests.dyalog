:Namespace sha_tests

⎕IO ⎕ML←0 1

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

SHA512∆H1_TEST←{h←'ddaf35a193617abacc417349ae20413112e6fa4e89a97ea2'
 h,←'0a9eeee64b55d39a2192992a274fc1a836ba3c23a3feebbd454d4423643ce80e'
 h,←'2a9ac94fa54ca49f' ⋄ _←X h
 '0123456789abcdef'[2⊥⍉128 4⍴512 M.SHA.H,⍉(8⍴2)⊤⎕UCS 'abc']}
SHA512∆H2_TEST←{h←'8e959b75dae313da8cf4f72814fc143f8f7779c6eb9f7fa1'
 h,←'7299aeadb6889018501d289e4900f7e4331b99dec4b5433ac7d329eeb6dd2654'
 h,←'5e96e55b874be909' ⋄ _←X h
 m←'abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmn'
 m,←'hijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu'
 '0123456789abcdef'[2⊥⍉128 4⍴512 M.SHA.H,⍉(8⍴2)⊤⎕UCS m]}
SHA384∆H1_TEST←{h←'cb00753f45a35e8bb5a03d699ac65007272c32ab0eded163'
 h,←'1a8b605a43ff5bed8086072ba1e7cc2358baeca134c825a7' ⋄ _←X h
 '0123456789abcdef'[2⊥⍉96 4⍴384 M.SHA.H,⍉(8⍴2)⊤⎕UCS 'abc']}
SHA384∆H2_TEST←{h←'09330c33f71147e83d192fc782cd1b4753111b173b3b05d2'
 h,←'2fa08086e3b0f712fcc7c71a557e2db966c3e9fa91746039' ⋄ _←X h
 m←'abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmn'
 m,←'hijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu'
 '0123456789abcdef'[2⊥⍉96 4⍴384 M.SHA.H,⍉(8⍴2)⊤⎕UCS m]}
SHA256∆H1_TEST←{h←'ba7816bf8f01cfea414140de5dae2223b00361a396177a9c'
 h,←'b410ff61f20015ad' ⋄ _←X h
 '0123456789abcdef'[2⊥⍉64 4⍴256 M.SHA.H,⍉(8⍴2)⊤⎕UCS 'abc']}
SHA256∆H2_TEST←{h←'248d6a61d20638b8e5c026930c3e6039a33ce45964ff2167'
 h,←'f6ecedd419db06c1' ⋄ _←X h
 m←'abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq'
 '0123456789abcdef'[2⊥⍉64 4⍴256 M.SHA.H,⍉(8⍴2)⊤⎕UCS m]}

SHA384∆1_TEST←{z←↑'cbbb9d5dc1059ed8' '629a292a367cd507' '9159015a3070dd17'
 z⍪←↑'152fecd8f70e5939' '67332667ffc00b31' '8eb44a8768581511'
 z⍪←↑'db0c2e0d64f98fa7' '47b5481dbefa4fa4' ⋄ _←X z ⋄ M.hex⍤1⊢M.SHA.H0∆384}

SHA256∆00_TEST←{_←X,256 ⋄ ⍴256 M.SHA.H⍬} ⋄ SHA256∆01_TEST←{_←X 1 ⋄ ≢⍴256 M.SHA.H⍬}
SHA256∆03_TEST←{_←X 8 32 ⋄ ⍴M.SHA.H0∆256}
SHA256∆04_TEST←{z←↑'6a09e667' 'bb67ae85' '3c6ef372' 'a54ff53a' '510e527f'
 z⍪←↑'9b05688c' '1f83d9ab' '5be0cd19' ⋄ _←X z ⋄ M.hex⍤1⊢M.SHA.H0∆256}
SHA256∆05_TEST←{_←X 1 16 32⍴1,(447⍴0),64⍴0 ⋄ 256 M.SHA.P⍬}
SHA256∆06_TEST←{_←X 1 16 32⍴1 1,(446⍴0),(63⍴0),1 ⋄ 256 M.SHA.P ,1}

SHA512∆00_TEST←{_←X,512 ⋄ ⍴512M.SHA.H⍬} ⋄ SHA512∆01_TEST←{_←X 1 ⋄ ≢⍴512M.SHA.H⍬}
SHA512∆03_TEST←{_←X 1 ⋄ ^/⊃0 1∨.=⊂512M.SHA.H⍬}
SHA512∆04_TEST←{_←X 1 16 64⍴1,(895⍴0),128⍴0 ⋄ 512 M.SHA.P⍬}
SHA512∆05_TEST←{_←X 1 16 64⍴1 1,(894⍴0),(127⍴0),1 ⋄ 512 M.SHA.P ,1}
SHA512∆06_TEST←{_←X 8 64 ⋄ ⍴M.SHA.H0∆512}
SHA512∆07_TEST←{z←↑'6a09e667f3bcc908' 'bb67ae8584caa73b' '3c6ef372fe94f82b'
 z⍪←↑'a54ff53a5f1d36f1' '510e527fade682d1' '9b05688c2b3e6c1f' '1f83d9abfb41bd6b'
 z⍪←⍉⍪'5be0cd19137e2179' ⋄ _←X z ⋄ M.hex⍤1⊢M.SHA.H0∆512}
SHA512∆08_TEST←{_←X ¯64↑(6↑1),(5↑1),25↑1 ⋄ ¯28 ¯34 ¯39 M.SHA.S 64↑1}
SHA512∆09_TEST←{_←X ¯64↑(4↑1),(23↑1),23↑1 ⋄ ¯14 ¯18 ¯41M.SHA.S 64↑1}
SHA512∆10_TEST←{_←X ¯64↑(15↑7⍴1),(6↑1),(27↑1 1),(7↑6⍴1),8⍴1 ⋄
 ¯1 ¯8(7 M.SHA.s)¯64↑(33↑1),16⍴1}
SHA512∆11_TEST←{_←X ¯64↑(10↑9⍴1),(8↑6⍴1),(13↑1),(11↑1),(16↑9⍴1),3⍴1 ⋄
 ¯19 ¯61(6 M.SHA.s)¯64↑(33↑1),16⍴1}
SHA512∆12_TEST←{_←X ¯64↑61↑1 0 1 1 1 ⋄ M.SHA.M 8 64↑(3⍴2)⊤⍳8}
SHA512∆13_TEST←{_←X (4⍴0 1),¯4↑1 1 ⋄ M.SHA.C ¯4⊖8 8↑(3⍴2)⊤⍳8}
SHA512∆14_TEST←{_←X 80,80⍴64 ⋄ k←M.SHA.GK0 512 ⋄ (⍴k),≢¨k}
SHA512∆15_TEST←{z←↑'428a2f98d728ae22' '7137449123ef65cd' 'b5c0fbcfec4d3b2f'
z⍪←↑'e9b5dba58189dbbc' '3956c25bf348b538' '59f111f1b605d019' '923f82a4af194f9b'
z⍪←↑'ab1c5ed5da6d8118' 'd807aa98a3030242' '12835b0145706fbe' '243185be4ee4b28c'
z⍪←↑'550c7dc3d5ffb4e2' '72be5d74f27b896f' '80deb1fe3b1696b1' '9bdc06a725c71235'
z⍪←↑'c19bf174cf692694' 'e49b69c19ef14ad2' 'efbe4786384f25e3' '0fc19dc68b8cd5b5'
z⍪←↑'240ca1cc77ac9c65' '2de92c6f592b0275' '4a7484aa6ea6e483' '5cb0a9dcbd41fbd4'
z⍪←↑'76f988da831153b5' '983e5152ee66dfab' 'a831c66d2db43210' 'b00327c898fb213f'
z⍪←↑'bf597fc7beef0ee4' 'c6e00bf33da88fc2' 'd5a79147930aa725' '06ca6351e003826f'
z⍪←↑'142929670a0e6e70' '27b70a8546d22ffc' '2e1b21385c26c926' '4d2c6dfc5ac42aed'
z⍪←↑'53380d139d95b3df' '650a73548baf63de' '766a0abb3c77b2a8' '81c2c92e47edaee6'
z⍪←↑'92722c851482353b' 'a2bfe8a14cf10364' 'a81a664bbc423001' 'c24b8b70d0f89791'
z⍪←↑'c76c51a30654be30' 'd192e819d6ef5218' 'd69906245565a910' 'f40e35855771202a'
z⍪←↑'106aa07032bbd1b8' '19a4c116b8d2d0c8' '1e376c085141ab53' '2748774cdf8eeb99'
z⍪←↑'34b0bcb5e19b48a8' '391c0cb3c5c95a63' '4ed8aa4ae3418acb' '5b9cca4f7763e373'
z⍪←↑'682e6ff3d6b2b8a3' '748f82ee5defb2fc' '78a5636f43172f60' '84c87814a1f0ab72'
z⍪←↑'8cc702081a6439ec' '90befffa23631e28' 'a4506cebde82bde9' 'bef9a3f7b2c67915'
z⍪←↑'c67178f2e372532b' 'ca273eceea26619c' 'd186b8c721c0c207' 'eada7dd6cde0eb1e'
z⍪←↑'f57d4f7fee6ed178' '06f067aa72176fba' '0a637dc5a2c898a6' '113f9804bef90dae'
z⍪←↑'1b710b35131c471b' '28db77f523047d84' '32caab7b40c72493' '3c9ebe0a15c9bebc'
z⍪←↑'431d67c49c100d4c' '4cc5d4becb3e42b6' '597f299cfc657e2a' '5fcb6fab3ad6faec'
 z⍪←⍉⍪'6c44198c4a475817' ⋄ _←X z ⋄ M.hex⍤1⊢↑M.SHA.GK0 512}
SHA512∆16_TEST←{_←X 8 64⍴4 64↑1 64⍴0 1 ⋄ (64⍴¨0(0 1))(512M.SHA.Z)8 64⍴0}
SHA512∆17_TEST←{A←(34↑(3↑1),(4⍴1),0,(5⍴1),0 1,(8⍴¯4↑1 1),1),1
 A,←¯29↑1 0 1 0 0,(4⍴1),0 1 1,¯8↑1 0 0 ⋄ _←X A
 16⌷512M.SHA.W 16 64⍴¯64↑(33↑1),16⍴1}
SHA512∆19_TEST←{16 64↑512M.SHA.W 80 64↑X 16 64⍴(5⍴2)⊤⍳16}
SHA512∆20_TEST←{_←X 8 64↑2 64⍴1 ⋄ (64⍴¨0 0)(512M.SHA.Z)8 64↑1 64⍴1 }

:EndNamespace
