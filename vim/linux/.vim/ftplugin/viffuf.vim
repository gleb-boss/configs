set nowrap " no wrap lines
set cursorlineopt+=line " highligth current line

silent execute "%! column -ts ',' -o '|'"
"silent execute "%! cut -d ',' | column -ts ',' -o '|'" 
let line_len = strlen(getline(1)) + 6 " INT CONST 6 - diff len(progress)len(not_intresting)
call append(1,repeat("-",line_len))

unlet line_len

fu! EpGetUrl()
	return split(getline('.'),' ')[0]
endfunction

"fu! EpSetDoneProgress (...)
"	norm $ciwdone0
"endfunction

"fu! EpReload (...)

"fu! EpMoveToTrash (...)
"	let tmp_string = ""
"	exec "d d | tmp_string = substitute(getreg('d'),' ','','g') | redir @d | substitute(tmp_string,'|',',','g') | redir END | call writefile([getreg('d')], 'trash.csv','a')"
"	unlet tmp_string
"endfunction

"fu! EpViewComments
