"
" author:    QIAO Nan <qiaonancn@gmail.com>
" modified:  2012 Mar 29
"

"-- plugin --"

" pathogen
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

" commant-t
"let g:CommandTAlwaysShowDotFiles=1
"let g:CommandTScanDotDirectories=1

" gsession
"let g:local_session_filename='.session.vim'

" align
"vmap <silent> <leader>i= <esc>:AlignPush<cr>:AlignCtrl lp1P1<cr>:'<,'>Align =<cr>:AlignPop<cr>
"vmap <silent> <leader>i, <esc>:AlignPush<cr>:AlignCtrl lp0P1<cr>:'<,'>Align ,<cr>:AlignPop<cr>
"vmap <silent> <leader>i( <esc>:AlignPush<cr>:AlignCtrl lp0P0<cr>:'<,'>Align (<cr>:AlignPop<cr>

" yankring
"map <leader>y :YRShow<cr>

" closetag
"let g:closetag_html_style=1
"source ~/.vim/scripts/closetag.vim

" mail
"autocmd BufRead ~/.mutt/temp/mutt* :source ~/.vim/conf/mail.vim
