set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'fholgado/minibufexpl.vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'jacoborus/tender.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'morhetz/gruvbox'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tomasr/molokai'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'joshdick/onedark.vim'
Plugin 'gregsexton/matchtag'
" Plugin 'junegunn/vim-slash'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'justinmk/vim-sneak'
Plugin 'ap/vim-css-color'
" Plugin 'wellle/targets.vim'
" Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'junegunn/limelight.vim'
Plugin 'mhinz/vim-signify'
Plugin 'matze/vim-move'
" Plugin 'tpope/vim-commentary'
" Plugin 'terryma/vim-expand-region'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'haya14busa/incsearch.vim'
" Plugin 'justinmk/vim-sneak'
" Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/fzf'
Plugin 'w0rp/ale'
Plugin 'dyng/ctrlsf.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'marijnh/tern_for_vim'
Plugin 'easymotion/vim-easymotion'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'frankier/neovim-colors-solarized-truecolor-only'
" Plugin 'Yggdroot/indentLine'
" Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
" Plugin 'majutsushi/tagbar'
Plugin 'posva/vim-vue'
" Plugin 'sekel/vim-vue-syntastic'
Plugin 'tpope/vim-fugitive'
" Plugin 'sjl/gundo.vim'
" Plugin 'VimIM'
" Plugin 'CodeFalling/fcitx-vim-osx'
Plugin 'ryanoasis/vim-devicons'
filetype plugin indent on
synta on
call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-pairs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairsMapCh = 0
let g:AutoPairsFlyMode = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-jsdoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-nerdtree-syntax-highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1
" let g:NERDTreeDisableExactMatchHighlight = 1
" let g:NERDTreeDisablePatternMatchHighlight = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeLimitedSyntax = 1
" let g:NERDTreeSyntaxDisableDefaultExtensions = 1
" let g:NERDTreeSyntaxEnabledExtensions = ['json']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 0
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
nnoremap <c-b> :ALEDisable<cr>
" let g:ale_lint_on_insert_leave = 1
nmap <silent> <C-l> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-devicons
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-devicons
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
" if !has("gui_vimr")
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:DevIconsEnableFoldersOpenClose = 1
  let g:airline_powerline_fonts = 1
  autocmd  FileType nerdtree setlocal  nolist
" endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-move
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'
nnoremap <C-k>   Move current line/selections up
nnoremap <C-j>   Move current line/selections down

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :let g:Vimim_shuangpin = 0
" 中文输入时使用英文标点符号
" let g:Vimim_punctuation = -1
" 设置反斜杠为切换键,关闭gi模式
" let g:Vimim_map = 'c-bslash'
" let g:Vimim_mycloud = -1
" let g:Vimim_cloud = ''
" let g:Vimim_toggle = ''
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <F5> :GundoToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-indent-guide
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_vimr') 
  let g:indent_guides_enable_on_vim_startup = 1
endif
" let g:indent_guides_auto_colors = 1
" hi IndentGuidesOdd  guibg=red   ctermbg=231
" hi IndentGuidesEven guibg=green ctermbg=230


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" limelight.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
" Default: 0.5
let g:limelight_default_coefficient = 0.7
let g:limelight_paragraph_span = 1
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" autocmd BufReadPost *  Limelight


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"goyo.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap go :Goyo<cr>
nnoremap g. :q<cr>gt:Goyo<cr>
nnoremap g, :q<cr>gT:Goyo<cr>
" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fcitx-vim-osx
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-expand-region
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:expand_region_text_objects = { 'a}': 1 }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
" map f <Plug>(easymotion-prefix)
nmap , <Plug>(easymotion-s)
" nmap s <Plug>(easymotion-jumptoanywhere)
" nmap S <Plug>(easymotion-vim-n)
" nmap <c-s> <Plug>(easymotion-s)
" nmap ff <Plug>(easymotion-f)
" nmap s <Plug>(easymotion-lineforward)
" nmap s <Plug>(easymotion-lineanywhere)
" nmap fj <Plug>(easymotion-j)
" nmap fk <Plug>(easymotion-k)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 修改默认选择补全快捷键
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_complete_in_comments = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ultisnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 指定python路径
let g:python2_host_prog = '/usr/local/bin/python'
" 指定自定义代码片段文件夹路径
set rtp+=~/doc/private/UltiSnips
let g:UltiSnipsSnippetsDir = '~/doc/private/UltiSnips'
let g:UltiSnipsSnippetDirectories=[
      \ 'javascript_base',
      \ 'javascript_module',
      \ 'vue',
      \ 'html',
      \ 'markdown',
      \ 'css',
      \]
