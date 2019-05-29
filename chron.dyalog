:Namespace chron

cmpx←{⍺←⍬ ⋄ r c m←1 0 100(⊢+⊣×0=⊢)3↑⍺
 f←{(2-c)∘⊃(⍎'{0<⍵:∇⍵-1⊣',⍵,'⋄⎕AI}⍺')-⎕AI}
 1{t←⍺f¨⍵ ⋄ m>+/,t÷≢⍵:(⍺×2)∇⍵
 ((⊢-0⌊⌊/∘,)t-⍺f'⍬')÷⍺×1000}(⊢⍴⍨r,⍴)⊆⍵}

 utf8get←{
	0::⎕SIGNAL ⎕EN	⍝ signal error to caller.
	tie←⍵ ⎕NTIE 0	⍝ file handle.
	ints←⎕NREAD tie 83,⎕NSIZE tie	⍝ all UTF-8 file bytes.
	('UTF-8'⎕UCS 256|ints)⊣⎕NUNTIE tie	⍝ ⎕AV chars.
}

putfile←{                               ⍝ Put rows to text-file.
    ⍺←2 ⋄ term←(-⍺)↑⎕UCS 13 10          ⍝ default: cr-lf terminated rows.
    fid rows←⍵                          ⍝ file-id and row values.
    ntie←{                              ⍝ handle on null file.
        0::⎕SIGNAL ⎕EN                  ⍝ signal error to caller.
        22::⍵ ⎕NCREATE 0                ⍝ ~exists: create.
        0 ⎕NRESIZE ⍵ ⎕NTIE 0            ⍝  exists: truncate.
    }fid
    cvec←term,⍤1⍨rows                   ⍝ collected, terminated lines.
    size←cvec ⎕NAPPEND ntie,⎕DR ⎕AV     ⍝ write lines to file.
    1:rslt←size⊣⎕NUNTIE ntie            ⍝ shy result: file size.
}

newname←{'.dyalog',⍨'./chron/data/',⍵,'_data_',⊃,∘('-'∘,)/⍕¨⎕TS}
run←{f←⊢↑[1]⍨1⊃⌈∘⍴⍨∘⍴ ⋄ 1 putfile(⊂⍺(f⍨⍪f)⍕⍎⍵),⊂newname⍵}

∇ Z←OS
    Z←'Mac' 'Linux'∨.≡3 5↑¨⊂⊃'.'⎕WG'APLVersion'
∇

∇ Z←specs
    :If OS
        Z←⎕SH 'cat /proc/cpuinfo | grep processor -A 8'
        Z,←⎕SH 'sudo dmidecode --type 17' 
        Z,←⎕SH 'lspci -vnn | grep VGA'
    :EndIf
∇

find←{v←'tests' 'data'≡¨⊂⍵ ⋄ ~1∊v:⎕EM 11
 s←⊃v/'*_chron.dyalog' '*_CHRON_data_*'
 OS: ⎕SH 'find ./chron/',⍵,' -name ',s 
 #.⎕CY'files' ⋄ Z←#.Files.Dir ⍵,'\',s ⋄ Z←(⍵,'\')∘,¨Z
 #.⎕EX¨'CompFiles' 'Files' 'TestFiles'
}

test←{⍺←10
 n←⎕SE.SALT.Load './chron/tests/','_chron.dyalog',⍨⊃⊆⍵
 z←'#.chron.cmpx' ⎕NS⍨⍕n
 m←' '⍪⍨'⍝',↑specs,(~∘' ','←',∘⍕∘⍎ z,'.'∘,)¨↓n.⎕NL 2
 t←('_chron',⍨⊃⊆⍵)((⊢(⌿⍨)(⊣≡↑⍨∘⍴⍨)⍤1))n.⎕NL 2
 f←⊢↑[1]⍨1⊃⌈∘⍴⍨∘⍴
 g←1 putfile (⊂∘newname⊢),∘⊂m(f⍨⍪f)∘⍕⊣n.cmpx∘⍎z,'.',⊢
 ⍬≢⍴1⊃2↑⊆⍵:⍺g⍤1⊢t
 ⍺g⊢t⌷⍨¯1+1⊃⍵
}

:EndNamespace
