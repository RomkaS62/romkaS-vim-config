if exists("b:current_syntax")
	finish
endif

syn match AmgLogInfoMsg /^\c\[[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\] *\[.*\] *\[[A-Za-z_0-9]\+.*$/
hi link AmgLogInfoMsg Comment

syn match AmgLogWarnMsg /^\c\[[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\].*\<WARN.*]: \+.*$/
hi AmgLogWarnMsg guifg=#FFFF00

syn match AmgLogErrorMsg /^\c\[[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\].*\(\<ERROR\|\<FATAL\).*]: \+.*$/
hi link AmgLogErrorMsg Error

syn match AmgLine /@[0-9]\+>/ contained
hi link AmgLine Label

syn match AmgPath /\(\.\+\)\=\(\/\+[^\/]\+\)\+\.\(cpp\|h\)\>/ contained nextgroup=AmgLine
hi link AmgPath Constant

syn match AmgDebugOutput /\c^\[[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\] *\[ *INFO *\] *\[DEBUG\]: */ nextgroup=AmgPath
hi link AmgDebugOutput PreProc

let b:current_syntax = "amglog"
