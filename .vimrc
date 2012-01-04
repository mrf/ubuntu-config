":colorscheme ir_black
set guitablabel=%t
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set ignorecase " Case-insensitive searching.
set smartcase " But case-sensitive if expression contains a capital letter.
set number " Show line numbers.
set ruler " Show cursor position.
set incsearch " Highlight matches as you type.
set hlsearch " Highlight matches.
set title " Set the terminal's title
set visualbell " No beeping.
set bk                                                              "backup, just incase
set backupdir=/home/username/.vim/tmp/backups/                      "where to put those backups
set directory=/home/username/.vim/tmp/backups/                      "this is for swp files
" Make tabs and buffers play nice
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
  augroup END
endif
syntax on
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Getting tagslist working correctly
filetype on
let Tlist_Auto_Open = 1
let php_sql_query = 1
let php_htmlInStrings = 1
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'


" PHP / drupal styles
let php_htmlInStrings = 1
let php_noShortTags = 1
let php_parent_error_close = 1
" let php_folding = 1
" set foldmethod=indent
" set foldnestmax=1

" Highlight redundant whitespaces and tabs.
highlight RedundantSpaces ctermbg=grey guibg=grey
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/

" :make % will do syntax check and auto save
set makeprg=php\ -l\ %
set autowrite
