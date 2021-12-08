"let currentFile = expand('%:p')
"let includeFiles = []
"let filenamePattern = '[a-zA-Z_0-9]\+\.h\(pp\)\?'
"let includePattern = '^#\s*include\s*\("' . filenamePattern . '"\|<' . filenamePattern . '>\)\s*$'
"
"for line in readfile(currentFile)
"	let m = matchstr(line, includePattern)
"	if m != ""
"		let m = substitute(m, '^#\s*include\s*["<]', "", "g")
"		let m = substitute(m, '[">]\s*$', "", "g")
"		call add(includeFiles, m)
"	endif
"endfor
"
"let includeStr = ""
"
"for f in includeFiles
"	let includeStr = includeStr . ' ' . shellescape(f)
"endfor
"
"silent exe '!ctags &> /dev/null --c-kinds=+epg -f tags.tmp ' includeStr currentFile
"
"for tag in taglist('^[a-zA-Z_][a-zA-Z_0-9]*$')
"	if tag.kind == 'd' || tag.kind == 'e'
"		exe 'syn keyword TagMacro ' tag.name
"	elseif tag.kind == 's' || tag.kind == 't'
"		exe 'syn keyword TagStruct ' tag.name
"	elseif tag.kind == 'f' || tag.kind == 'p'
"		exe 'syn keyword TagFunction ' tag.name
"	endif
"endfor
"
"hi TagMacro ctermfg=Magenta guifg=#FF88FF gui=Bold
"hi TagFunction ctermfg=Blue guifg=#8888FF
"hi TagStruct ctermfg=LightGreen guifg=#55FF55 gui=Bold

ab ifdefcpp #ifdef __cplusplus<LF>extern "C" {<LF>#endif
ab endifcpp #ifdef __cplusplus<LF>}<LF>#endif

syn keyword cRestrict restrict
hi link cRestrict StorageClass

syn match cLikelyMacro /\<[A-Z_][A-Z_0-9]*\>/
hi link cLikelyMacro Macro
