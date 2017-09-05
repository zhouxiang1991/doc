let mapleader='-'
let maplocalleader=' '
call plug#begin('~/.vim/plugged')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'posva/vim-vue'
au BufNewFile,BufRead *.vue setf vue
au BufNewFile,BufRead *.vue syntax sync fromstart
au FileType vue syntax sync fromstart
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
nmap <localleader> <Plug>(easymotion-prefix)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'jiangmiao/auto-pairs'
let g:AutoPairsMapCh=0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'terryma/vim-expand-region'
let g:expand_region_text_objects = {
\ 'iw'  :1,
\ 'iW'  :1,
\ 'i"'  :1,
\ 'i''' :1,
\ 'i]'  :1,
\ 'ib'  :1,
\ 'iB'  :1,
\ 'il'  :1,
\ 'ip'  :1,
\ 'ie'  :1,
\ }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-operator-surround'
nmap <silent><localleader>sd <Plug>(operator-surround-delete)<Plug>(textobj-anyblock-a)
nmap <silent><localleader>sr <Plug>(operator-surround-replace)<Plug>(textobj-anyblock-a)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/unite.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'joshdick/onedark.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'kana/vim-textobj-user'
Plug 'kshenoy/vim-signature'
Plug 'timakro/vim-searchant'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-repeat'
Plug 'gregsexton/matchtag'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'dkprice/vim-easygrep'
let g:EasyGrepCommand=1
set grepprg=ag\ --nogroup\ --nocolor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-surround'
vmap s' S'
vmap s" S"
vmap s` S`
vmap s) S)
vmap s( S(
vmap s[ S]
vmap s] S[
vmap s{ S{
vmap s} S}
vmap s> S>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:ft = ''
fu! NERDCommenter_before()
    if &ft == 'vue'
        let g:ft = 'vue'
        let stack = synstack(line('.'), col('.'))
        if len(stack) > 0
            let syn = synIDattr((stack)[0], 'name')
            if len(syn) > 0
                let syn = tolower(syn)
                exe 'setf '.syn
            endif
        endif
    endif
endfu
fu! NERDCommenter_after()
    if g:ft == 'vue'
        setf vue
        let g:ft = ''
        syntax sync fromstart
    endif
endfu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'
let g:python2_host_prog = '/usr/local/bin/python'
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
" let g:UltiSnipsEnableSnipMate = 0
" let g:UltiSnipsExpandTrigger = "<c-=>"
" let g:UltiSnipsJumpForwardTrigger = "<c-n>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Shougo/deoplete.nvim'
let g:deoplete#enable_at_startup = 1
inoremap <down> <c-n>
inoremap <up> <c-p>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'w0rp/ale'
" let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>'
" let g:ale_echo_msg_error_Str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_text_changed = 'never'
" nmap <silent> <C-h> <Plug>(ale_previous_wrap)
nmap <localleader>ad :ALEDisable<cr>
nmap <localleader>an <Plug>(ale_next_wrap)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'matze/vim-move'
let g:move_key_modifier = 'C'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'heavenshell/vim-jsdoc'
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_enable_es6 = 1
let g:jsdoc_param_description_separator = ' - '
nnoremap <localleader>do :JsDoc<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'beloglazov/vim-textobj-quotes'
Plug 'kana/vim-textobj-line'
Plug 'sgur/vim-textobj-parameter'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-entire'
Plug 'whatyouhide/vim-textobj-xmlattr'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Chun-Yang/vim-textobj-chunk'
let g:textobj_chunk_no_default_key_mappings = 1
omap ik <Plug>(textobj-chunk-i)
xmap ik <Plug>(textobj-chunk-i)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rhysd/vim-textobj-anyblock'
let g:textobj#anyblock#blocks = ['(', '{', '[', '<', '"', "'", '`']
omap iv <Plug>(textobj-anyblock-i)
xmap iv <Plug>(textobj-anyblock-i)
omap av <Plug>(textobj-anyblock-a)
xmap av <Plug>(textobj-anyblock-a)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'airblade/vim-gitgutter'
call plug#end()


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
autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" |  endif
autocmd BufReadPost *.vimrc  nnoremap <c-l> :PlugInstall<cr>
autocmd BufReadPost *.vimrc  nnoremap <c-c> :PlugClean<cr>


" 设置选项
set clipboard=unnamedplus
set number
set mouse=a
set ignorecase
set hlsearch
set incsearch
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set smartcase


" 模拟文本对象
nmap v<space>; vF <right>of;<left>
nmap v<space>( vF <right>of(<left>
nmap v<space>. vF<space><right>of.<left>
nmap v<space>M vF<space><right>o$<left>
nmap v.) vF.<right>of)
nmap v<space><space> vF <right>of <left>
nmap v., vF.<right>of)
nmap v/' vF/<right>of'<left>
" 单词
nmap vj viw
" 段落
nmap vp vip
" 闭合符号
nmap vv viv
" 代码块
nmap vk vik
" 注释
nmap vc vac

" 自定义映射
inoremap <c-j> <c-o>o
inoremap <c-k> <c-o>O
inoremap <c-s> <c-o>S
inoremap <c-h> <c-o>^
inoremap <c-l> <c-o>$
inoremap <c-u> <c-o>u
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>
map H ^
map M $
nnoremap <localleader><space> i<space><esc>
nnoremap K o<esc>
nnoremap L yyp
vnoremap L y`>p
nnoremap < <<
nnoremap > >>

" 根据不同程序采用不同主题
if has("gui_vimr")
  set background=dark
  colorscheme onedark
  " colorscheme gruvbox
elseif has("gui_running")
  set background=dark
  set guifont=DejaVuSansMono\ Nerd\ Font:h18
  colorscheme onedark
  " colorscheme gruvbox
else
  set background=dark
  colorscheme onedark
  " colorscheme gruvbox
endif
