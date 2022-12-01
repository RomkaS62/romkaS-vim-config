if exists("b:current_syntax")
	finish
endif

syn match UCIValue /'[^']\+'\|"[^"]\+"\|[^# \t]\+/ contained
hi link UCIValue String

syn match UCIIdentifier /[a-zA-Z_-][a-zA-Z_0-9-]*/ contained nextgroup=UCIValue skipwhite
hi link UCIIdentifier Identifier

syn keyword UCIOption config option list nextgroup=UCIIdentifier skipwhite
hi link UCIOption StorageClass

syn region UCIComment start=/#/ end="\n"
hi link UCIComment Comment

let b:current_syntax="uci"
