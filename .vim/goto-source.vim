let g:source_search_path = ''

" If there's a directory called 'src' just above there's a good chance you'll
" find what you're looking for there.
let g:source_search_path .= ',./src/**;'

" Last resort :)
let g:source_search_path .= ',./**;'

function! FindSource(filename)
	let basename = fnamemodify(a:filename, ':t:r')
	let extension = fnamemodify(a:filename, ':t:e')

	if basename == '' || extension != 'h'
		return
	endif

	for extension in [ '.cpp', '.c' ]
		let target_path = findfile(basename . extension, g:source_search_path)

		if filereadable(target_path)
			echo 'Source found in path'
			return target_path
		endif
	endfor
endfunction

let s:sources_by_headers = {}

" Cache hits.
" Remove entries if referenced file no longer exists and try again.
function! GoToSource(header_path)
	let simplified_path = simplify(a:header_path)

	if has_key(s:sources_by_headers, simplified_path)
		let source_path = s:sources_by_headers[simplified_path]

		if !filereadable(source_path)
			unlet s:sources_by_headers[simplified_path]
			GoToSource(simplified_path)
			return
		endif

		echo 'Source found in cache'
		exec 'e' source_path
	else
		let source_path = FindSource(simplified_path)

		if !empty(source_path)
			let s:sources_by_headers[simplified_path] = fnamemodify(source_path, ':p')
			exec 'e' source_path
		endif
	endif
endfunction

function! ListSourceMappings()
	for header in keys(s:sources_by_headers)
		echo header . " --> " . s:sources_by_headers[header]
	endfor
endfunction

nmap gs :call<Space>GoToSource(expand('%:p'))<CR>
