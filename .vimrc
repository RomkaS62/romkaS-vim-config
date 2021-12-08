set colorcolumn=80
set autoindent
set number
set list
set listchars=tab:>-,trail:~
set nohlsearch

if &t_Co >= 256
	set termguicolors
	colo custom
endif
