syn region GrFold1 matchgroup=GrParen1 start="{" end="}" fold contains=ALLBUT,GrFold1,GrFold3,GrBrace1,GrBrace2,GrSquare1,GrSquare3
syn region GrFold2 matchgroup=GrParen2 start="{" end="}" fold contains=ALLBUT,GrFold2,GrFold1,GrBrace2,GrBrace1,GrSquare2,GrSquare1 contained
syn region GrFold3 matchgroup=GrParen3 start="{" end="}" fold contains=ALLBUT,GrFold3,GrFold2,GrBrace3,GrBrace2,GrSquare3,GrSquare2 contained
syn region GrBrace1 matchgroup=GrParen1 start="(" end=")" contains=ALLBUT,GrBrace1,GrBrace3,GrFold1,GrFold3,GrSquare1,GrSquare3
syn region GrBrace2 matchgroup=GrParen2 start="(" end=")" contains=ALLBUT,GrBrace2,GrBrace1,GrFold2,GrFold1,GrSquare2,GrSquare1 contained
syn region GrBrace3 matchgroup=GrParen3 start="(" end=")" contains=ALLBUT,GrBrace3,GrBrace2,GrFold3,GrFold2,GrSquare3,GrSquare2 contained
syn region GrSquare1 matchgroup=GrParen1 start="\[" end="\]" contains=ALLBUT,GrBrace1,GrBrace3,GrFold1,GrFold3,GrSquare1,GrSquare3
syn region GrSquare2 matchgroup=GrParen2 start="\[" end="\]" contains=ALLBUT,GrBrace2,GrBrace1,GrFold2,GrFold1,GrSquare2,GrSquare1 contained
syn region GrSquare3 matchgroup=GrParen3 start="\[" end="\]" contains=ALLBUT,GrBrace3,GrBrace2,GrFold3,GrFold2,GrSquare3,GrSquare2 contained

hi GrParen1 ctermfg=Green term=Bold gui=Bold
hi GrParen2 ctermfg=Yellow term=Bold gui=Bold
hi GrParen3 ctermfg=Blue term=Bold gui=Bold
