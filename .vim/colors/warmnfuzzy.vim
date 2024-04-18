hi clear

set background=dark

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "warmnfuzzy"

hi Constant ctermfg=LightRed guifg=#FF4422
hi String ctermfg=Magenta guifg=#BB88FF
hi Character ctermfg=LightRed guifg=#AA5599
hi Boolean ctermfg=LightRed cterm=Bold guifg=#FF4422 gui=Bold

hi Comment ctermfg=DarkRed guifg=#887777

hi Special ctermfg=LightMagenta guifg=#FF88FF
hi Delimiter ctermfg=LightMagenta guifg=#FF77FF

hi Identifier ctermfg=LightGray guifg=#FFDDFF

if has('nvim')
	hi link @lsp.type.parameter Identifier
	hi @lsp.type.property guifg=#FFDDFF gui=Bold cterm=Bold
endif

hi Statement guifg=#FF8800 gui=Bold cterm=Bold
hi link Repeat Conditional
hi link Label Conditional
hi Conditional ctermfg=Yellow guifg=#FFEE33 gui=Bold cterm=Bold
hi Operator ctermfg=DarkYellow guifg=#FFAA44 gui=Bold cterm=Bold
hi Exception ctermfg=Red guifg=#FF4400 gui=Bold cterm=Bold

hi Type ctermfg=LightGreen guifg=#77FF44 gui=Bold cterm=Bold
hi link Structure Type
hi StorageClass guifg=#44CC22 gui=NONE

if has('nvim')
	hi link @lsp.type.namespace StorageClass
	hi @lsp.type.typeParameter guifg=#44FF88
	hi @lsp.mod.globalScope gui=Bold cterm=Bold
endif

hi Bad guifg=#FF0000 guibg=#442200 gui=bold
hi ColorColumn ctermbg=DarkGray guibg=#361818
hi CursorLine guibg=#282121
hi CursorLineNr ctermfg=LightBlue guifg=#44AAFF
hi Define ctermfg=Red guifg=#FF0000 gui=Bold cterm=Bold
hi diffAdded guifg=#00FF00
hi diffRemoved guifg=#FF4444
hi Folded ctermfg=DarkGray ctermbg=Black guifg=#883333 guibg=#331100
hi Function ctermfg=LightBlue guifg=#00CCFF gui=NONE
hi Good guifg=#00FF00 guibg=#224400 gui=bold
hi Include ctermfg=Grey guifg=#8080A0
hi Irrelevant guifg=#666666
hi LineNr ctermfg=DarkBlue guifg=#004488
hi Macro ctermfg=Red guifg=#FF0000 gui=Bold cterm=Bold
hi Whitespace ctermfg=DarkBlue guifg=#003050
hi Maybe guifg=#FFFF00 guibg=#333300 gui=bold
hi Normal ctermfg=LightGray guifg=#EEEEEE guibg=#1C1616
hi Pmenu guibg=#664422
hi PmenuSel guibg=#883300
hi PreCondit ctermfg=Yellow guifg=#FF9944
hi PreProc ctermfg=Magenta guifg=#FF66BB
hi SignColumn ctermbg=DarkGray guibg=#1C1616
hi SpecialKey ctermfg=DarkBlue guifg=#004080
