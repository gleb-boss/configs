autocmd BufRead,BufNewFile *.viffuf set filetype=viffuf 
autocmd VimLeave *.viffuf 2d | %s/\s*\ze |//g | %s/|/,/g |  w " from table to csv, \ze need to don't replace '|' symbol
