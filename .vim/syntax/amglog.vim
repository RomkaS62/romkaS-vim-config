if exists("b:current_syntax")
	finish
endif

syn region AmglogSquareBracketBlock start=/\[/ end=/\]/

syn region AmglogEntity start=/\[/ end=/\]:/ contained keepend
hi link AmglogEntity Identifier

syn match AmglogInfoTag /\[ INFO \]/ contained nextgroup=AmglogEntity skipwhite
hi link AmglogInfoTag Comment

syn match AmglogWarningTag /\[ WARNING \]/ contained nextgroup=AmglogEntity skipwhite
hi link AmglogWarningTag Todo

syn match AmglogErrorTag /\[ ERROR \]/ contained nextgroup=AmglogEntity skipwhite
hi link AmglogErrorTag Error

syn match AmglogTimestamp /^\[ \d\+-\w\+-\d\+ \d\+:\d\+:\d\+\(\.\d\+\)\= \]/ nextgroup=AmglogInfoTag,AmglogWarningTag,AmglogErrorTag skipwhite
hi link AmglogTimestamp Comment

let b:current_syntax = "amglog"