let g:UltiSnipsEnableSnipMate = 0
" let g:UltiSnipsExpandTrigger = "<c-=>"
" let g:UltiSnipsJumpForwardTrigger = "<c-j>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
autocmd BufReadPost *.snippets  nnoremap  isnippet more ""<cr>endsnippet<esc>O
autocmd BufReadPost *.snippets  set ft=sh

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_ctags_bin = '/usr/local/bin/myctags'
let g:tagbar_autofocus = 1
nnoremap <c-t> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-vue
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.vue setf vue
" 防止语法颜色突然消失
au FileType vue syntax sync fromstart


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctrlsf.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <c-f> <Plug>CtrlSFVwordExec
nmap <c-f> <Plug>CtrlSFCwordPath
nnoremap <c-s> :CtrlSF 
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <c-z>  :FZF<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ack.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <c-a> :Ack


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indentLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置缩进线的样式
let g:indentLine_char='|'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <F2> :NERDTree<cr>
" autocmd vimenter * NERDTree;<c-w>w
let g:NERDTreeShowIgnoredStatus = 1
" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = '-'
" autocmd vimenter * if !argc()|NERDTree|endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinPos=1
let g:NERDTreeChDirMode=2
map <F4> <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree-git-plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:NERDTreeIndicatorMapCustom = {
    " \ "Modified"  : "✹",
    " \ "Staged"    : "✚",
    " \ "Untracked" : "✭",
    " \ "Renamed"   : "➜",
    " \ "Unmerged"  : "═",
    " \ "Deleted"   : "✖",
    " \ "Dirty"     : "✗",
    " \ "Clean"     : "✔︎",
    " \ "Unknown"   : "?"
    " \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdcommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动命令
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"记住最后一次编辑的位置
autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" |  endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
set rnu

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

" if has('nvim')
  " tnoremap <c-/> <c-\><c-n>
  " tnoremap <c-,> <c-\><c-n>gt<cr>
  " tnoremap <c-.> <c-\><c-n>GT<cr>
" endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 键盘映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (,
nnoremap v(, vF(<right>of,<left>
nnoremap d(, vF(<right>of,<left>d
nnoremap c(, vF(<right>of,<left>c

"  ,
nnoremap v<space>, vF <right>of,<left>
nnoremap d<space>, vF <right>of,<left>d
nnoremap c<space>, vF <right>of,<left>c

"  ;
nnoremap v<space>; vF <right>of;<left>
nnoremap d<space>; vF <right>of;<left>d
nnoremap c<space>; vF <right>of;<left>c

"  (
nnoremap v<space>( vF <right>of(<left>
nnoremap d<space>( vF <right>of(<left>d
nnoremap c<space>( vF <right>of(<left>c

"  )
nnoremap v<space>) vF <right>of)<left>
nnoremap d<space>) vF <right>of)<left>d
nnoremap c<space>) vF <right>of)<left>c

" .)
nnoremap v.) vF.<right>of)
nnoremap d.) vF.<right>of)d
nnoremap c.) vF.<right>of)c
nnoremap va.) vF.of)
nnoremap da.) vF.of)d
nnoremap ca.) vF.of)c

" <space><space>
nnoremap v<space><space> vF <right>of <left>
nnoremap d<space><space> vF <right>of <left>d
nnoremap c<space><space> vF <right>of <left>c

" .,
nnoremap v., vF.<right>of)
nnoremap d., vF.<right>of)
nnoremap c., vF.<right>of)c

" 函数调用文本对象
" nmap vf <Plug>(expand_region_expand)o0
nmap vf va{o0
nmap <localleader>zf vf-cc
nmap <localleader>rf vf-ci
nmap <localleader>df vfd
nmap <localleader>cf vfc

" 函数定义文本对象
nnoremap vd vi)o0
nmap <localleader>zd vd-cc
nmap <localleader>rd vd-ci
nmap <localleader>dd vdd
nmap <localleader>cd vdc

" 全部
nnoremap val ggVG
nnoremap vli ^v$<left>

map q -cc
map w -ci
nnoremap M $
nnoremap H ^
nnoremap ; "*yy
nnoremap <c-w> <c-w>w
nnoremap e <c-b>
nnoremap m <c-f>
nnoremap ' ``
nnoremap zz ~<left>
" nnoremap <silent> <localleader>; "+yy
" nnoremap <silent> <localleader>; "*yy

nnoremap <cr> G
nnoremap K o<esc>
nnoremap L yyp
noremap < <<<esc>
noremap > >><esc>
noremap P o<esc>p
" nnoremap <localleader>p "+p
" nnoremap <localleader>P o<esc>"+p
nnoremap p "*p
" nnoremap <localleader>P o<esc>"*p
nnoremap U <c-r>
nnoremap <localleader><space> i<space><esc>
nnoremap { f{%
nnoremap [ f[%
nnoremap ( f(%
nnoremap vv <c-v>
" nnoremap <localleader>t :terminal<cr>
" nmap <localleader>c -cs
" nnoremap <c-/> :bd<cr>
" nnoremap <localleader>va :Tlist<cr>
" nnoremap <localleader>s :nmapc<cr>:imapc<cr>:vmapc<cr>:omapc<cr>:w<cr>:so ~/.vimrc<cr>
" nnoremap <localleader>so :w<cr>:so ~/.vimrc<cr>
nnoremap <F3> :w<cr>:so ~/.vimrc<cr>
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
" noremap j gj
" noremap k gk
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
nnoremap ct vat$o0c
nnoremap dt vat$o0ddd
nnoremap vt vat$o0
nmap zt vat-cc
nmap rt vat-ci
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

inoremap <c-j> <c-o>o
inoremap <c-k> <c-o>O
inoremap <c-s> <c-o>S
inoremap <c-h> <c-o>^
inoremap <c-l> <c-o>$
inoremap jj <Esc>

vnoremap ; "*y
vnoremap u <esc>
vnoremap M $
vnoremap H ^
vnoremap L ygv<esc>p
vmap ' S'
vmap " S"
vmap ` S`
vmap ) S)
vmap [ S[
vmap { S}
" vmap + f{<Plug>(expand_region_expand)oH
" vmap _ f{<Plug>(expand_region_shrink)oH

onoremap M $
onoremap H ^

if has("gui_vimr")
  set background=dark
  " colorscheme onedark
  " colorscheme molokai
  colorscheme solarized
elseif has("gui_running")
  " set background=dark
  " colorscheme molokai
  set guifont=AurulentSansMono\ Nerd\ Font:h18
  colorscheme onedark
else
  " set background=dark
  " colorscheme molokai
  " colorscheme onedark
  " colorscheme gruvbox
  " colorscheme hybrid
  " colorscheme tender
  " colorscheme solarized
endif
nnoremap <localleader>. gt
nnoremap <localleader>, gT
nnoremap <c-.> gt
nnoremap <c-,> gT
nnoremap s ;
