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

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

syntax on
filetype on
filetype plugin indent on
set number

let g:pyflakes_use_quickfix = 0

set backspace=indent,eol,start

map <C-\> :vs <CR>:exec("tag ".expand("<cword>"))<CR>
