set colorcolumn=80,120
set autoindent
set number
set list
set listchars=tab:>-,trail:~
set nohlsearch
set ts=4 sw=4
set formatoptions=croq
set mouse=
set autoread

set cursorline
set cursorlineopt=number

let s:esc_to_exit_terminal = 0
let s:insert_on_terminal_window_entry = 0

filetype indent on
syntax on

colo warmnfuzzy

if &t_Co >= 256 && exists('&termguicolors')
	set termguicolors
endif

function RemoveTrailingWhitespace()
	if &filetype != 'diff'
		%s/\s\+$//e
	endif
endfunction

au! BufWritePre * call RemoveTrailingWhitespace()

set tags=./tags;/,tags

if has('nvim')
	set showmode
	set guicursor=n-v-c-i:block
	set signcolumn=yes

	lua require('plugins')
	lua require('clangdconf')

	if s:esc_to_exit_terminal
		tnoremap <Esc> <C-\><C-n>
	endif

	if s:insert_on_terminal_window_entry
		function EnterInsertIfTerminal()
			if &buftype == 'terminal'
				startinsert
			endif
		endfunction

		au! WinEnter * call EnterInsertIfTerminal()
	endif
else
	au! TerminalWinOpen * setlocal nonumber
endif

so ~/.vim/goto-source.vim
