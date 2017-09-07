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
" Plug 'easymotion/vim-easymotion'
" nmap <leader> <Plug>(easymotion-prefix)
" nmap <leader>a <Plug>(easymotion-linebackward)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'terryma/vim-expand-region'
" let g:expand_region_text_objects = {
" \ 'iw'  :1,
" \ 'iW'  :1,
" \ 'i"'  :1,
" \ 'i''' :1,
" \ 'i]'  :1,
" \ 'ib'  :1,
" \ 'iB'  :1,
" \ 'il'  :1,
" \ 'ip'  :1,
" \ }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-operator-surround'
vmap ' <Plug>(operator-surround-append)'
vmap " <Plug>(operator-surround-append)"
vmap ) <Plug>(operator-surround-append))
vmap { <Plug>(operator-surround-append){
vmap [ <Plug>(operator-surround-append)[
vmap ` <Plug>(operator-surround-append)`
nmap <c-t> <Plug>(operator-surround-delete)<Plug>(textobj-anyblock-a)
nmap <c-r> <Plug>(operator-surround-replace)<Plug>(textobj-anyblock-a)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'Shougo/vimproc.vim'
" Plug 'Shougo/neoyank.vim'
" Plug 'Shougo/unite.vim'
" Plug 'shougo/denite.nvim'
" nnoremap <localleader>db :Denite buffer<cr>
" call denite#custom#map(
" \ 'insert',
" \ '<C-j>',
" \ '<denite:move_to_next_line>',
" \ 'noremap'
" \)
" call denite#custom#map(
" \ 'insert',
" \ '<C-k>',
" \ '<denite:move_to_previous_line>',
" \ 'noremap'
" \)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'Shougo/vimfiler.vim'
" let g:vimfiler_as_default_explorer = 1
" let g:vimfiler_safe_mode_by_default = 0
" nnoremap <localleader>fe :VimFilerExplorer<cr>
" let g:vimfiler_enable_auto_cd = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'ap/vim-buftabline'
" Plug 'tpope/vim-unimpaired'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'ctrlpvim/ctrlp.vim'
" nnoremap <c-l> :CtrlPBuffer<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'sjl/gundo.vim'
" nnoremap <c-q> :GundoToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-scripts/UnconditionalPaste'
nmap p g]p
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'fholgado/minibufexpl.vim'
let g:miniBufExplVSplit = 15
nnoremap <c-o> :MBEFocus<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug 'svermeulen/vim-easyclip'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'kana/vim-textobj-user'
" Plug 'kshenoy/vim-signature'
" Plug 'timakro/vim-searchant'
Plug 'ap/vim-css-color'
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-fugitive'
" Plug 'gregsexton/matchtag'
" Plug 'CodeFalling/fcitx-vim-osx'
" Plug 'Xuyuanp/nerdtree-git-plugin'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'jlanzarotta/bufexplorer'
" let g:bufExplorerSplitRight=1 
" let g:bufExplorerDefaultHelp=0
" let g:bufExplorerSplitVertSize = 30
" let g:bufExplorerSplitVertical=1 
" nnoremap <c-o> :BufExplorerVerticalSplit<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'MattesGroeger/vim-bookmarks'
" nnoremap <c-h> :BookmarkShowAll<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'vim-airline/vim-airline'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#buffer_nr_show = 1
" map <localleader>1 :b 1<CR>
" map <localleader>2 :b 2<CR>
" map <localleader>3 :b 3<CR>
" map <localleader>4 :b 4<CR>
" map <localleader>5 :b 5<CR>
" map <localleader>6 :b 6<CR>
" map <localleader>7 :b 7<CR>
" map <localleader>8 :b 8<CR>
" map <localleader>9 :b 9<CR>
" Plug 'vim-airline/vim-airline-themes'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
let g:NERDTreeWinPos=1
let g:NERDTreeMouseMode=2
let g:NERDTreeChDirMode=2
" 当只剩最后一个窗口时自动关闭文件浏览器
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <localleader>n :NERDTreeToggle<cr>
" 当没有文件时自动打开文件浏览器
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'dkprice/vim-easygrep'
let g:EasyGrepCommand=1
set grepprg=ag\ --nogroup\ --nocolor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'tpope/vim-surround'
" vmap ' S'
" vmap " S"
" vmap ` S`
" vmap ) S)
" vmap ( S(
" vmap [ S]
" vmap ] S[
" vmap { S{
" vmap } S}
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'w0rp/ale'
" let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_error = 'X'
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
nmap <c-x> :ALEDisable<cr>
nmap <c-f> <Plug>(ale_next_wrap)
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
" Plug 'beloglazov/vim-textobj-quotes'
" Plug 'kana/vim-textobj-line'
Plug 'sgur/vim-textobj-parameter'
Plug 'glts/vim-textobj-comment'
" Plug 'kana/vim-textobj-entire'
" Plug 'whatyouhide/vim-textobj-xmlattr'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Chun-Yang/vim-textobj-chunk'
let g:textobj_chunk_no_default_key_mappings = 1
omap ik <Plug>(textobj-chunk-i)
xmap ik <Plug>(textobj-chunk-i)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Plug 'thinca/vim-textobj-between'

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
autocmd BufReadPost *.vimrc  nnoremap <c-l> :PlugInstall<cr>
autocmd BufReadPost *.vimrc  nnoremap <c-c> :PlugClean<cr>
autocmd BufReadPost *  exe "normal! `\""



" 设置选项
set clipboard=unnamedplus
" set number
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
set scrolloff=1
set autowrite
set autoread


" 模拟文本对象
nmap v<space>; vF <right>of;<left>
nmap v<space>: vF <right>of:<left>
nmap v<space>( vF <right>of(<left>
nmap v<space>. vF<space><right>of.<left>
nmap v<space>M vF<space><right>o$<left>
nmap v.) vF.<right>of)
nmap v.) vF.<right>of)
nmap v<space><space> vF <right>of <left>
nmap v., vF.<right>of)
nmap v/' vF/<right>of'<left>
nmap vn ^v$


nnoremap <c-h> <c-^>
nnoremap <c-i> :w<cr>
nnoremap U <c-r>
nnoremap <c-m> G
nnoremap L yyp
vnoremap L yPgv
nnoremap K o<esc>
nnoremap vv <c-v>
map H ^
map M $
nnoremap > >>
nnoremap < <<
nnoremap q :q<cr>
nnoremap Q :q!<cr>
inoremap <c-a> <c-o>^
inoremap <c-k> <c-o>d$
inoremap <c-e> <c-o>$
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-v> <c-r>+
inoremap <c-s> <c-o>S


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
