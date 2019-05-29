:Namespace mul_chron

⎕IO ⎕ML ⎕WX←0 1 3

M←#.mystika

a192_64←64 0 0,?32⍴64    
b192_64←64 0 0,?32⍴64
a192_16←16 M.bch a192_64
b192_16←16 M.bch b192_64
a192_256←256 M.bch a192_64                                                                                      
b192_256←256 M.bch b192_64

a256←256⍪0⍪0⍪?32⍴256
b256←256⍪0⍪0⍪?32⍴256
c256←256⍪0⍪0⍪¯32↑?16⍴256
x256←256⍪0⍪0⍪32⍴255
y256←256⍪0⍪0⍪¯32↑1
z256←256⍪0⍪0⍪¯32↑0

MUL∆01_CHRON←'a256 M.mul b256' 'a256 M.mul c256' 'a256 M.mul y256' 'a256 M.mul z256' 'x256 M.mul x256'
MUL∆02_CHRON←'a256 M.mul b256' 'b256 M.mul a256' 'a256 M.mul y256' 'y256 M.mul a256' 'x256 M.mul x256'
MUL∆03_CHRON←'z256 M.mul z256' 'z256 M.mul y256' 'y256 M.mul z256' 'y256 M.mul y256' 'x256 M.mul x256'
MUL∆04_CHRON←'a192_16  M.mul b192_16' 'a192_64 M.mul b192_64' 'a192_256 M.mul b192_256'

:EndNamespace
