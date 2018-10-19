"
" author:    QIAO Nan <qiaonancn@gmail.com>
" modified:  2014 Nov 17
"

"-- python --"

" completion
"let g:pythoncomplete_buffer_loading=1
"let g:pythoncomplete_classes_in_global=1

" file header
autocmd BufNewFile *.py call _python_head()

" map
nmap <leader>py :call _python_head()<cr>

"short snippits
iab _ext os.path.splitext(fn)[0]
iab _liner 
\<CR>flag_header= 1
\<CR>for line in open(fn).read().split('\n'):
\<CR>if flag_header:
\<CR>flag_header=0
\<CR>continue
\<CR>words=line.split("\t")
\<CR>if len(words)>2:
\<CR>pass

"iab _wff print("write file {} finished!".format(fn_out))
iab _wff logger.info(" >> write file {} finished!".format(fn_out))
iab _name os.path.split(os.path.splitext(fn)[0])[1]
iab _info logger.info(' >> {}'.format( xx))
iab _warn logger.warning(' >> {}'.format( xx))
iab _err logger.error(' >> {}'.format( xx))
" error
iab _ra raise Exception('Nice', 'error')
" list join
iab _lj "\t".join([str(i) for i in xx])
iab _cmd 
\<CR>cmd= "{} {}".format(a, b)
\<CR>logger.info(" >> {}".format(cmd))
\<CR>subprocess.call( cmd, shell= True )
iab _try 
\<CR>try:
\<CR>pass
\<CR>except Exception, e:
\<CR>logger.info('Exception >> {}'.format( e.message))
iab _ofw 
\<CR>with open(op.fn_out, 'w') as f:
\<CR>f.write("{}\n".format(header))
\<CR>logger.info(" >> write file {} finished!".format(op.fn_out))
" panda
iab _dfr df= pd.read_csv(fn, index_col=0, sep='\t', header=0)
iab _dfw df.to_csv(fn_out, index=1, sep='\t', header=1)
