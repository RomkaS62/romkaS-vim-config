hi clear

set background=dark

if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "custom"

hi Constant guifg=#FF4422
hi String guifg=#AA44FF
hi Character guifg=#AA5599

hi Comment guifg=#884488

hi Special guifg=#FF88AA
hi Delimiter guifg=#FF77FF

hi Identifier guifg=#EE55EE

hi Statement guifg=#FF8800 gui=Bold cterm=Bold
hi link Repeat Conditional
hi link Label Conditional
hi Conditional guifg=#FFEE33 gui=Bold cterm=Bold
hi Operator guifg=#FFAA44 gui=Bold cterm=Bold
hi Exception guifg=#FF4400

hi Type guifg=#77FF44

hi SpecialKey guifg=#004080
hi ColorColumn guibg=#241818

hi PreProc guifg=#FF66BB
hi Macro guifg=#FF0000 gui=Bold cterm=Bold

hi Normal guifg=#EEEEEE guibg=#1C1616

hi LineNr guifg=#004488

hi Function guifg=#FF4488 gui=Bold term=Bold

hi Folded guibg=#331100
