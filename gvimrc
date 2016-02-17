set nocompatible

filetype indent plugin on

set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
" set t_vb=

" Set the command window height to 2 lines, to avoid many cases of having to
set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200


" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Set column line at 80
if version >= 703
  set colorcolumn=81,82
endif

"Enable Spell check
"set spell

"Set autoindent
set ai
"set case-insensitive searching
set ignorecase

"Appearance
set lines=50
set columns=262
"set guifont=Monaco:h14
set guioptions-=T
"set background=dark
set transparency=15
" colorscheme cobalt

colorscheme ir_black

"highlight current line
set cursorline

"highlight bg color of current line
"hi cursorline guibg=#7F3700
"hi colorcolumn guibg=#020236
hi cursorline guibg=#444444

let NERDTreeQuitOnOpen=1

map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

map! <D-1> <C-O>:tabn 1<CR>
map! <D-2> <C-O>:tabn 2<CR>
map! <D-3> <C-O>:tabn 3<CR>
map! <D-4> <C-O>:tabn 4<CR>
map! <D-5> <C-O>:tabn 5<CR>
map! <D-6> <C-O>:tabn 6<CR>
map! <D-7> <C-O>:tabn 7<CR>
map! <D-8> <C-O>:tabn 8<CR>
map! <D-9> <C-O>:tabn 9<CR>

" quit edit for gvimrc
map <leader>g :tabedit ~/.gvimrc<CR>

" When gvimrc is edited, reload it
autocmd! bufwritepost .gvimrc source ~/.gvimrc

" Nerdtree settings
" close nerdtree with last tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" open with leader+n
map <C-n> :NERDTreeToggle<CR>

" open when no files are selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

autocmd FileType javascript,jsx setlocal expandtab shiftwidth=2 softtabstop=2
