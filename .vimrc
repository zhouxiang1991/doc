set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let mapleader='-'
let maplocalleader=' '

Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
set conceallevel=1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"


Plugin 'othree/javascript-libraries-syntax.vim'
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_vue = 1

Plugin 'Raimondi/vim_search_objects'
Plugin 'terryma/vim-expand-region'
Plugin 'kshenoy/vim-signature'
" Plugin 'Konfekt/FastFold'
" Plugin 'pseewald/vim-anyfold'


" p 选择最后粘贴的文本
" Plugin 'saaguero/vim-textobj-pastedtext'
" let g:pastedtext_select_key = 'p'


" b 选择块
Plugin 'rhysd/vim-textobj-anyblock'
let g:textobj#anyblock#blocks = ['(', '{', '[', '<']
nmap vb vib
nmap cb cib
nmap db dib
nmap yb yib


" x 选择dom属性
Plugin 'whatyouhide/vim-textobj-xmlattr'
nmap vx vix
nmap cx cix
nmap dx dix
nmap yx yix


" c 快速选择块
Plugin 'coderifous/textobj-word-column.vim'
nmap vc vic
nmap cc cic
nmap dc dic
nmap yc yic


" c 选择行的块
Plugin 'Chun-Yang/vim-textobj-chunk'
let g:textobj_chunk_no_default_key_mappings = 1
omap ih <Plug>(textobj-chunk-i)
xmap ih <Plug>(textobj-chunk-i)
nmap vh vih
nmap yh vih
nmap ch vih


" <space> 选择多个空白行
Plugin 'zandrmartin/vim-textobj-blanklines'


" f 选择当前光标两边相同字符之间的文本
" Plugin 'thinca/vim-textobj-between'


" e 选择全本
Plugin 'kana/vim-textobj-entire'
nmap ve vie
" nmap ce cie
" nmap de die
" nmap ye yie


" u 选择当前到最近一个标点符号的字符
Plugin 'beloglazov/vim-textobj-punctuation'
nmap vu viu
nmap cu ciu
nmap du diu
nmap yu yiu


" c 选择注释
Plugin 'glts/vim-textobj-comment'
let g:textobj_comment_no_default_key_mappings = 1
xmap ag <Plug>(textobj-comment-a)
omap ag <Plug>(textobj-comment-a)
xmap ig <Plug>(textobj-comment-i)
omap ig <Plug>(textobj-comment-i)
nmap vg vag
nmap dg dag


" , 选择函数参数
Plugin 'sgur/vim-textobj-parameter'
nmap v, vi,
nmap c, ci,
nmap d, di,
nmap y, yi,


" l 选择一行
Plugin 'kana/vim-textobj-line'


" j 
" Plugin 'Julian/vim-textobj-brace'


" q 选择'', "", ``
Plugin 'beloglazov/vim-textobj-quotes'
nmap vq viq
nmap cq ciq
nmap dq diq
nmap yq yiq


" i 选择缩进相同的文本
Plugin 'kana/vim-textobj-indent'


Plugin 'kana/vim-textobj-user'
Plugin 'timakro/vim-searchant'
Plugin 'jacoborus/tender.vim'
Plugin 'heavenshell/vim-jsdoc'
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_enable_es6 = 1
let g:jsdoc_param_description_separator = ' - '
nnoremap T :JsDoc<cr>


Plugin 'w0ng/vim-hybrid'
Plugin 'morhetz/gruvbox'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeLimitedSyntax = 1


Plugin 'tomasr/molokai'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'joshdick/onedark.vim'
Plugin 'gregsexton/matchtag'


Plugin 'Xuyuanp/nerdtree-git-plugin'
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
    
    
" Plugin 'justinmk/vim-sneak'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-repeat'
" Plugin 'wellle/targets.vim'
" Plugin 'scrooloose/syntastic'


Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 1
" hi IndentGuidesOdd  guibg=red   ctermbg=231
" hi IndentGuidesEven guibg=green ctermbg=230


" Plugin 'junegunn/limelight.vim'
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
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


" Plugin 'mhinz/vim-signify'


Plugin 'matze/vim-move'
let g:move_key_modifier = 'C'

" Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
" Plugin 'haya14busa/incsearch.vim'


" Plugin 'junegunn/goyo.vim'
nnoremap go :Goyo<cr>
" nnoremap g. :q<cr>gt:Goyo<cr>
" nnoremap g, :q<cr>gT:Goyo<cr>
" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1


Plugin 'junegunn/fzf'
nnoremap X  :FZF<cr>


Plugin 'w0rp/ale'
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
" nnoremap <c-b> :ALEDisable<cr>
" let g:ale_lint_on_insert_leave = 1
nmap <silent> <C-h> <Plug>(ale_previous_wrap)
nmap <silent> <C-l> <Plug>(ale_next_wrap)


