syn match ConfSection /\[[^\]]\+\]/
hi link ConfSection Label

syn region ConfValue start=/[^ \t]/ end="$" contained contains=ConfComment
hi link ConfValue String

syn match ConfNumber /[0-9]\+\(\.[0-9]\+\)\=\s*$/ contained
hi link ConfNumber Number

syn keyword ConfBool true false contained
hi link ConfBool Boolean

syn match ConfOperator /=/ contained skipwhite nextgroup=ConfComment,ConfNumber,ConfBool,ConfValue
hi link ConfOperator Operator

syn match ConfKey /^[a-zA-Z_][a-zA-Z_0-9]*/ skipwhite nextgroup=ConfOperator
hi link ConfKey Type

syn region ConfComment start=/#/ end=/$/
hi link ConfComment Comment
