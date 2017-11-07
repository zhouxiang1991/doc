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
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Plug 'easymotion/vim-easymotion'
" nmap  <Plug>(easymotion-prefix)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vimwiki/vimwiki'
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': '~/knowledge/', 'path_html': '~/knowledge/html/', 'auto_export': 1}]
let g:vimwiki_camel_case = 1  
autocmd BufReadPost *.wiki  inoremap <tab> <c-r>=UltiSnips#ExpandSnippet()<cr>
nnoremap <localleader>vh :Vimwiki2HTML<cr>
nnoremap <localleader>va :VimwikiAll2HTML<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'terryma/vim-expand-region'
" let g:expand_region_text_objects = {
      " \ 'iw'  :1,
      " \ 'iW'  :0,
      " \ 'i"'  :0,
      " \ 'i''' :0,
      " \ 'i]'  :1,
      " \ 'ib'  :1,
      " \ 'iB'  :1,
      " \ 'il'  :0,
      " \ 'ip'  :0,
      " \ 'ie'  :0,
      " \ }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'kana/vim-operator-user'
" Plug 'rhysd/vim-operator-surround'
" vmap ' <Plug>(operator-surround-append)'
" vmap " <Plug>(operator-surround-append)"
" vmap ) <Plug>(operator-surround-append))
" vmap { <Plug>(operator-surround-append){
" vmap [ <Plug>(operator-surround-append)[
" vmap ` <Plug>(operator-surround-append)`
" nmap <c-t> <Plug>(operator-surround-delete)<Plug>(textobj-anyblock-a)
" nmap <c-r> <Plug>(operator-surround-replace)<Plug>(textobj-anyblock-a)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'Shougo/vimproc.vim'
" Plug 'Shougo/neoyank.vim'
" Plug 'Shougo/unite.vimet
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

if has("nvim")
  Plug 'Shougo/deoplete.nvim'
  let g:deoplete#enable_at_startup = 1
else
  Plug 'Shougo/neocomplete.vim'
  let g:acp_enableAtStartup = 0
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_smart_case = 1
  " let g:neocomplete#sources#syntax#min_keyword_length = 3
  " autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  " autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  " autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  " autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'pangloss/vim-javascript', { 'for': ['vue', 'javascript'] }
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'fholgado/minibufexpl.vim'
" let g:miniBufExplVSplit = 15
" nnoremap <localleader>be :MBEFocus<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if has("gui_running")
  " Plug 'maralla/completor.vim'
" endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'unblevable/quick-scope'
" let g:qs_highlight_on_keys = ['f', 'F']
" let g:qs_first_occurrence_highlight_color = '#afff5f' " gui vim
" let g:qs_first_occurrence_highlight_color = 155       " terminal vim

" let g:qs_second_occurrence_highlight_color = '#5fffff'  " gui vim
" let g:qs_second_occurrence_highlight_color = 81         " terminal vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'gcmt/wildfire.vim'
" let g:wildfire_objects = {
    " \ "*" : ["i'", 'i"', "i]", "i)", "i}", "ip", "i>", 'i`', 'iw'],
    " \ "html,xml,vue" : ["at"],
