:Namespace aes_tests

⎕IO ⎕ML←0 1

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

k1←M.h2b'000102030405060708090a0b0c0d0e0f'
k2←M.h2b'000102030405060708090a0b0c0d0e0f1011121314151617'
k3←M.h2b'000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f'

m1←M.h2b'00112233445566778899aabbccddeeff'

c1←M.h2b'69c4e0d86a7b0430d8cdb78070b4c55a'
c2←M.h2b'dda97ca4864cdfe06eaf70a0ec0d7191'
c3←M.h2b'8ea2b7ca516745bfeafc49904b496089'

AES∆01_TEST←{_←X c1 ⋄ k1 M.AES.ecr m1}
AES∆02_TEST←{_←X m1 ⋄ k1 M.AES.dcr c1}
AES∆03_TEST←{_←X c2 ⋄ k2 M.AES.ecr m1}
AES∆04_TEST←{_←X m1 ⋄ k2 M.AES.dcr c2}
AES∆05_TEST←{_←X c3 ⋄ k3 M.AES.ecr m1}
AES∆06_TEST←{_←X m1 ⋄ k3 M.AES.dcr c3}
AES∆07_TEST←{_←X 384⍴c1 ⋄ k1 M.AES.ecr 384⍴m1}
AES∆08_TEST←{_←X 384⍴m1 ⋄ k1 M.AES.dcr 384⍴c1}
AES∆09_TEST←{_←X 384⍴c2 ⋄ k2 M.AES.ecr 384⍴m1}
AES∆10_TEST←{_←X 384⍴m1 ⋄ k2 M.AES.dcr 384⍴c2}
AES∆11_TEST←{_←X 384⍴c3 ⋄ k3 M.AES.ecr 384⍴m1}
AES∆12_TEST←{_←X 384⍴m1 ⋄ k3 M.AES.dcr 384⍴c3}

:EndNamespace









