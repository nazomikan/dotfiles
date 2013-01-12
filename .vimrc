" vi との互換性OFF
set nocompatible
" ファイル形式の検出を無効にする
filetype off
syntax on
set mouse=a
set noswapfile

augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END


" Vundle を初期化して
" Vundle 自身も Vundle で管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"Bundle 'pangloss/vim-javascript'
Bundle 'JavaScript-syntax'


" github にあるプラグイン

" vim-scripts プラグイン
Bundle 'scrooloose/nerdtree'

" github にないプラグイン

" colorsheme
Bundle 'jpo/vim-railscasts-theme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'Wombat'
Bundle 'wombat256.vim'
Bundle 'xoria256.vim'
Bundle 'newspaper.vim'
Bundle 'pyte'
Bundle 'Lucius'
Bundle 'mrkn256.vim'
Bundle 'Zenburn'
Bundle 'desert256.vim'

" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on 

set t_Co=256
colorscheme xoria256

if exists('b:did_indent')
  finish
endif

au FileType javascript set ts=2 sw=2 expandtab
au BufNewFile *.js set ft=javascript fenc=utf-8

"NERDTree
" 引数なしでvimを起動させた時はNERDTreeを開く
autocmd vimenter * if !argc() | call s:OnlyTree() | endif
function! s:OnlyTree()
    NERDTree
    wincmd l
    q
endfunction

" タブページの切り替えをWindowsのように
" SHIFT+Tabで行うように.
nmap <Tab>      gt
nmap <S-Tab>    gT
