function! GoToSource(path)
	let path = simplify(a:path)
	let is_absolute_path = path[0] == '/'
	let nodes = split(path, '/', 0)

	if len(nodes) == 0
		return
	endif

	let filename = nodes[-1]
	let basename = substitute(filename, '\(.*\)\.\a\+$', '\1', '')
	let extension = substitute(filename, '.*\(\.\a\+\)$', '\1', '')

	if basename == '' || extension != '.h'
		return
	endif

	let target_file = basename . '.cpp'

	let i = len(nodes) - 1

	while i >= 0
		if match(nodes[i], '^include\(\w\+\)\=$') != -1
			let nodes[i] = '**'
			break
		endif

		let i = i - 1
	endwhile

	let target_search_path = join(nodes[0:i], '/')

	if is_absolute_path
		let target_search_path = '/' . target_search_path
	endif

	let target_path = findfile(target_file, target_search_path)

	if filereadable(target_path)
		exec 'e' target_path
	else
		echo 'File not readable: ' . target_path
	endif
endfunction

nmap gs :call<Space>GoToSource(bufname())<CR>
