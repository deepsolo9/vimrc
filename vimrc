filetype off
call pathogen#incubate()
call pathogen#helptags()

map <leader>v <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
map <leader>a <Esc>:Ack!
map <leader>p :TlistToggle<CR>

nmap <leader>s :lv /<c-r>=expand("<cword>")<cr>/gj */*.py client/**/*.py %<cr>:lw<cr> 
nmap <leader>a :lv /<c-r>=expand("<cword>")<cr>/  %<cr>:lw<cr> 

set foldmethod=indent
set foldlevel=99
set number

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

syntax on
filetype on
filetype plugin indent on

let g:pyflakes_use_quickfix = 0
let python_highlight_all = 1
colorscheme wombat256

set tabstop=4 shiftwidth=4 noexpandtab
set hlsearch
set incsearch
set laststatus=2
set showcmd
set scrolloff=3
set showmatch
set matchtime=10
set autowrite
set history=50

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set cursorline

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set backspace=indent,eol,start
map <C-\> :vs <CR>:exec("tag ".expand("<cword>"))<CR>
"set fileencodings=utf-8,chinese
