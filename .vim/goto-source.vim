function! GoToSource(path)
	let path = simplify(a:path)
	let is_absolute_path = path[0] == '/'
	let nodes = split(path, '/', 0)

	if len(nodes) == 0
		return
	endif

	if is_absolute_path
		let nodes = [ '' ] + nodes
	endif

	let filename = nodes[-1]
	let basename = substitute(filename, '\(.*\)\.\a\+$', '\1', '')
	let extension = substitute(filename, '.*\(\.\a\+\)$', '\1', '')

	if basename == '' || extension != '.h'
		return
	endif

	for extension in [ '.cpp', 'c' ]
		let target_path = join(nodes[0:-2] + [ basename . extension ], '/')

		if filereadable(target_path)
			exec 'e' target_path
			return
		endif
	endfor

	let i = len(nodes) - 1

	while i >= 0
		if match(nodes[i], '^include\(\w\+\)\=$') != -1
			let nodes[i] = '**'
			break
		endif

		let i = i - 1
	endwhile

	if i < 0
		return
	endif

	for extension in [ '.cpp', '.c' ]
		let target_search_path = join(nodes[0:i], '/')
		let target_path = findfile(basename . extension, target_search_path)

		if filereadable(target_path)
			exec 'e' target_path
			return
		endif
	endfor
endfunction

nmap gs :call<Space>GoToSource(bufname())<CR>
