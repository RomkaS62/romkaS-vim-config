set colorcolumn=80
set autoindent
set number
set list
set listchars=tab:>-,trail:~
set nohlsearch
set ts=4 sw=4

if &t_Co >= 256
	set termguicolors
	colo custom
endif

au! BufWritePre * %s/\s\+$//e

if has('nvim')
	set showmode
	set guicursor=n-v-c-i:block
	set signcolumn=yes

	lua require('plugins')
	lua require('lspconfig').clangd.setup{}

	tnoremap <Esc> <C-\><C-n>

	function EnterInsertIfTerminal()
		if &buftype == 'terminal'
			startinsert
		endif
	endfunction

	au! WinEnter * call EnterInsertIfTerminal()
endif

