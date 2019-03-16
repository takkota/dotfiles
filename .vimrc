if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
autocmd BufRead *.php\|*.ctp\|*.twig\|*.tpl :set dictionary=/.vim/dictionaries/php.dict filetype=php

let mapleader = ","
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
"set clipboard=unnamed,autoselect
set clipboard+=unnamedplus
set ignorecase
set smartcase
set hlsearch
:set number
:set hidden
:set sh=fish
" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $
noremap m  %
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <silent> jj <ESC>

"" clipboard
vmap <C-c> "+y
noremap PP "0p
noremap x "_x
nnoremap dw "_dw
nnoremap D "_D

if has('python3') && !has('patch-8.1.201')
  silent! python3 1
endif

if has("autocmd")
	filetype plugin indent on
endif

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.json setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.twig setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.scss setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.py setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.jsx setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd BufNewFile,BufRead *.md setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype erb inoremap <buffer> </ </<C-x><C-o>
augroup END

if dein#load_state(expand('~/.cache/dein'))
  call dein#begin(expand('~/.cache/dein'))

  call dein#add(expand('~/.cache/dein/repos/github.com/Shougo/dein.vim'))
  "if ((has('nvim')  || has('timers')) && has('python3')) && system('pip3 show neovim') !=# ''
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  "elseif has('lua')
  	"call dein#add('Shougo/neocomplete.vim')
  "endif

  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  "call dein#add('KazuakiM/neosnippet-snippets')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('joonty/vdebug')
  "call dein#add('violetyk/neocomplete-php.vim')
  "call dein#add('tomasr/molokai')
  call dein#add('KKPMW/moonshine-vim')
  "call dein#add('jeetsukumaran/vim-nefertiti')
  call dein#add('vsushkov/vim-phpcs')
  call dein#add('simeji/winresizer')
  call dein#add('csscomb/vim-csscomb')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('AndrewRadev/splitjoin.vim')
  call dein#add('thinca/vim-quickrun')
  call dein#add('osyo-manga/shabadou.vim')
  call dein#add('Shougo/vimproc')
  call dein#add('osyo-manga/vim-watchdogs')
  call dein#add('jceb/vim-hier')
  call dein#add('KazuakiM/vim-qfstatusline')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('thinca/vim-ref')
  call dein#add('vim-scripts/taglist.vim')
  call dein#add('vim-scripts/buftabs')
  call dein#add('moll/vim-bbye')
  ""call dein#add('bpearson/vim-phpcs')
  call dein#add('violetyk/cake.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('alvan/vim-closetag')
  call dein#add('gko/vim-coloresque')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('pangloss/vim-javascript')
  ""call dein#add('marijnh/tern_for_vim')
  call dein#add('mattn/emmet-vim')
  call dein#add('cohama/lexima.vim')
  call dein#add('vim-scripts/sudo.vim')
  call dein#add('junegunn/vim-easy-align')
  " markdown
  call dein#add('tpope/vim-markdown')
  call dein#add('kannokanno/previm')
  call dein#add('tyru/open-browser.vim')

  call dein#add('2072/PHP-Indenting-for-VIm')
  " deopleteと連携
  " なぜか使えない　バグ？
  "call dein#add('autozimu/LanguageClient-neovim', {'rev': 'next', 'build': 'bash install.sh'})
  call dein#add('Shougo/denite.nvim', {'rev': '1.1'})
  "call dein#add('Shougo/denite.nvim')

  call dein#add('Shougo/neoyank.vim')

  call dein#add('vim-scripts/gtags.vim')
  call dein#add('zebult/auto-gtags.vim')
  call dein#add('tpope/vim-unimpaired')
  " rails
  call dein#add('tpope/vim-rails')
  call dein#add('5t111111/denite-rails')
  call dein#add('tpope/vim-endwise')
  call dein#add('AndrewRadev/switch.vim')
  " 各言語の補間
  call dein#add('zchee/deoplete-jedi')
  call dein#add('davidhalter/jedi-vim')

  " terminal
  call dein#add('vimlab/split-term.vim')

  call dein#end()

  if dein#check_install()
    call dein#install()
  endif
