"
" author:    QIAO Nan <qiaonancn@gmail.com>
" modified:  2014 Oct 13
"

"-- python --"

" completion
"let g:pythoncomplete_buffer_loading=1
"let g:pythoncomplete_classes_in_global=1

" file header
autocmd BufNewFile *.r call _r_head()

" map
nmap <leader>r :call _r_head()<cr>

"short snippits
iab _rt data.a= read.table(file.fullname, sep= "\t", header= TRUE, row.names=1, comment.char = "#", as.is = c(1))
iab _wt write.table(data.a, file=file.out, sep= "\t", quote=F, row.names=F, col.names=T)
