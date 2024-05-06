" ---------- PLUGINS ---------- "
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-fugitive'
Plug 'nordtheme/vim'
Plug 'vim-airline/vim-airline'

call plug#end()


" ---------- VIM SETTINGS ---------- "
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" line number; toggling between line number modes
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" Mouse settings
set mouse=a
set ttyfast
" sgr enables resizing, etc.. and fixes mouse not working for >220c in vim
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" Color theme
"color elflord
color nord

syntax on
set hlsearch
set ignorecase
set smartcase
set viminfo='100,<1000,s100,h

fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map f :call ShowFuncName() <CR>


" ---------- KEY BINDINGS ------------ "
" smarter diff algorithm
set diffopt+=algorithm:patience

" ---------- PLUGIN SETTINGS ---------- "
" fzf - ignore files when searching
command! -bang -nargs=* Rg
  \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Nerdtree - open with Ctrl-N
nmap <C-n> :NERDTreeFind<CR>
