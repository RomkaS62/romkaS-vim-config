set colorcolumn=80
set autoindent
set number
set list
set listchars=tab:>-,trail:~
set nohlsearch
set ts=4 sw=4
set formatoptions=croq

filetype indent on
syntax on

colo warmnfuzzy

if &t_Co >= 256 && exists('&termguicolors')
	set termguicolors
endif

au! BufWritePre * %s/\s\+$//e

set tags=./tags;/,tags

if has('nvim')
	set showmode
	set guicursor=n-v-c-i:block
	set signcolumn=yes

	lua require('plugins')
	lua require('clangdconf')

	tnoremap <Esc> <C-\><C-n>

	function EnterInsertIfTerminal()
		if &buftype == 'terminal'
			startinsert
		endif
	endfunction

	au! WinEnter * call EnterInsertIfTerminal()
endif
