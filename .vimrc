										"FOR LINUX
syntax enable
set nocompatible
set nu	"number
set relativenumber
set si	"smartindent
set ai	"autoindent
set ts=4 "tabstop = 4
set sw=4 "shiftwidth = 4
set laststatus=2
colorscheme gruvbox
set bg=dark

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

vnoremap <C-c> "*y :let @+=@<CR>
nnoremap <C-p> "+p

nnoremap <C-a> ggvG

set splitbelow splitright
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

filetype on
filetype plugin on	
filetype plugin indent on

autocmd filetype cpp noremap <F7> <ESC> :w <CR> : !g++ -std=c++17 -Wshadow -Wall -o %< % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG -DONPC && ./%< < inp > out<CR>
autocmd filetype cpp inoremap <F7> <ESC> :w <CR> : !g++ -std=c++17 -Wshadow -Wall -o "%<" "%" -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG -DONPC && "./%<" < inp > out <CR>

autocmd filetype cpp noremap <F8> <ESC> :w <CR> : !g++ -std=c++17 -Wshadow -Wall -o %< % -O2 -Wno-unused-result -DONPC && ./%< <CR>
autocmd filetype cpp inoremap <F8> <ESC> :w <CR> : !g++ -std=c++17 -Wshadow -Wall -o %< % -O2 -Wno-unused-result -DONPC  && ./%< <CR>

autocmd filetype cpp noremap <F9> <ESC> :w <CR> : !g++ -std=c++17 -Wshadow -Wall -o %< % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG -DONPC && ./%< <CR>
autocmd filetype cpp inoremap <F9> <ESC> :w <CR> : !g++ -std=c++17 -Wshadow -Wall -o %< % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG -DONPC && ./%< <CR>


autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+17\ \-Wall

autocmd filetype c nnoremap <F5> :w <bar> !gcc % -o %:r.out<CR>
autocmd filetype c nnoremap <F6> : !./%:r.out<CR>

"autocmd filetype python nnoremap <F5> :w <bar> !python3 %<CR>

"call the .vimrc.ply file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif 
