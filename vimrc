set t_Co=256
colorscheme ir_black
"colorscheme ambient

set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab

set nocompatible
set shell=bash\ -l
syntax on
set number
set autoread
set backspace=2

filetype plugin indent on
let python_highlight_all = 1
let python_slow_sync = 1

" Let's us save with \w.
" \ is the default leader key.
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :tabedit! ~/.vimrc<CR>

" Clear trailing whitespace with \s and save the file.
map <leader>s :%s/\s\+$//e<CR>:w!<CR>

" Open files quickly with \o.
map <leader>o :tabedit<Space>

map <leader>t :CommandT<CR>

" Open a custom Commad-T instace with \T
map <leader>T :CommandT<Space>~/Sites

" Open files verticall quickly with \v.
map <leader>v :vsplit<Space>

" Better tab functionality.
map <leader>[ :tabprev<CR>
map <leader>] :tabnext<CR>
map <leader>- :tabfirst<CR>
map <leader>= :tablast<CR>
" Toggle paste mode wiht \p
set pastetoggle=<leader>p

" Toggle line numbers with \n
nmap <leader>n :set invnumber<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
" Or maybe: autocmd BufWritePost .vimrc source %

" Ignore case while searching.
set ignorecase
set smartcase
set incsearch
set hlsearch

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

map <space> /
map <c-space> ?

"set smartindent
"set tabstop=2
"set shiftwidth=2
"set expandtab

set wildignore+=*.o,*.obj,.git,.hg/**,*.pyc,*.png,*.gif,*.jpg,*.jpeg,*.egg-info/**,*.mo
let g:CommandTAcceptSelectionTabMap='<CR>'

"hi ColorColumn ctermbg=234
"
if version >= 703
  set colorcolumn=81,82
endif

" MF additions (above is silvio's)

"Enable Spell check
"set spell

"Set autoindent
set ai

"Appearance
"set lines=80
"set columns=140
set guioptions-=T
set background=dark

"highlight current line
set cursorline

"highlight bg color of current line
hi cursorline ctermbg=black
hi colorcolumn ctermbg=234

" Enable use of the mouse for all modes
set mouse=a

" softwrap
set wrap linebreak textwidth=0

function! VisualTagsWrap()
  if !exists('g:tags_to_wrap')
      let g:tags_to_wrap=[]
  endif
  let g:tags_to_wrap=split(input('space separated tags to wrap block: ', join(g:tags_to_wrap, ' ')), '\s\+')
  if len(g:tags_to_wrap)>0
      execute 'normal! `>a</'.join(reverse(g:tags_to_wrap), '></').'>'
      execute 'normal! `<i<'.join(reverse(g:tags_to_wrap), '><').'>'
  endif
endfunction


vnoremap <silent>,w <ESC>:call VisualTagsWrap()<CR>

vmap blame :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

" Vundle stuff



filetype off                  

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'       
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
if executable('ag')
    Bundle 'mileszs/ack.vim'
    let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
elseif executable('ack-grep')
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
    Bundle 'mileszs/ack.vim'
elseif executable('ack')
    Bundle 'mileszs/ack.vim'
endif

Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
if executable('ctags')
  Bundle 'majutsushi/tagbar'
endif

" snippets
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
" Source support_function.vim to support vim-snippets.
if filereadable(expand("~/.vim/bundle/vim-snippets/snippets/support_functions.vim"))
    source ~/.vim/bundle/vim-snippets/snippets/support_functions.vim
endif

" html
Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'tpope/vim-haml'

" javascript
Bundle 'elzr/vim-json'
Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'briancollins/vim-jst'
Bundle 'kchmck/vim-coffee-script'

" python
Bundle 'klen/python-mode'
Bundle 'python.vim'
Bundle 'python_match.vim'
Bundle 'pythoncomplete'

" ruby
Bundle 'tpope/vim-rails'
let g:rubycomplete_buffer_loading = 1

" other
Bundle 'tpope/vim-markdown'
Bundle 'spf13/vim-preview'
Bundle 'tpope/vim-cucumber'
Bundle 'quentindecock/vim-cucumber-align-pipes'
Bundle 'Puppet-Syntax-Highlighting'


filetype plugin indent on   


" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