endif

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.php'

"" tabidou
nnoremap <C-Tab> <C-w>w
noremap <F6> :Phpcs<CR>

" バッファタブにパスを省略してファイル名のみ表示する
let g:buftabs_only_basename=1
" バッファタブをステータスライン内に表示する
let g:buftabs_in_statusline=1
" 現在のバッファをハイライト
let g:buftabs_active_highlight_group="Visual"
" ステータスライン
set statusline=%=\ [%{(&fenc!=''?&fenc:&enc)}/%{&ff}]\[%Y]\[%04l,%04v][%p%%]
" ステータスラインを常に表示
set laststatus=2

let g:syntastic_php_checkers = ['phpcs', 'phpmd']
let g:syntastic_php_phpcs_args = '--report=csv --standard=CakePHP'

let g:vdebug_options= {
\    "port" : 9000,
\    "server" : 'localhost',
\    "timeout" : 1000,
\    "on_close" : 'detach',
\    "break_on_open" : 1,
\    "ide_key" : '',
\    "remote_path" : "",
\    "local_path" : "",
\    "debug_window_level" : 0,
\    "debug_file_level" : 0,
\    "debug_file" : "",
\}


" For conceal markers.
if has('conceal')
  set conceallevel=0 concealcursor=niv
endif


""color-shecheme
syntax on
"colorscheme molokai
colorscheme moonshine
set t_Co=256

" ユーザ側で定義した g:quickrun_config
let g:quickrun_config = {
\    "watchdogs_checker/_" : {
\        'outputter/quickfix/open_cmd' : '',
\        "runner/vimproc/updatetime" : 10,
\    }
\    }
let g:watchdogs_check_BufWritePost_enable = 1
let g:watchdogs_check_CursorHold_enable = 1
" この関数に g:quickrun_config を渡す
" この関数で g:quickrun_config にシンタックスチェックを行うための設定を追加する
" 関数を呼び出すタイミングはユーザの g:quickrun_config 設定後
call watchdogs#setup(g:quickrun_config)

" complete
if dein#tap('deoplete.nvim')
	let g:deoplete#enable_at_startup = 1
	let g:deoplete#auto_complete_delay = 1
	let g:deoplete#auto_complete_start_length = 1
	let g:deoplete#enable_camel_case = 0
	let g:deoplete#enable_ignore_case = 0
	let g:deoplete#enable_refresh_always = 0
	let g:deoplete#enable_smart_case = 1
	let g:deoplete#file#enable_buffer_path = 1
	let g:deoplete#max_list = 10000
	inoremap <expr><tab> pumvisible() ? "\<C-n>" :
				\ neosnippet#expandable_or_jumpable() ?
				\    "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"
	" <Tab>: start completion
	inoremap <silent><expr> <TAB>
				\ pumvisible() ? "\<C-n>" :
				\ <SID>check_back_space() ? "\<TAB>" :
				\ deoplete#manual_complete()
	function! s:check_back_space() abort "{{{
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
	endfunction"}}}
	let g:deoplete_php_locale = 'ja'

elseif dein#tap('neocomplete.vim')
	let g:neocomplete#enable_at_startup = 1
	let g:neocomplete#enable_smart_case = 1
	let g:neocomplete#sources#syntax#min_keyword_length = 3
	let g:neocomplete#enable_auto_delimiter = 1
	let g:neocomplete#auto_completion_start_length = 1
	let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
	inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
	if !exists('g:neocomplete#keyword_patterns')
		let g:neocomplete#keyword_patterns = {}
	endif
	let g:neocomplete#keyword_patterns['default'] = '\h\w*'
	inoremap <expr><C-g>     neocomplete#undo_completion()
	inoremap <expr><C-l>     neocomplete#complete_common_string()
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
		return neocomplete#close_popup() . "\<CR>"
		" For no inserting <CR> key.
		"return pumvisible() ? neocomplete#close_popup() : "\<CR>"
	endfunction
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplete#close_popup()
	inoremap <expr><C-e>  neocomplete#cancel_popup()
	let g:neocomplete_php_locale = 'ja'
	" With neocomplete.vim
	let g:neocomplete#sources#omni#input_patterns = {
				\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
				\}
