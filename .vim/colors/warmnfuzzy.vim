hi clear

set background=dark

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "warmnfuzzy"

hi Constant ctermfg=LightRed guifg=#FF4422
hi String ctermfg=Magenta guifg=#AA44FF
hi Character ctermfg=LightRed guifg=#AA5599

hi Comment ctermfg=DarkRed guifg=#884488

hi Special ctermfg=LightMagenta guifg=#FF88AA
hi Delimiter ctermfg=LightMagenta guifg=#FF77FF

hi Identifier ctermfg=LightGray guifg=#EE55EE

hi Statement guifg=#FF8800 gui=Bold cterm=Bold
hi link Repeat Conditional
hi link Label Conditional
hi Conditional ctermfg=Yellow guifg=#FFEE33 gui=Bold cterm=Bold
hi Operator ctermfg=DarkYellow guifg=#FFAA44 gui=Bold cterm=Bold
hi Exception ctermfg=Red guifg=#FF4400

hi Type ctermfg=LightGreen guifg=#77FF44

hi SpecialKey ctermfg=DarkBlue guifg=#004080
hi ColorColumn ctermbg=DarkGray guibg=#361818

hi PreProc ctermfg=Magenta guifg=#FF66BB
hi Define ctermfg=Red guifg=#FF0000 gui=Bold cterm=Bold
hi Macro ctermfg=Red guifg=#FF0000 gui=Bold cterm=Bold
hi Include ctermfg=Grey guifg=#8080A0
hi PreCondit ctermfg=Yellow guifg=#FF9944

hi Normal ctermfg=LightGray guifg=#EEEEEE guibg=#1C1616

hi LineNr ctermfg=DarkBlue guifg=#004488

hi Function ctermfg=LightRed guifg=#FF4488 gui=Bold term=Bold

hi Folded ctermfg=DarkGray ctermbg=Black guifg=#883333 guibg=#331100

hi SignColumn ctermbg=DarkGray guibg=#1C1616

hi Bad guifg=#FF0000 guibg=#442200 gui=bold
hi Good guifg=#00FF00 guibg=#224400 gui=bold
hi Irrelevant guifg=#666666
hi Maybe guifg=#FFFF00 guibg=#333300 gui=bold