" \ }
" let g:wildfire_fuel_map = "<ENTER>"
" let g:wildfire_water_map = "<BS>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug 'henrik/vim-indexed-search'
" Plug 'svermeulen/vim-easyclip'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'terryma/vim-multiple-cursors'
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug 'kshenoy/vim-signature'
" Plug 'timakro/vim-searchant'
Plug 'ap/vim-css-color', { 'for': ['vue'] }
Plug 'tpope/vim-repeat'
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
" let g:airline#extensions#ale#enabled = 1
" let g:airline#extensions#ale#error_symbol = 'E:'
" let g:airline_section_error='ale_error_count'
" let g:airline#extensions#default#layout = [['c'],['error']]
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#buffer_nr_show = 1
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
let g:EasyGrepCommand=1
Plug 'dkprice/vim-easygrep'
set grepprg=ag\ --nogroup\ --nocolor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-surround'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdcommenter'
map \ <leader>ci
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
\ 'vimwiki',
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
Plug 'w0rp/ale', { 'for': ['vue', 'javascript'] }
let g:ale_sign_column_always=1
" let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_linters = { 'javascript': ['eslint'] }
" let g:ale_sign_error = 'X'
" let g:ale_sign_warning = '>'
" let g:ale_echo_msg_error_Str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_text_changed = 'never'
" nmap <silent> <C-h> <Plug>(ale_previous_wrap)
nmap <localleader>x :ALEDisable<cr>
nmap <localleader>j <Plug>(ale_next_wrap)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'matze/vim-move'
let g:move_key_modifier = 'C'
let g:move_auto_indent = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'heavenshell/vim-jsdoc'
" let g:jsdoc_allow_input_prompt = 1
" let g:jsdoc_input_description = 1
" let g:jsdoc_additional_descriptions = 1
" let g:jsdoc_enable_es6 = 1
" let g:jsdoc_param_description_separator = ' - '
" nnoremap <localleader>do :JsDoc<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
" Plug 'beloglazov/vim-textobj-quotes'
Plug 'kana/vim-textobj-line'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'sgur/vim-textobj-parameter'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'glts/vim-textobj-comment'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'kana/vim-textobj-entire'
" Plug 'whatyouhide/vim-textobj-xmlattr'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Chun-Yang/vim-textobj-chunk'
" nmap vc vic$o0o
" let g:textobj_chunk_no_default_key_mappings = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Plug 'thinca/vim-textobj-between'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'rhysd/vim-textobj-anyblock'
" let g:textobj#anyblock#blocks = ['(', '{', '[', '<', '"', "'", '`', 't']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug 'airblade/vim-gitgutter'
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


" 代码片段设置文件类型方便注释
autocmd BufReadPost *.snippets  set ft=sh
" 打开文件回到上次位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif   


" 设置选项
set clipboard=unnamed
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
set scrolloff=1
set autowrite
set autoread
set nowrap
set iskeyword+=-


" 模拟文本对象
" nmap v<space>; F<space><right>vf;<left>
" nmap v<space>: F<space><right>vf:<left>
" nmap v<space>( F<space><right>vf(<left>
" nmap v<space>. F<space><right>vf.<left>
" nmap v<space>M F<space><right>v$<left>
" nmap v<space><space> F<space><right>vf<space><left>
" nmap v.) F.<right>vf)
" nmap v., F.<right>vf)
" nmap v.<space> F.<right>vf<space>
" nmap vHM ^v$<left>

" cnoremap <c-a> <c-b>
" cnoremap <c-b> <left>
" cnoremap <c-f> <right>
" nnoremap <c-i> <c-^>
nnoremap q <nop>
nnoremap U <nop>
nnoremap Q <nop>
nnoremap <c-z> <nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <localleader>w <esc>:w<cr>
" nnoremap <localleader>q <esc>:q<cr>
nnoremap <c-s> <esc>:w<cr>
nnoremap <c-q> <esc>:q<cr>
nmap L yyg]p
vmap L y`>g]p
nnoremap K o<esc>
nnoremap <c-a> <c-^>
" map M $
" map H ^
inoremap <c-f> <right>
inoremap <c-b> <left>
"""""""""""""""""""""""""""""""""""""""""""""""""""

" nnoremap vv <c-v>
" nnoremap vt vat$o0
" nnoremap > >>
" nnoremap < <<
" inoremap <c-a> <c-o>^
" inoremap <c-e> <c-o>$
" inoremap <c-l> <right><bs>
" inoremap <c-j> <down>
" inoremap <c-k> <up>
" inoremap <c-v> <c-r>+


set background=dark
colorscheme onedark
if has('gui_running')
  set guifont=DejaVuSansMono\ Nerd\ Font:h18
  set guioptions-=r
  set guioptions-=L
  set guioptions-=R
  set guioptions-=l
endif
