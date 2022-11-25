if exists("b:current_syntax")
	finish
endif

syn match AmgLogInfoMsg /^\[[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\] *\[.*\] *\[[A-Za-z_0-9]\+.*$/
hi link AmgLogInfoMsg Comment

syn match AmgLogWarnMsg /^\[[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\] *\[ *WARN *\] *\[[A-Za-z_0-9]\+.*$/
hi AmgLogWarnMsg guifg=#FFFF00

syn match AmgLogErrorMsg /^\[[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\] *\[ *ERROR *\] *\[[A-Za-z_0-9]\+.*$/
hi link AmgLogErrorMsg Error

syn region AmgDbgMsgOutput start=/./ end=/\$\$\$/ contained
hi link AmgDbgMsgOutput String

syn match AmgLine /@[0-9]\+>/ contained nextgroup=AmgDbgMsgOutput
hi link AmgLine Label

syn match AmgPath /\(\/[^\/]\+\)\+\.\(cpp\|h\)\>/ contained nextgroup=AmgLine
hi link AmgPath Constant

syn match AmgDebugOutput /^\[[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\] *\[ *INFO *\] *\[DEBUG\]: */ nextgroup=AmgPath
hi link AmgDebugOutput PreProc

let b:current_syntax = "amglog"
