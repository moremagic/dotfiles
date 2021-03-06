if &compatible
  set nocompatible
endif

syntax on
filetype plugin indent on

" ==============================================
" vim plugin [dein] setup
let s:dein_path = expand('~/.vim/dein')
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_path)
  call dein#begin(s:dein_path)

  call dein#add('Shougo/dein.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('kovisoft/slimv')

  " +++ deplete.nvm +++
  call dein#add('shougo/deoplete.nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')

  " +++ vim-terraform +++
  call dein#add('hashivim/vim-terraform')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('juliosueiras/vim-terraform-completion')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" +++ slimv で roswell を使用する設定 +++
let g:slimv_swank_cmd = "!ros -s swank -e '(swank:create-server)' wait &"
let g:slimv_lisp = 'ros run'
let g:slimv_impl = 'sbcl'

" +++ deplete +++
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
call deoplete#initialize()

" +++ terraform +++
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
let g:terraform_fmt_on_save = 1

" +++ syntastic +++
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ==============================================

set nocompatible
filetype off
filetype plugin indent on

" setting
"文字コードをUFT-8に設定
set enc=utf-8
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" 構文ハイライト有効
" syntax enable
" カラースキーム
colorscheme peachpuff
" ダーク系のカラースキームを使う
set background=dark

" バックスペースを有効
set backspace=indent,eol,start

