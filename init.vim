imap jk <ESC>
nmap <space> :
vmap <space> :

inoremap <A-l> <Right>
inoremap <A-h> <Left>
inoremap <A-k> <Up>
inoremap <A-j> <Down>
inoremap <A-d> <backspace>

vnoremap n nzz
vnoremap N Nzz
map H ^
map L $

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set relativenumber
set splitbelow
set nu
let mapleader = ';'

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

filetype plugin indent on


"修改切换窗格的快捷键
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
" set term=screen

" 共享剪切板
" set clipboard=unnamedplus
" 设置文件类型
":set filetype=sh
"自动保存
set autowrite
" 窗口大小
nnoremap <silent> W9 :resize -3<CR>
nnoremap <silent> W0 :resize +3<CR>
nnoremap <silent> w9 :vertical resize -3<CR>
nnoremap <silent> w0 :vertical resize +3<CR>

" 行号显示
nnoremap <silent> mn :set nonu nornu <CR>
nnoremap <silent> ms :set nu rnu <CR>

" terminal
tnoremap <c-t> <c-\><c-n>

nnoremap <silent> <leader>n :e ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim<CR>
" nnoremap <silent> <leader>r :source %<CR>
" nnoremap <silent> <leader>d :bdelete <CR>
" let g:coc_disable_startup_warning = 1


nnoremap <silent> <Leader>f :Autoformat<CR>

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"""""""""""""""""""""""""""""""""""插件"""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
" terminal alt = 打开terminal
Plug 'skywind3000/vim-terminal-help'

" ctrl A X 加减时间
Plug 'tpope/vim-speeddating'

" 对齐
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" ma 新建文件
" md 删除文件
" mm 移动文件|修改文件名
" C 设置当前目录为根目录
" 打开nerdtree
" map <silent> <C-e> :NERDTreeToggle<CR>
" 查找当前文件所在目录
map <leader>v :NERDTreeFind<CR>
" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 35 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks

"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▶ '
let g:NERDTreeDirArrowCollapsible = '▼ '
" let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
let NERDTreeShowHidden=1

" NERDTrees File highlighting

" function! NERDTreeHighlightFile(extension, fg, bg, guifg, guib" g)
" exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
" endfunction
" au VimEnter * call NERDTreeHighlightFile('.c', 'yellow', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.h', 'cyan', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.so', 'green', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.a', 'green', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.html', 'yellow', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.o', 'lightgreen', 'none', 'yellow', '#151515')
" highlight! link NERDTreeFlags NERDTreeDir
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['o'] = s:gray
let g:NERDTreeExtensionHighlightColor['h'] = s:blue
let g:NERDTreeExtensionHighlightColor['c'] = s:green
let g:NERDTreeExtensionHighlightColor['so'] = s:pink
let g:NERDTreeExtensionHighlightColor['o'] = s:pink
let g:NERDTreeExtensionHighlightColor['a'] = s:pink
let g:NERDTreeExtensionHighlightColor['cpp'] = s:yellow
let g:NERDTreeExtensionHighlightColor['md'] = s:blue
let g:NERDTreeExtensionHighlightColor['c++'] = s:green


" NERDTree Icon
Plug 'ryanoasis/vim-devicons'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" multi cursor #Ctrl 上下左右
Plug 'mg979/vim-visual-multi'

" git and svn
Plug 'mhinz/vim-signify'
" 设置要检查的VCS
let g:signify_vcs_list = ['git']
" 插入模式下指定updatetime时间后无操作将缓存区交换文件写入磁盘
let g:signify_cursorhold_insert     = 1
" 正常模式下指定updatetime时间后无操作将缓存区交换文件写入磁盘
let g:signify_cursorhold_normal     = 1
" 缓冲区被修改时更新符号
let g:signify_update_on_bufenter    = 0
" vim获取焦点时更新符号
let g:signify_update_on_focusgained = 1
" 键盘映射
nnoremap <leader>gt :SignifyToggle<CR>
nnoremap <leader>gh :SignifyToggleHighlight<CR>
nnoremap <leader>gr :SignifyRefresh<CR>
nnoremap <leader>gd :SignifyDebug<CR>
" hunk jumping
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
" hunk text object
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)

" word surroud inser {} "" ''
Plug 'tpope/vim-surround'
" cs"'            # 替换 ==> "Hello world!" -> 'Hello world!'
" ds"             # 删除  ==> "Hello world!" -> Hello world!
" csw"            # 添加  ==> Hello -> "Hello"
" yss"            # 添加-整行 ==> Hello world -> "Hello world"
" S"			  # 可视模式下 添加

"select where amount { " '
Plug 'gcmt/wildfire.vim'

