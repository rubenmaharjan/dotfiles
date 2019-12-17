set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()

"Plugins list
"Plugin 'tomasiser/vim-code-dark'
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'valloric/youcompleteme'
"Plugin 'scrooloose/nerdtree'

filetype plugin indent on    " required

let mapleader=","

set hidden
set number
set hls
set path+=**
set wildmenu
syntax on
colorscheme onedark
set relativenumber
set cursorline 
set incsearch
set autochdir
set expandtab
set tabstop=4
set shiftwidth=4



"Making Arrow keys useless
noremap <Up> ddkP
noremap <Down> ddp
noremap <Left> <Nop>
noremap <Right> <Nop>


let g:pymode_python = 'python3'

"Eclim 
let g:EclimCompletionMethod = 'omnifunc'
let g:EclimBrowser = 'firefox'

"Airline
let g:airline_theme='onedark'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#bufferline#enabled = 1
"let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=0
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

"Typescript-vim
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:tsuquyomi_disable_quickfix = 1
"let g:syntastic_typescript_checkers = ['tsuquyomi'] 

"CtrlP vim
set runtimepath^=~/.vim/bundle/ctrlp.vim 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'

"Indent Line
let g:indentLine_setColors = 1
let g:indentLine_char = '|'
let g:indentLine_color_term = 209
let g:indentLine_leadingSpaceEnabled = 1

"YouCompleteMe
set completeopt-=preview

"Remap
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

set list
set listchars=tab:›\ ,eol:¬,trail:⋅
