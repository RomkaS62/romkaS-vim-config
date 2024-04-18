if exists("did_load_filetypes")
	finish
endif

au! BufRead,BufNewFile *.kt setfiletype kt
au! BufRead,BufNewFile *.conf setfiletype conf

function! CMakeIncludeToPath(directive)
	let is_inlcude_directive = match(a:directive, '^\c\_s*include\_s*(') != -1
	let is_add_subdir_directive = match(a:directive, '^\c\_s*add_subdirectory\_s*(') != -1

	if is_inlcude_directive == is_add_subdir_directive
		return ''
	endif

	if is_inlcude_directive
		let ret = substitute(a:directive,
				\	'^\c\s*include\_s*(\_s*\("\(\f\+\)"\|\(\f\+\)\)\_s*)\_s*$',
				\	'\2\3',
				\	'')
	elseif is_add_subdir_directive
		let ret = substitute(a:directive,
				\	'^\c\s*add_subdirectory\_s*(\_s*\("\(\f\+\)"\|\(\f\+\)\)\_s*)\_s*$',
				\	'\2\3/CMakeLists.txt',
				\	'')
	endif

	return ret
endfunction

augroup CMake
	au!
	au BufRead,BufNewFile *.cmake,CMakeLists.txt setlocal include=\\c\\zs\\(add_subdirectory\\\|include\\)\\s*(.*\\ze
	au BufRead,BufNewFile *.cmake,CMakeLists.txt setlocal includeexpr=CMakeIncludeToPath(v:fname)
augroup END

augroup Java
	au!
	au BufRead,BufNewFile *.java setlocal include=^\\s*import\\s*\\zs\\w\\+\\(\\.\\w\\+\\)*\\ze\\s*;\\s*$
	au BufRead,BufNewFile *.java setlocal includeexpr=substitute(v:fname,'\\.','/','g')
	au BufRead,BufNewFile *.java setlocal suffixesadd=.java
augroup END

augroup GrLua
	au!
	au BufRead,BufNewFile *.lua setlocal path=.,,/usr/share/lua/*,/usr/local/lib/lua,/usr/share/lua/*
	au BufRead,BufNewFile *.lua setlocal include=^\\w\\+\\s*=\\s*require\\s*(\\=\\s*'
	au BufRead,BufNewFile *.lua setlocal suffixesadd=.lua
augroup END

augroup Python
	au!
	au BufRead,BufNewFile *.py setlocal path=.,,/usr/local/lib/*/dist-packages
	au BufRead,BufNewFile *.py setlocal include=^\\(import\\|from\\)\\s\\+\\zs\\w\\+\\ze.*
	au BufRead,BufNewFile *.py setlocal includeexpr=substitute(v:fname,'\\.','/','g')
	au BufRead,BufNewFile *.py setlocal suffixesadd=.py,/__init__.py
augroup END

augroup CMakeCache
	au!
	au BufRead,BufNewFile CMakeCache.txt setlocal filetype=cmakecache
augroup END
