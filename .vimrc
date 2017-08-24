set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gregsexton/matchtag'
" Plugin 'justinmk/vim-sneak'
Plugin 'ap/vim-css-color'
Plugin 'wellle/targets.vim'
" Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'junegunn/limelight.vim'
Plugin 'mhinz/vim-signify'
Plugin 'matze/vim-move'
" Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-expand-region'
" Plugin 'airblade/vim-gitgutter'
Plugin 'haya14busa/incsearch.vim'
" Plugin 'justinmk/vim-sneak'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/fzf'
Plugin 'w0rp/ale'
Plugin 'dyng/ctrlsf.vim'
Plugin 'VundleVim/Vundle.vim'
" Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'marijnh/tern_for_vim'
Plugin 'easymotion/vim-easymotion'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'frankier/neovim-colors-solarized-truecolor-only'
" Plugin 'Yggdroot/indentLine'
Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'majutsushi/tagbar'
Plugin 'posva/vim-vue'
" Plugin 'sekel/vim-vue-syntastic'
Plugin 'tpope/vim-fugitive'
" Plugin 'sjl/gundo.vim'
" Plugin 'VimIM'
Plugin 'CodeFalling/fcitx-vim-osx'
filetype plugin indent on
synta on
call vundle#end()
" colorscheme solarized
"
" Set the background theme to dark

" Call the theme one
" (one is the name of color scheme)

" Don't forget set the airline theme as well.
" let g:airline_theme='solarized'

" This line enables the true color support.
" ale
" let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_Str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0
let g:ale_lint_on_text_changed = 'never'
nnoremap sa :ALEDisable<cr>

" let g:ale_lint_on_insert_leave = 1
" 快速导航
nmap <silent> <C-l> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

" vim-move
let g:move_key_modifier = 'C'
nnoremap <C-k>   Move current line/selections up
nnoremap <C-j>   Move current line/selections down

" set termguicolors
if has("gui_vimr")
  colorscheme solarized
  set background = "dark"
  " colorscheme gruvbox
  " set background = "light"
else
  colorscheme solarized
  " set background = "dark"
endif

"   " :let g:Vimim_shuangpin = 0
" 中文输入时使用英文标点符号
" let g:Vimim_punctuation = -1
" 设置反斜杠为切换键,关闭gi模式
" let g:Vimim_map = 'c-bslash'
" let g:Vimim_mycloud = -1
" let g:Vimim_cloud = ''
" let g:Vimim_toggle = ''

" gundo
" nnoremap <F5> :GundoToggle<CR>
"
"vim-indent-guide
let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 1
hi IndentGuidesOdd  guibg=red   ctermbg=231
hi IndentGuidesEven guibg=green ctermbg=230

" fcitx-remote
" 输入中后后按<c-space>切换成英文后再次进入中文
" inoremap <silent> <c-space> <esc>:call system('fcitx-remote -c')<cr>
" nnoremap <c-[> :call A()<cr>
" function! A()
  " let input_status = system('fcitx-remote')
  " if input_status == 2
    " echo 2
     " call system('fcitx-remote -c')
  " endif
    " echo 1
     " call system('fcitx-remote -o')
" endfunction

" function! Fcitx2en()
    " let input_status = system('fcitx-remote')
    " if input_status == 2
        " let b:inputtoggle = 1
        " call system('fcitx-remote -c')
    " endif
" endfunction
" function! Fcitx2zh()
    " try
	" if b:inputtoggle == 1
			" call system('fcitx-remote -o')
			" let b:inputtoggle = 0
	" endif
    " catch /inputtoggle/
        " let b:inputtoggle = 0
    " endtry
" endfunction
" Autocmds:
" au InsertLeave * call Fcitx2en()
" au InsertEnter * call Fcitx2zh()

" expand_region
let g:expand_region_text_objects = { 'a}': 1 }


