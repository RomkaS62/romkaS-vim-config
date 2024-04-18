let g:source_search_path = './src/**;.git'

function! FindSource(filename)
	let basename = fnamemodify(a:filename, ':t:r')
	let extension = fnamemodify(a:filename, ':t:e')

	if basename == '' || extension != 'h'
		return
	endif

	setlocal suffixesadd=.c,.cpp
	let target_path = findfile(basename, b:source_search_path)

	if !filereadable(target_path) && exists('g:source_search_path')
		let target_path = findfile(basename, g:source_search_path)

		if !filereadable(target_path)
			let target_path = ''
		else
			echo 'Source found in global path'
		endif
	else
		echo 'Source found in buffer-local path'
	endif

	return target_path
endfunction

let s:sources_by_headers = {}

" Cache hits.
" Remove entries if referenced file no longer exists and try again.
function! GoToSource(header_path)
	if !exists('b:source_search_path') && !exists('g:source_search_path')
		echo 'source_search_path not set!'
		return
	endif

	let simplified_path = simplify(a:header_path)

	if has_key(s:sources_by_headers, simplified_path)
		let source_path = s:sources_by_headers[simplified_path]

		if !filereadable(source_path)
			unlet s:sources_by_headers[simplified_path]
			call GoToSource(simplified_path)
			return
		endif

		echo 'Source found in cache'
		exec 'e' source_path
	else
		let source_path = FindSource(simplified_path)

		if !empty(source_path)
			let s:sources_by_headers[simplified_path] = fnamemodify(source_path, ':p')
			exec 'e' source_path
		else
			let new_source_path = substitute(simplified_path, '\/include\w*\/', '/src/', '')
			let new_source_path = substitute(new_source_path, '\.h$', '.cpp', '')

			if new_source_path == simplified_path
				echo 'Cannot construct source path from ' . simplified_path
				return
			endif

			let new_source_path = fnamemodify(new_source_path, ':.')
			let new_source_dir = fnamemodify(new_source_path, ':h')

			echo 'Source not found. Creating new file: ' . new_source_path
			call mkdir(new_source_dir, 'p')
			exec 'e' new_source_path
		endif
	endif
endfunction

function! ListSourceMappings()
	for header in keys(s:sources_by_headers)
		echo header . " --> " . s:sources_by_headers[header]
	endfor
endfunction

function! ClearSourceCache()
	let s:sources_by_headers = {}
endfunction

nmap gs :call<Space>GoToSource(expand('%:p'))<CR>
