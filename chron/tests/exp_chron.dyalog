:Namespace exp_chron

⎕IO ⎕ML ⎕WX←0 1 3

M←#.mystika

p1←256 0 0,¯64↑114 239,⍨30⍴255
a1←p1 M.mod M.mul⍨M.rol p1
e1←M.rol M.flo M.di2 p M.sub M.flo p M.big 1
e2←256,¯66↑1⌽32↑1 32
e3←256,¯66↑63,31⍴255

p2←256 0 0,¯128↑63 35,⍨62⍴255
p3←256 0 0,¯128↑107 27,⍨62⍴255

EXP∆01_CHRON←'e1 (p1 M.mex) a1' 'e2 (p1 M.mex) a1' 'e3 (p1 M.mex) a1'

:EndNamespace
