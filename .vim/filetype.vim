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
	au BufRead,BufNewFile *.java setlocal includeexpr=substitute(substitute(v:fname,'\\.','/','g'),'$','.java','')
augroup END
