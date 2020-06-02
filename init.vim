
" Basic Configuration

set number
syntax on

map Q :q<CR>
map S :w<CR>


" Plugins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'magic-dot-files/TagHighlight'
Plug 'Lokaltog/vim-powerline'
Plug 'vim-scripts/javacomplete'

call plug#end()