" easymotion
let g:EasyMotion_smartcase = 1
" map f <Plug>(easymotion-prefix)
" map fs <Plug>(easymotion-s)
" map ff <Plug>(easymotion-f)
map fl <Plug>(easymotion-lineforward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fh <Plug>(easymotion-linebackward)

" youcompleteme
" 修改默认选择补全快捷键
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" ultisnips
" 指定python路径
let g:python2_host_prog = '/usr/local/bin/python'
" 指定自定义代码片段文件夹路径
set rtp+=~/.vim/UltiSnips
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsSnippetDirectories=[
      \ 'javascript_base',
      \ 'javascript_module',
      \]
let g:UltiSnipsEnableSnipMate = 0
" let g:UltiSnipsExpandTrigger = "<c-=>"
" let g:UltiSnipsJumpForwardTrigger = "<c-j>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" tagbar
let g:tagbar_ctags_bin = '/usr/local/bin/myctags'
let g:tagbar_autofocus = 1
nnoremap <c-t> :TagbarToggle<CR>

" vim-vue
au BufNewFile,BufRead *.vue setf vue
" 防止语法颜色突然消失
au FileType vue syntax sync fromstart

" CtrlSF
vmap <c-f> <Plug>CtrlSFVwordExec
nmap <c-f> <Plug>CtrlSFCwordPath
nnoremap <c-s> :CtrlSF

" fzf
nnoremap <c-z>  :FZF<cr>

" Ack
nnoremap <c-a> :Ack


" indentLine
" 设置缩进线的样式
let g:indentLine_char='|'

" syntastic
" let g:syntastic_vue_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['eslint']

" " let g:syntastic_html_checkers = ['tidy']
" " let g:syntastic_css_checkers = ['csslint']

" let g:syntastic_auto_jump = 3
" let g:syntastic_enable_highlighting=1
" " let g:syntastic_javascript_eslint_exec = 'eslint'
" let g:syntastic_enable_signs = 1
" " 设置错误符号
" let g:syntastic_error_symbol='✗'
" " 设置警告符号
" let g:syntastic_warning_symbol="⚠"
" " 是否在打开文件时检查
" let g:syntastic_check_on_open=0
" " 是否在保存文件后检查
" let g:syntastic_check_on_wq=1
" " let g:syntastic_always_populate_loc_list = 1
" " let g:syntastic_auto_loc_list = 1

" nerdcommenter
let g:NERDSpaceDelims = 1
" vue文件夹自动切换注释样式
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction

"记住最后一次编辑的位置
autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" |  endif
autocmd BufReadPost *.snippets  nnoremap  isnippet more ""<cr>endsnippet<esc>O
autocmd BufReadPost *.snippets  set ft=sh


" vim设置=========================================================

" nvim开启使用系统剪切板
set clipboard+=unnamedplus

" 设置字体和大小
" set guifont=Courier:h15

" 切换文件时自动保存
set autowrite

" 设置打开vim的窗口大小
" set lines=500
" set columns=500


" 设置支持鼠标
set mouse=a

" 显示标尺
set ruler

" 设置编码
set encoding=utf-8

set showmatch

" 显示光标下划线
 " set cursorline
 " highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" set cursorcolumn
" highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

" 显示状态栏
set laststatus=2

" 设置搜索高亮
set hlsearch

" 设置快速搜索
set incsearch

" 设置光标保持离当前页面最上面一行和最下面一行的行数
set scrolloff=10

" 设置固定行号
set nu

" 设置相对行号
" set rnu

" 设置tab键等于几个空格
set tabstop=2

" 设置按下tab输入空格而不是tab制表符
set expandtab

" 设置缩进时的空格数通常和tabstop相同
set shiftwidth=2

" 设置自动缩进
set autoindent

" 设置聪明缩进
set smartindent

set display=lastline

let mapleader='-'
let maplocalleader=' '

if has('nvim')
  tnoremap <c-/> <c-\><c-n>
  tnoremap <c-,> <c-\><c-n>gt<cr>
  tnoremap <c-.> <c-\><c-n>GT<cr>
endif


" 普通模式=====================================
nnoremap vas F vf 
nnoremap vs F <right>vf <left>

nnoremap v(, vF(<right>of,<left>
nnoremap d(, vF(<right>of,<left>d
nnoremap c(, vF(<right>of,<left>c

nmap vf <Plug>(expand_region_expand)$o^
nmap cf +-cc
nmap gf +-ci
nmap dfu +d


nnoremap v<space>, vF <right>of,<left>
nnoremap d<space>, vF <right>of,<left>d
nnoremap c<space>, vF <right>of,<left>c

nnoremap v<space>; vF <right>of;<left>
nnoremap d<space>; vF <right>of;<left>d
nnoremap c<space>; vF <right>of;<left>c

nnoremap v<space>( vF <right>of(<left>
nnoremap d<space>( vF <right>of(<left>d
nnoremap c<space>( vF <right>of(<left>c

nnoremap v<space>) vF <right>of)<left>
nnoremap d<space>) vF <right>of)<left>d
nnoremap c<space>) vF <right>of)<left>c

nnoremap v<space><space> vF <right>of <left>
nnoremap d<space><space> vF <right>of <left>d
nnoremap c<space><space> vF <right>of <left>c

nnoremap v., vF.<right>of)
nnoremap d., vF.of)d
nnoremap c., vF.<right>of)c

nnoremap vd vi)$o^
nmap cd v)$o^-cc
nmap gd v)-ci

nmap cct vat-cc
nmap gt vat-ci

nnoremap val ggVG

nnoremap vli ^v$<left>

" noremap <localleader>x ^i<!-- <esc>A --><esc>
" noremap <localleader>z ^5x$xxxx
map q -cc
map w -ci
nnoremap M $
nnoremap H ^
" nnoremap s ;
nnoremap ; yy
" nnoremap <c-w> <c-w>w
nnoremap e <c-b>
nnoremap m <c-f>
nnoremap ' ``
nnoremap z ~<left>
nnoremap <silent> <localleader>; "+yy
nnoremap <cr> G
nnoremap K o<esc>
nnoremap L yyp
noremap < <<<esc>
noremap > >><esc>
noremap P o<esc>p
nnoremap <localleader>p "+p
nnoremap <localleader>P o<esc>"+p
nnoremap U <c-r>
nnoremap <localleader><space> i<space><esc>
nnoremap { f{%
nnoremap [ f[%
nnoremap ( f(%
nnoremap vv <c-v>
nnoremap <localleader>t :terminal<cr>
" nmap <localleader>c -cs
nnoremap <c-.> gt
nnoremap <c-,> gT
" nnoremap <c-/> :bd<cr>
" nnoremap <localleader>va :Tlist<cr>
" nnoremap <localleader>s :nmapc<cr>:imapc<cr>:vmapc<cr>:omapc<cr>:w<cr>:so ~/.vimrc<cr>
" nnoremap <localleader>so :w<cr>:so ~/.vimrc<cr>
" nnoremap <localleader>ca :w<cr>:!casperjs %<cr>
nnoremap <localleader>n :w<cr>:!node %<cr>
nnoremap <localleader>b :w<cr>:!babel-node %<cr>
" nnoremap <localleader>ls :ls<cr>
" nnoremap <localleader>e : e!<cr>
nnoremap <localleader>w :w<cr>
nnoremap <localleader>c :%s/\s\+$//g<cr>
nnoremap <localleader>q :q!<cr>
nnoremap <localleader>a :wq<cr>
" nnoremap <silent><C-j> :m .+1<CR>==
" nnoremap <silent><C-k> :m .-2<CR>==
noremap j gj
noremap k gk
nnoremap cw ciw
nnoremap dw diw
nnoremap vw viw
nnoremap c) ci)
nnoremap d) di)
nnoremap v) vi)
nnoremap c' ci'
nnoremap d' di'
nnoremap v' vi'
nnoremap c{ ci{
nnoremap d{ di{
nnoremap v{ vi{
nnoremap c" ci"
nnoremap d" di"
nnoremap v" vi"
nnoremap d[ di[
nnoremap v[ vi[
nnoremap c[ ci[
nnoremap c` ci`
nnoremap d` di`
nnoremap v` vi`
nnoremap ct cit
nnoremap dt dit
nnoremap vt vit
nnoremap vat vat$o0
nmap t' vwS'
nmap t" vwS"
nmap t[ vwS[
nmap t{ vwS{
nmap t) vwS)
nmap t` vwS`
nmap t> vwS>
nmap d) ds)
nmap d" ds"
nmap d' ds'
nmap d` ds`
nmap d[ ds[
nmap d{ ds{
nmap d> ds>
nmap dt dst


" 插入模式=====================================
" inoremap <tab> <c-n>
" inoremap <c-space> <c-n>
inoremap <c-w> <c-w>
inoremap <c-u> <c-u>
" inoremap <c-l> <c-o>d$
" inoremap <c-k> <c-o>de
inoremap <c-o> <c-o>o
inoremap <c-l> <c-o>O
inoremap <c-s> <c-o>S
" inoremap <c-j> o<esc>ddO
inoremap jj <Esc>

" 视觉模式=====================================
" vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
" vnoremap <silent> <C-k> :m '<-2<CR>gv=gv
vnoremap <localleader>; "+y
vnoremap ; y
vnoremap { f{%
vnoremap [ f[%
vnoremap ( f(%
vnoremap u <esc>
vnoremap M $
vnoremap H ^
vnoremap L yO<esc>p
vmap ' S'
vmap " S"
vmap ` S`
vmap ) S)
vmap [ S[
vmap { S}
vmap + f{<Plug>(expand_region_expand)oH
vmap _ f{<Plug>(expand_region_shrink)oH
vmap \ <Plug>(expand_region_expand)

" 操作等待模式=====================================
onoremap M $
onoremap H ^
