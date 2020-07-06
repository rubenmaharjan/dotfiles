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
colorscheme OceanicNext
set relativenumber
set cursorline 
set incsearch
"set autochdir
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
"let g:EclimCompletionMethod = 'omnifunc'
"let g:EclimBrowser = 'firefox'

"Airline
let g:airline_theme='raven'
let g:airline_skip_empty_sections = 1
"let g:airline#extensions#bufferline#enabled = 1
"let g:airline#extensions#tabline#exclude_preview = 1
"let g:airline#extensions#tabline#enabled = 1
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
autocmd FileType typescript syn clear foldBraces
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

"tsx
" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx,*.ts, set filetype=typescript.tsx ts=2 sw=2

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:tsuquyomi_disable_quickfix = 1
"let g:syntastic_typescript_checkers = ['tsuquyomi'] 

"CtrlP vim
"set runtimepath^=~/.vim/bundle/ctrlp.vim 
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'

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
nnoremap <C-p> :<C-u>FZF<CR>

set list
set listchars=tab:›\ ,eol:¬,trail:⋅
set tags=./tags,tags;

"LSP
if executable('pyls')
    "pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> <f2> <plug>(lsp-rename)
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"Leader Mappings
nnoremap <Leader>q" ciw""<Esc>P
nnoremap <Leader>q' ciw''<Esc>P
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P
nnoremap <leader>s :SyntasticToggleMode<CR>
nnoremap <leader>c :bufdo bd<CR>
"yanking/pasting to clipborad/primary
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
"" Leader Fuzzy
nnoremap <leader>f :Files <CR>
nnoremap <leader>b :Buffers <CR>
nnoremap <leader>a :Ag <CR>


"Latex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'
let g:livepreview_previewer = 'zathura'