" pairs
Plug 'jiangmiao/auto-pairs'
au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
" leaderf
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" weather
" Plug 'mattn/webapi-vim'
" Plug 'Wildog/airline-weather.vim'
" let g:weather#area = 'guangzhou,china'
" let g:weather#unit = 'metric'
" let g:weather#cache_file = '~/.cache/.weather'
" let g:weather#cache_ttl = '3600'
"
"
" nvim beautify
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=1  "永远显示状态栏
"https://github.com/powerline/fonts 下载powerline字体
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 "显示窗口tab和buffer
let g:airline_statusline_ontop=0 "默认状态线上方

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
" let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
" let g:airline_left_alt_sep = ''
"
let g:airline_right_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ""
let g:airline_right_alt_sep = ""
" let g:airline_right_alt_sep = ''
" let g:airline_right_alt_sep = '«'
" let g:airline_right_alt_sep = '●'


let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.whitespace = 'Ξ'
"使用 :AirlineTheme xxx 更换主题
nnoremap <silent> <leader>1 :AirlineTheme base16<cr>
nnoremap <silent> <leader>2 :AirlineTheme molokai<cr>
nnoremap <silent> <leader>3 :AirlineTheme bubblegum<cr>
nnoremap <silent> <leader>7 :colorscheme <cr>
nnoremap <silent> <leader>8 :colorscheme default<cr>
nnoremap <silent> <leader>9 :colorscheme gruvbox<cr>
nnoremap <silent> <leader>0 :colorscheme monokai<cr>
nnoremap <silent> <leader>- :set background=dark<cr>
nnoremap <silent> <leader>_ :set background=light<cr>
"修改gruvbox的黑暗模式的颜色深度
let g:gruvbox_contrast_dark = 'hard'

syntax enable
colorscheme gruvbox
set background=dark

let g:airline_theme = 'bubblegum' "绿

let g:airline#extensions#whitespace#enabled = 0 "空白符号计数不使能"
let g:airline#extensions#keymap#enabled = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline#extensions#tabline#buffer_idx_format = {
			\ '0': '0 ',
			\ '1': '1 ',
			\ '2': '2 ',
			\ '3': '3 ',
			\ '4': '4 ',
			\ '5': '5 ',
			\ '6': '6 ',
			\ '7': '7 ',
			\ '8': '8 ',
			\ '9': '9 '
			\}
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab

nmap <A-1> <Plug>AirlineSelectTab1
nmap <A-2> <Plug>AirlineSelectTab2
nmap <A-3> <Plug>AirlineSelectTab3
nmap <A-4> <Plug>AirlineSelectTab4
nmap <A-5> <Plug>AirlineSelectTab5
nmap <A-6> <Plug>AirlineSelectTab6
nmap <A-7> <Plug>AirlineSelectTab7
nmap <A-8> <Plug>AirlineSelectTab8
nmap <A-9> <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <A--> <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <A-\> <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <leader>q :bp<cr>:bd #<cr>

" 注释 virtual leader cc/cu
Plug 'preservim/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }}
let g:NERDCustomDelimiters = { 'cpp': { 'left': '//','right': '' }}

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" indentLine
Plug 'Yggdroot/indentLine'
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

" #if end
Plug 'alpaca-tc/vim-endwise'

"rainbow
Plug 'frazrepo/vim-rainbow'
au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1

