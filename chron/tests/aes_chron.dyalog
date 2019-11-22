:Namespace aes_chron

⎕IO ⎕ML ⎕WX←0 1 3

M←#.mystika

m0←128⍴0
m1←128⍴1
m2←?128⍴2

⍎⍤1⊢(↑'m',¨⍕¨⍳16),'←',⍕?⍪↑32⍴¨1+⍉(4⍴2)⊤⍳2*4
⍎⍤1⊢(↑'k',¨⍕¨⍳16),'←',⍕?⍪↑32⍴¨1+⍉(4⍴2)⊤⍳2*4

k128←?128⍴2
k192←?192⍴2
k256←?256⍴2

aes_chron_01←'k128 M.AES.ecr m0' 'k128 M.AES.ecr m1' 'k128 M.AES.ecr m2'
aes_chron_02←'k192 M.AES.ecr m0' 'k192 M.AES.ecr m1' 'k192 M.AES.ecr m2'
aes_chron_03←'k256 M.AES.ecr m0' 'k256 M.AES.ecr m1' 'k256 M.AES.ecr m2'
aes_chron_04←'k128 M.AES.dcr m0' 'k128 M.AES.dcr m1' 'k128 M.AES.dcr m2'
aes_chron_05←'k192 M.AES.dcr m0' 'k192 M.AES.dcr m1' 'k192 M.AES.dcr m2'
aes_chron_06←'k256 M.AES.dcr m0' 'k256 M.AES.dcr m1' 'k256 M.AES.dcr m2'
aes_chron_07←,('k',¨⍕¨⍳16)∘.{⍺,' M.AES.ecr ',⍵}('m',¨⍕¨⍳16)
aes_chron_08←(⊂'k15'){⍺,' M.AES.ecr ',⍵}¨('m',¨⍕¨⍳16)

:EndNamespace
