"Specif a directory for plugins
"" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'valloric/youcompleteme'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'rust-lang/rust.vim'
Plug 'stephpy/vim-yaml'
Plug 'airblade/vim-gitgutter'
Plug 'suoto/vim-hdl'

" Initialize plugin system
call plug#end()


set number
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set noshowmode

map <C-d> :NERDTreeToggle<CR>

let g:UltiSnipsExpandTrigger="<c-j>"

colorscheme gruvbox
set background=dark    " Setting dark mode
let g:gruvbox_contrast_dark = "medium"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set completeopt-=preview

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_args = "-E"
let g:syntastic_python_pylint_post_args="--max-line-length=100"
let g:syntastic_python_pylint_args = "--max-line-length=100"

let g:lightline = {
     \ 'colorscheme': 'gruvbox',
           \ }

map <leader>e <ESC>: call SyntasticToggle() <CR>
map ; :FZF<CR>

let g:gitgutter_enabled = 0

map <leader>g <ESC>:GitGutterToggle <CR>

nnoremap <leader>i :split<CR> :YcmCompleter GoToDeclaration <CR>
nnoremap <leader>o :split<CR> :YcmCompleter GoToDefinition <CR>

let g:pymode_python = 'python3'

let g:syntastic_java_checkers = []
let g:syntastic_is_open = 0

function! SyntasticToggle()
   if g:syntastic_is_open == 1
       lclose
       let g:syntastic_is_open = 0
   else
       Errors
       let g:syntastic_is_open = 1
   endif
endfunction

