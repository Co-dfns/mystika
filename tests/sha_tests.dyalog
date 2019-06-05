:Namespace sha_tests

⎕IO ⎕ML←0 1

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

m1←'abc'
m2←'abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq'
m3←'abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmn'
m3,←'hijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu'

SHA512∆H1_TEST←{h←'ddaf35a193617abacc417349ae20413112e6fa4e89a97ea2'
 h,←'0a9eeee64b55d39a2192992a274fc1a836ba3c23a3feebbd454d4423643ce80e'
 h,←'2a9ac94fa54ca49f' ⋄ _←X h
 M.hex 512 M.SHA.sum,⍉(8⍴2)⊤⎕UCS m1}
SHA512∆H2_TEST←{h←'8e959b75dae313da8cf4f72814fc143f8f7779c6eb9f7fa1'
 h,←'7299aeadb6889018501d289e4900f7e4331b99dec4b5433ac7d329eeb6dd2654'
 h,←'5e96e55b874be909' ⋄ _←X h
 M.hex 512 M.SHA.sum,⍉(8⍴2)⊤⎕UCS m3}
SHA384∆H1_TEST←{h←'cb00753f45a35e8bb5a03d699ac65007272c32ab0eded163'
 h,←'1a8b605a43ff5bed8086072ba1e7cc2358baeca134c825a7' ⋄ _←X h
 M.hex 384 M.SHA.sum,⍉(8⍴2)⊤⎕UCS m1}
SHA384∆H2_TEST←{h←'09330c33f71147e83d192fc782cd1b4753111b173b3b05d2'
 h,←'2fa08086e3b0f712fcc7c71a557e2db966c3e9fa91746039' ⋄ _←X h
 M.hex 384 M.SHA.sum,⍉(8⍴2)⊤⎕UCS m3}
SHA256∆H1_TEST←{h←'ba7816bf8f01cfea414140de5dae2223b00361a396177a9c'
 h,←'b410ff61f20015ad' ⋄ _←X h
 M.hex 256 M.SHA.sum,⍉(8⍴2)⊤⎕UCS m1}
SHA256∆H2_TEST←{h←'248d6a61d20638b8e5c026930c3e6039a33ce45964ff2167'
 h,←'f6ecedd419db06c1' ⋄ _←X h
 M.hex 256 M.SHA.sum,⍉(8⍴2)⊤⎕UCS m2}
SHA512∆H3_TEST←{h←'ddaf35a193617abacc417349ae20413112e6fa4e89a97ea2'
 h,←'0a9eeee64b55d39a2192992a274fc1a836ba3c23a3feebbd454d4423643ce80e'
 h,←'2a9ac94fa54ca49f' ⋄ _←X 3 5 128⍴h
 M.hex⍤1⊢512 M.SHA.sum 3 5 24⍴,⍉(8⍴2)⊤⎕UCS m1}
SHA512∆H4_TEST←{h←'8e959b75dae313da8cf4f72814fc143f8f7779c6eb9f7fa1'
 h,←'7299aeadb6889018501d289e4900f7e4331b99dec4b5433ac7d329eeb6dd2654'
 h,←'5e96e55b874be909' ⋄ _←X 3 5 128⍴h
 M.hex⍤1⊢512 M.SHA.sum 3 5 896⍴,⍉(8⍴2)⊤⎕UCS m3}
SHA384∆H3_TEST←{h←'cb00753f45a35e8bb5a03d699ac65007272c32ab0eded163'
 h,←'1a8b605a43ff5bed8086072ba1e7cc2358baeca134c825a7' ⋄ _←X 3 5 96⍴h
 M.hex⍤1⊢384 M.SHA.sum 3 5 24⍴,⍉(8⍴2)⊤⎕UCS m1}
SHA384∆H4_TEST←{h←'09330c33f71147e83d192fc782cd1b4753111b173b3b05d2'
 h,←'2fa08086e3b0f712fcc7c71a557e2db966c3e9fa91746039' ⋄ _←X 3 5 96⍴h
 M.hex⍤1⊢384 M.SHA.sum 3 5 896⍴,⍉(8⍴2)⊤⎕UCS m3}
SHA256∆H3_TEST←{h←'ba7816bf8f01cfea414140de5dae2223b00361a396177a9c'
 h,←'b410ff61f20015ad' ⋄ _←X 3 5 64⍴h
 M.hex⍤1⊢256 M.SHA.sum 3 5 24⍴,⍉(8⍴2)⊤⎕UCS m1}
SHA256∆H4_TEST←{h←'248d6a61d20638b8e5c026930c3e6039a33ce45964ff2167'
 h,←'f6ecedd419db06c1' ⋄ _←X 3 5 64⍴h
 M.hex⍤1⊢256 M.SHA.sum 3 5 448⍴,⍉(8⍴2)⊤⎕UCS m2}
 
:EndNamespace