Plugin 'dyng/ctrlsf.vim'
vmap E <Plug>CtrlSFVwordExec
nmap E <Plug>CtrlSFCwordPath
nnoremap <c-s> :CtrlSF 


Plugin 'VundleVim/Vundle.vim'


Plugin 'scrooloose/nerdtree'
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
" let g:nerdtree_tabs_open_on_console_startup=1
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'


Plugin 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_complete_in_comments = 1


Plugin 'marijnh/tern_for_vim'
nnoremap <localleader>d :TernDefTab<cr>
nnoremap <localleader>f :TernRefs<cr>
nnoremap <localleader>r :TernRename<cr>


Plugin 'easymotion/vim-easymotion'
let g:EasyMotion_smartcase = 1
" map f <Plug>(easymotion-prefix)
" nmap E <Plug>(easymotion-jumptoanywhere)
" nmap S <Plug>(easymotion-vim-n)
" nmap E <Plug>(easymotion-f)
" nmap s <Plug>(easymotion-lineforward)
nmap w <Plug>(easymotion-lineanywhere)
" nmap e <Plug>(easymotion-f)
" nmap q <Plug>(easymotion-F)
nmap e <Plug>(easymotion-s)


" Plugin 'altercation/vim-colors-solarized'
Plugin 'frankier/neovim-colors-solarized-truecolor-only'


" Plugin 'mileszs/ack.vim'
nnoremap <c-a> :Ack


Plugin 'jiangmiao/auto-pairs'

Plugin 'scrooloose/nerdcommenter'
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


Plugin 'terryma/vim-multiple-cursors'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'honza/vim-snippets'


Plugin 'SirVer/ultisnips'
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
let g:UltiSnipsJumpForwardTrigger = "<c-n>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"



" Plugin 'majutsushi/tagbar'
let g:tagbar_ctags_bin = '/usr/local/bin/myctags'
let g:tagbar_autofocus = 1
nnoremap <c-t> :TagbarToggle<CR>


Plugin 'posva/vim-vue'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-vue
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.vue setf vue
" 防止语法颜色突然消失
au FileType vue syntax sync fromstart


Plugin 'tpope/vim-fugitive'

" Plugin 'sjl/gundo.vim'
" nnoremap <F5> :GundoToggle<CR>


" Plugin 'VimIM'
" :let g:Vimim_shuangpin = 0
" 中文输入时使用英文标点符号
" let g:Vimim_punctuation = -1
" 设置反斜杠为切换键,关闭gi模式
" let g:Vimim_map = 'c-bslash'
" let g:Vimim_mycloud = -1
" let g:Vimim_cloud = ''
" let g:Vimim_toggle = ''


" Plugin 'CodeFalling/fcitx-vim-osx'
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


Plugin 'ryanoasis/vim-devicons'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:airline_powerline_fonts = 1
autocmd  FileType nerdtree setlocal  nolist

filetype plugin indent on
synta on
call vundle#end()

" 搜索视觉选中的文本
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>



autocmd BufReadPost *.snippets  nnoremap more isnippet more ""<cr>endsnippet<esc>O
autocmd BufReadPost *.snippets  set ft=sh
autocmd BufReadPost *.vimrc  nnoremap <c-l> :PluginInstall<cr>
autocmd BufReadPost *.vimrc  nnoremap <c-c> :PluginClean<cr>
autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" |  endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim开启使用系统剪切板
set clipboard+=unnamedplus


" 切换文件时自动保存
set autowrite


" 设置支持鼠标
set mouse=a

" 显示标尺
set ruler

" 搜索忽略大小写
set ignorecase

" 设置编码
set encoding=utf-8

set showmatch

" 显示光标下划线
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
set cursorcolumn
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

" 显示状态栏
set laststatus=2

" 设置搜索高亮
set hlsearch

" 设置快速搜索
set incsearch

" 设置光标保持离当前页面最上面一行和最下面一行的行数
set scrolloff=9999

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


" if has('nvim')
  " tnoremap <c-/> <c-\><c-n>
  " tnoremap <c-,> <c-\><c-n>gt<cr>
  " tnoremap <c-.> <c-\><c-n>GT<cr>
" endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本对象
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (,
" nnoremap v(, vF(<right>of,<left>
" nnoremap d(, vF(<right>of,<left>d
" nnoremap c(, vF(<right>of,<left>c

" \'
nnoremap v/' vF/<right>of'<left>
" nnoremap d/' vF/<right>of'<left>d
" nnoremap c/' vF/<right>of'<left>c

"  ,
" nnoremap v<space>, vF <right>of,<left>
" nnoremap d<space>, vF <right>of,<left>d
" nnoremap c<space>, vF <right>of,<left>c

"  ;
nnoremap v<space>; vF <right>of;<left>
" nnoremap d<space>; vF <right>of;<left>d
" nnoremap c<space>; vF <right>of;<left>c

"  (
nnoremap v<space>( vF <right>of(<left>
" nnoremap d<space>( vF <right>of(<left>d
" nnoremap c<space>( vF <right>of(<left>c

" ( 
" nnoremap v(<space> vF(<right>of <left>
" nnoremap d(<space> vF(<right>of <left>d
" nnoremap c(<space> vF(<right>of <left>c

"  )
" nnoremap v<space>) vF <right>of)<left>
" nnoremap d<space>) vF <right>of)<left>d
" nnoremap c<space>) vF <right>of)<left>c

" , )
" nnoremap v,) vF,of)<left>
" nnoremap d,) vF,of)<left>d
" nnoremap c,) vF,of)<left>c

"  .
nnoremap v<space>. vF<space><right>of.<left>
" nnoremap d<space>. vF<space><right>of.<left>d
" nnoremap c<space>. vF<space><right>of.<left>c
"
" <space>$
nnoremap v<space>$ vF<space><right>o$<left>

" .)
nnoremap v.) vF.<right>of)
" nnoremap d.) vF.<right>of)d
" nnoremap c.) vF.<right>of)c
" nnoremap va.) vF.of)
" nnoremap da.) vF.of)d
" nnoremap ca.) vF.of)c

" <space><space>
nnoremap v<space><space> vF <right>of <left>
" nnoremap d<space><space> vF <right>of <left>d
" nnoremap c<space><space> vF <right>of <left>c

" .,
nnoremap v., vF.<right>of)
" nnoremap d., vF.<right>of)
" nnoremap c., vF.<right>of)c

" 函数调用文本对象
" nmap vh <Plug>(expand_region_expand)o0o$

" 函数定义文本对象
" nnoremap vd va)$o0o

nnoremap cj ciw
nnoremap dj diw
nnoremap vj viw
nnoremap yj yiw
nnoremap vt vat$o0o
nmap t' viwS'
nmap t" viwS"
nmap t[ viwS[
nmap t{ viwS{
nmap t) viwS)
nmap t` viwS`
nmap t> viwS>
nmap g) ds)
nmap g" ds"
nmap g' ds'
nmap g` ds`
nmap g[ ds[
nmap g{ ds{
nmap g> ds>



inoremap <c-j> <c-o>o
inoremap <c-k> <c-o>O
inoremap <c-s> <c-o>S
inoremap <c-h> <c-o>^
inoremap <c-l> <c-o>$
inoremap <c-u> <c-o>u
inoremap jj <Esc>
vmap ' S'
vmap " S"
vmap ` S`
vmap ) S)
vmap ( S(
vmap [ S]
vmap ] S[
vmap { S{
vmap } S}

noremap ; "*y
vnoremap u <esc>
vnoremap L ygv<esc>p
nnoremap b, :bp<cr>
nnoremap b. :bn<cr>
nnoremap t, :tabp<cr>
nnoremap t. :tabn<cr>
nnoremap s :w<cr>
nnoremap q :q<cr>
nnoremap Q :q!<cr>
nnoremap K o<esc>
nnoremap L yyp
noremap < <<<esc>
noremap > >> <esc>
noremap P o<esc>p
noremap p "*p
nnoremap U <c-r>
nnoremap <localleader><space> i<space><esc>
nnoremap { f{%
nnoremap [ f[%
nnoremap ( f(%
nnoremap vv <c-v>
" nnoremap <localleader>t :terminal<cr>
" nnoremap <F3> :w<cr>:so ~/.vimrc<cr>
" nnoremap <localleader>ca :w<cr>:!casperjs %<cr>
nnoremap <localleader>n :w<cr>:!node %<cr>
nnoremap <localleader>b :w<cr>:!babel-node %<cr>
" nnoremap <localleader>ls :ls<cr>
" nnoremap <localleader>e : e!<cr>
nnoremap <localleader>c :%s/\s\+$//g<cr>
noremap j gj
noremap k gk
nnoremap M <c-f>
nnoremap H <c-b>
nnoremap <localleader>j [`
nnoremap <localleader>k ]`

vmap + <Plug>(expand_region_expand)
vmap _ <Plug>(expand_region_shrink)

if has("gui_vimr")
  set background=dark
  " colorscheme tender
  colorscheme onedark
  " colorscheme gruvbox
  " colorscheme molokai
  " colorscheme solarized
  " colorscheme hybrid
elseif has("gui_running")
  " set background=dark
  " colorscheme molokai
  set guifont=DejaVuSansMono\ Nerd\ Font:h18
  colorscheme onedark
else
  " set background=dark
  " colorscheme molokai
  colorscheme onedark
  " colorscheme gruvbox
  " colorscheme hybrid
  " colorscheme tender
  " colorscheme solarized
endif
