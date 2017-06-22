set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/syntastic'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'marijnh/tern_for_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Yggdroot/indentLine'
Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'majutsushi/tagbar'
Plugin 'posva/vim-vue'
" Plugin 'sekel/vim-vue-syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'VimIM'
filetype plugin indent on
synta on
call vundle#end()
" colorscheme solarized
"
"

"   " :let g:Vimim_shuangpin = 0  
" 中文输入时使用英文标点符号
let g:Vimim_punctuation = -1
" 设置反斜杠为切换键,关闭gi模式
let g:Vimim_map = 'no-gi,c-bslash'
let g:Vimim_mycloud = -1
let g:Vimim_cloud = ''
let g:Vimim_toggle = ''

" fcitx-remote
" 输入中后后按<c-space>切换成英文后再次进入中文
inoremap <silent> <c-space> <esc>:call system('fcitx-remote -c')<cr>
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



" easymotion
let g:EasyMotion_smartcase = 1
" map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-s)
map fs <Plug>(easymotion-f)
map fl <Plug>(easymotion-lineforward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fh <Plug>(easymotion-linebackward)

" youcompleteme
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" ultisnips
let g:python2_host_prog = '/usr/local/bin/python'
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsEnableSnipMate = 0
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<c->"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" vim-vue
au BufNewFile,BufRead *.vue setf vue
" 防止语法颜色突然消失
au FileType vue syntax sync fromstart
" 自动切换注释样式
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

" indentLine
" 设置缩进线的样式
let g:indentLine_char='|'

" syntastic
let g:syntastic_vue_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['eslint']

" let g:syntastic_html_checkers = ['tidy']
" let g:syntastic_css_checkers = ['csslint']

let g:syntastic_auto_jump = 3
let g:syntastic_enable_highlighting=1
" let g:syntastic_javascript_eslint_exec = 'eslint'
let g:syntastic_enable_signs = 1
" 设置错误符号
let g:syntastic_error_symbol='✗'
" 设置警告符号
let g:syntastic_warning_symbol="⚠"
" 是否在打开文件时检查
let g:syntastic_check_on_open=1
" 是否在保存文件后检查
let g:syntastic_check_on_wq=1
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1

" nerdcommenter
let g:NERDSpaceDelims = 1


" 变量列表
" let Tlist_Ctags_Cmd = '/usr/local/bin/myctags'
" let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
" let Tlist_Use_Left_Window = 1         "在右侧窗口中显示taglist窗口
" let Tlist_Use_SingleClick = 1
" let Tlist_File_Fold_Auto_Close = 1
" let Tlist_Sort_Type = 'name'

"记住最后一次编辑的位置
autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" |  endif

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

tnoremap <c-/> <c-\><c-n>
tnoremap <c-,> <c-\><c-n>gt<cr>
tnoremap <c-.> <c-\><c-n>GT<cr>

" 普通模式=====================================
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
nnoremap yw yiw
nnoremap caw caw
nnoremap daw daw
nnoremap vaw vaw
nnoremap yaw yaw
nnoremap c) ci)
nnoremap d) di)
nnoremap v) vi)
nnoremap y) yi)
nnoremap ca) ca)
nnoremap da) da)
nnoremap va) va)
nnoremap ya) ya)
nnoremap c' ci'
nnoremap d' di'
nnoremap v' vi'
nnoremap y' yi'
nnoremap ca' ca'
nnoremap da' da'
nnoremap va' va'
nnoremap ya' ya'
nnoremap ca{ ca{
nnoremap da{ da{
nnoremap va{ va{
nnoremap ya{ ya{
nnoremap c{ c{
nnoremap d{ d{
nnoremap v{ v{
nnoremap y{ y{
nnoremap c" ci"
nnoremap d" di"
nnoremap v" vi"
nnoremap y" yi"
nnoremap ca" ca"
nnoremap da" da"
nnoremap va" va"
nnoremap ya" ya"
nnoremap c[ ci[
nnoremap d[ di[
nnoremap v[ vi[
nnoremap y[ yi[
nnoremap ca[ ca[
nnoremap da[ da[
nnoremap va[ va[
nnoremap ya[ ya[
nnoremap c` ci`
nnoremap d` di`
nnoremap v` vi`
nnoremap y` yi`
nnoremap ca` ca`
nnoremap va` va`
nnoremap da` da`
nnoremap ya` ya`
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

" map <localleader>z :call Z()<cr>;
" map <localleader>x :call X()<cr>;
" func!  Z()
  " exec "normal ^"
  " exec "normal i//\<space>"
" endfunc
" func!  X()
  " exec "normal ^"
  " exec "normal xxx"
" endfunc


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
" inoremap ef<space> <space>else if () {}<left><cr><esc><up>f)i
" inoremap el<space> <space>else {}<left><cr><esc>O
" inoremap if<space> if () {}<left><cr><esc>kf)i
" inoremap wh<space> while () {}<left><cr><esc>kf)i
" inoremap try<space> try {}<left><cr><right> catch (e) {}<left><cr><esc>2<up>o

" inoremap for<space> for (let i = 0; i < b; i++) {}<left><cr><esc>kfbxi
" inoremap fin<space> for (const x in b) {}<left><cr><esc>kfbxi
" inoremap fof<space> for (const x of b) {}<left><cr><esc>kfbxi
" inoremap swi<space> switch () {}<left><cr><esc>kf)i
" inoremap fun<space> function () {}<left><cr><esc>kf)i
" inoremap =><space> () => {}<left><cr><esc>kf)i
" inoremap lp<space> logger.error(); process.exit();<esc>2F)i
" inoremap lt<space> logger.trace();<left><left>
" inoremap ld<space> logger.debug();<left><left>
" inoremap le<space> logger.error();<left><left>
" inoremap pe<space> process.exit();<esc>
" inoremap cp<space> console.log(); process.exit();<esc>2F)i
" inoremap cl<space> console.log();<left><left>

" 视觉模式=====================================
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv
vnoremap <localleader>; "+y
vnoremap ; y
vnoremap { f{%
vnoremap [ f[%
vnoremap ( f(%
vnoremap u <esc>
vnoremap M $
vnoremap H ^
vnoremap L ykp
vmap ' S'
vmap " S"
vmap ` S`
vmap ) S)
vmap [ S[
vmap { S}

" 操作等待模式=====================================
onoremap M $
onoremap H ^
