
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

" NerdTree Config
map <F2> :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif

" TagBar Config
map <F8> :TagbarToggle<CR>


"syntastic 保存检查代码时候传入参数  
" let g:syntastic_java_javac_args="-cp ../../lib:../../bin -sourcepath ../../bin -Djava.ext.dirs=../../lib -d ../../bin"  

" run and compile java file
map <F5> :!cd %:p:h && java -cp ../../bin -Djava.ext.dirs=../../lib %:p:h:t.%:p:t:r  
map <F4> :!cd %:p:h && javac -cp ../../lib:../../bin -sourcepath ../../bin -Djava.ext.dirs=../../lib -d ../../bin *.java  