let g:rainbow_load_separately = [
			\ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
			\ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
			\ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
			\ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
			\ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


"fzf
Plug 'junegunn/fzf', { 'dir':'~/.fzf','do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" let g:fzf_action = {
"       \ 'ctrl-t': 'tab split',
"       \ 'ctrl-s': 'split',
"       \ 'ctrl-v': 'vsplit'
"       \ }
"在当前目录搜索文件
nnoremap <silent> <F3>f :Files<CR>
"切换Buffer中的文件
nnoremap <silent> <F3>w :Ag<cr>
"切换Buffer中的文件
nnoremap <silent> <F3>b :Buffers<CR>
"
nnoremap <c-p> :call Fzf_dev()<cr>
" sudo apt-get install silversearcher-ag
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" let $FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
"Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
" :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
			\ call fzf#vim#ag(<q-args>,
			\                 <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
			\                         : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
			\                 <bang>0)

" complete

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
" let g:coc_global_extensions = [
"   \ 'coc-clangd',
"   \ 'coc-json',
"   \ ]
" " Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" " unicode characters in the file autoload/float.vim
set encoding=utf-8
" " TextEdit might fail if hidden is not set.
set hidden
"
" " Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
"
" " Give more space for displaying messages.
set cmdheight=2
"
" " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience.
set updatetime=300
"
" " Don't pass messages to |ins-completion-menu|.
" set shortmess+=c
"
" " Always show the signcolumn
set signcolumn=yes
"
" " Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
" \ pumvisible() ? "\<C-n>"
"  \ <SID>check_back_space() ? "\<TAB>" :
"  \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <s-TAB>
			\ pumvisible() ? "\<C-n>":"\<C-p>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" " Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()
"
" " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" " Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
" " Use `[c` and `]c` to navigate diagnostics
" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [c <Plug>(coc-diagnostic-prev)
" nmap <silent> ]c <Plug>(coc-diagnostic-next)
"
" " GoTo code navigation.
"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


"
" " Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>
"
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction
"
" " Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
"
"
"显示函数名列表
"可能需要装ctags sudo apt-get install exuberant-ctags
" Plug 'vim-scripts/taglist.vim'
" nnoremap <silent> tl :TlistToggle<CR>
" let Tlist_Auto_Open= 0 "auto open Tlist
" let Tlist_Exit_OnlyWindow = 1 "exit Tlist if close sourse file
" " let Tlist_Use_Right_Window = 1
" let Tlist_Show_One_File = 1 "only show current file's Tlist
" let Tlist_Compact_Format= 1 "Hide help menu
" let Tlist_Ctags_Cmd = '/usr/bin/ctags-exuberant'
"
"
" 丝滑的移动
" Plug 'terryma/vim-smooth-scroll'
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>

"tagbar比taglist好
Plug 'majutsushi/tagbar'
nnoremap <silent> tb :TagbarToggle<CR>
"去除第一行的帮助信息
let g:tagbar_ctags_bin = '/usr/bin/ctags-exuberant'                       "tagbar以来ctags插件
let g:tagbar_compact = 1
"当编辑代码时，在Tagbar自动追踪变量
" let g:tagbar_autoshowtag = 1
" let g:tagbar_left = 1                                          "让tagbar在页面左侧显示，默认右边
let g:tagbar_sort = 0

"bufexplorer
" Plug 'jlanzarotta/bufexplorer'
"nerdtree-tabs
" Plug 'jistr/vim-nerdtree-tabs'


" 窗口管理
" 合并taglist和nerdtree
" Plug 'vim-scripts/winmanager--Fox'
Plug 'vim-scripts/winmanager'
""""""""""""""""""""""""""""""""""""""配置nerdtree和 taglist""""""""""""""""""""""""""""""""""""""

" winmanager配置
let g:winManagerWindowLayout='NERDTree|Tagbar'

let g:NERDTree_title='[NERD Tree]'
function! NERDTree_Start()
	exec 'q'
	exec 'NERDTreeToggle'
endfunction

function! NERDTree_IsValid()
	return 1
endfunction

let g:Tagbar_title='[Tagbar]&[NERD Tree]'
function! Tagbar_Start()
	exec 'q'
	exec 'TagbarToggle'
	return 1
endfunction

function! Tagbar_IsValid()
	return 1
endfunction
let g:tagbar_vertical = 30


"定义打开关闭winmanager快捷键为
nmap <silent> <C-e> :WMToggle<CR>
" nmap <silent> <C-e> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR>
let g:winManagerWidth = 35
"显示函数的定义
" Plug 'wesleyche/srcexpl'
"
" wakatime
Plug 'wakatime/vim-wakatime'
let g:wakatime_PythonBinary = '/usr/bin/python'  " (Default: 'python')
let g:wakatime_OverrideCommandPrefix = '/usr/bin/wakatime'  " (Default: '')


"文本替换
Plug 'chxuan/vim-edit'
nnoremap Y :CopyText<cr>
nnoremap D :DeleteText<cr>
nnoremap C :ChangeText<cr>


"高级搜索
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_leader_key = '<leader>' "似乎会和coc冲突

"对齐
" Plug 'godlygeek/tabular'
" nmap <Leader>= :Tabularize /=<CR>
" vmap <Leader>= :Tabularize /=<CR>
" nmap <Leader>: :Tabularize /:\zs<CR>
" vmap <Leader>: :Tabularize /:\zs<CR>

"自动对齐
Plug 'chiel92/vim-autoformat'
" 保存自动对齐
" autocmd FileType c,cpp autocmd BufWritePre * :Autoformat

" autoformat
" nnoremap <F4>f :call FormatCode("", "file")<CR>
" vnoremap <leader>ff :call FormatCode(visualmode(), "file")<CR>
" nnoremap <leader>gf :call FormatCode("", "Google")<CR>
" vnoremap <leader>gf :call FormatCode(visualmode(), "Google")<CR>
" nnoremap <leader>cf :call FormatCode("", "Chromium")<CR>
" vnoremap <leader>cf :call FormatCode(visualmode(), "Chromium")<CR>
" nnoremap <leader>lf :call FormatCode("", "LLVM")<CR>
" vnoremap <leader>lf :call FormatCode(visualmode(), "LLVM")<CR>

func! FormatCode(exe_mode, style) range
	if a:exe_mode == ""
		let firstline_no = 1
		let lastline_no = line("$")
	else
		let firstline_no = a:firstline
		let lastline_no = a:lastline
	endif
	let l:save_formatdef = g:formatdef_clangformat
	let l:tmpa = join(["clang-format --lines=", firstline_no, ":", lastline_no], "")
	let g:formatdef_clangformat = "'" . l:tmpa . " --assume-filename=' . bufname('%') . ' -style=" . a:style . "'"
	let formatcommand = ":Autoformat"
	exec formatcommand
	let g:formatdef_clangformat = l:save_formatdef
endfunc

" 代码片段
Plug 'sirver/ultisnips'
Plug 'keelii/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsExpandTrigger="<enter>"
" 使用 tab 切换下一个触发点，shit+tab 上一个触发点
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c+j>"
" let g:UltiSnipsJumpBackwardTrigger="<c+k>"
" 使用 UltiSnipsEdit 命令时垂直分割屏幕
let g:UltiSnipsEditSplit="vertical"


call plug#end()
