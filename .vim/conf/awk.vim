"
" author:    QIAO Nan <qiaonancn@gmail.com>
" modified:  2013 Nov 12
"

"-- python --"

" completion
"let g:pythoncomplete_buffer_loading=1
"let g:pythoncomplete_classes_in_global=1

" file header
autocmd BufNewFile *.awk call _awk_head()

" map
nmap <leader>awk :call _awk_head()<cr>

"short snippits
"iab _ext os.path.splitext(fn)[0]
