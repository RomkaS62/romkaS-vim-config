hi clear

set background=dark

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "warmnfuzzy"

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
hi ColorColumn guibg=#361818

hi PreProc guifg=#FF66BB
hi Define guifg=#FF0000 gui=Bold cterm=Bold
hi Macro guifg=#FF0000 gui=Bold cterm=Bold
hi Include guifg=#8080A0
hi PreCondit guifg=#FF9944

hi Normal guifg=#EEEEEE guibg=#1C1616

hi LineNr guifg=#004488

hi Function guifg=#FF4488 gui=Bold term=Bold

hi Folded guibg=#331100
hi SignColumn guibg=#1C1616

hi Bad guifg=#FF0000 guibg=#442200 gui=bold
hi Good guifg=#00FF00 guibg=#224400 gui=bold
hi Irrelevant guifg=#666666
hi Maybe guifg=#FFFF00 guibg=#333300 gui=bold
