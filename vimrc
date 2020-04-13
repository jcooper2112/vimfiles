execute pathogen#infect()
colorscheme badwolf	"selected colorscheme
syntax enable		"enable syntax processing
filetype on
set tabstop=4		"number of visual spaces per tab
set softtabstop=4	"number of spaces in tab when editing
set expandtab		"tabs are spaces
set number 		"show line numbers
set showcmd		"show command in bottom bar
set cursorline		"highlights current line
set wildmenu		"visual autocomplete for command menu
set hlsearch        "hightlight search
set laststatus=2

"escape to clear search highlights
"nnoremap <silent><Esc> :nohlsearch<bar>:echo<CR>
set showmatch       "show matching parenthesis

"swtiches windows between last file.
nnoremap <Leader><Leader> :e#<CR>
map <C-o> :NERDTreeToggle<CR>