endif

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

"markdown
""" markdown {{{
   autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
   autocmd BufRead,BufNewFile *.md  set filetype=markdown
   " Need: kannokanno/previm
   nnoremap <silent> <C-l> :PrevimOpen<CR> " Ctrl-pでプレビュー
   " 自動で折りたたまないようにする
   let g:vim_markdown_folding_disabled=1
   let g:previm_enable_realtime = 1
" }}}


"" neosnippet
" エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" emmet
let g:user_emmet_leader_key='<C-W>'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ea <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ea <Plug>(EasyAlign)

" Denite
call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', ''])
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts',
			\ ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])


call denite#custom#map('insert', '<C-r>',
      \ '<denite:toggle_matchers:majcher_substring>', 'noremap')
call denite#custom#map('insert', '<C-s>',
      \ '<denite:toggle_sorters:sorter_reverse>', 'noremap')
call denite#custom#map('insert', '<C-n>',
      \ '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-p>',
      \ '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', "'",
      \ '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('normal', 'r',
      \ '<denite:do_action:quickfix>', 'noremap')
call denite#custom#map('insert', ';',
      \ 'vimrc#sticky_func()', 'expr')

"nnoremap <silent> ,df :<C-u>Denite -default-action=tabopen file_rec<CR>
nnoremap <silent> ,df :<C-u>Denite file_rec -highlight-mode-insert=Search<CR>
nnoremap <silent> ,dg :<C-u>Denite grep  -highlight-mode-insert=Search<CR>
nnoremap <silent> ,dl :<C-u>Denite line  -highlight-mode-insert=Search<CR>
nnoremap <silent> ,dr :<C-u>Denite file_mru  -highlight-mode-insert=Search<CR>
nnoremap <silent> ,dy :<C-u>Denite neoyank  -highlight-mode-insert=Search<CR>
" 頻繁に使うのでdを省略させる
nnoremap  <silent> ,b :<C-u>Denite buffer  -highlight-mode-insert=Search<CR>

" gtags
let g:auto_update_gtags = 1
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
"map <C-n> :cn<CR>
"map <C-p> :cp<CR>
map <C-g> :Gtags

" Jq
command! -nargs=? Jq call s:Jq(<f-args>)
function! s:Jq(...)
    if 0 == a:0
        let l:arg = "."
    else
        let l:arg = a:1
    endif
    execute "%! jq \"" . l:arg . "\""
endfunction

" denite-rails
nnoremap [rails] <Nop>
nmap     <Leader>r [rails]
nnoremap [rails]r :Denite<Space>rails:
nnoremap <silent> [rails]r :<C-u>Denite<Space>rails:dwim<Return>
nnoremap <silent> [rails]m :<C-u>Denite<Space>rails:model<Return>
nnoremap <silent> [rails]c :<C-u>Denite<Space>rails:controller<Return>
nnoremap <silent> [rails]v :<C-u>Denite<Space>rails:view<Return>
nnoremap <silent> [rails]h :<C-u>Denite<Space>rails:helper<Return>
nnoremap <silent> [rails]r :<C-u>Denite<Space>rails:test<Return>
nnoremap <silent> [rails]s :<C-u>Denite<Space>rails:spec<Return>

"" buffer移動
nnoremap <silent> <C-p> :bprevious<CR>
nnoremap <silent> <C-n> :bnext<CR>
 "vim-bbye
nnoremap <silent> <C-d> :Bwipeout<CR>

" jedi (python)
let g:deoplete#sources#jedi#server_timeout=100
let g:deoplete#sources#jedi#statement_length=100
" jedi本体の補完は切る（deoplete-jediで非同期処理をしてくれるため）
let g:jedi#completions_enabled = 0

" terminal
nnoremap <silent> <C-t> :5Term<CR>
tnoremap <silent> <ESC> <C-\><C-n>
set splitbelow

" LSP + deopleteで補完
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['solargraph', 'stdio'],
\}
let g:LanguageClient_autoStop = 0
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
