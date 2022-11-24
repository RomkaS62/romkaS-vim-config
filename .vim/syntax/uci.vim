syn match UCIString /'[^']\+'/
hi link UCIString String

syn match UCIOption /^\t\(option\|list\)/ contained
hi link UCIOption StorageClass

syn keyword UCIConfigKeyword config contained
syn region UCIConfig start=/^config/ end=/\n\s*\n/ contains=UCIConfigKeyword,UCIString,UCIOption
hi link UCIConfigKeyword StorageClass
