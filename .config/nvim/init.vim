""PLUGINS""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

 "   Plug 'ackyshake/VimCompletesMe'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'mhinz/vim-startify'
    Plug 'Yggdroot/indentLine'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdcommenter'
"    Plug 'dense-analysis/ale'
"    Plug 'sheerun/vim-polyglot'
"    Plug 'dylanaraps/wal.vim'
    Plug 'jiangmiao/auto-pairs'
"    Plug 'dracula/vim'
    Plug 'Mofiqul/dracula.nvim'
call plug#end()


""CONFIGUAÇÕES DOS PLUGINS"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"source ~/.config/nvim/coc.nvimrc

let g:ale_completion_enabled = 0
let g:indentLine_enabled = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop= 0
let g:airline_theme='tomorrow'

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

"let g:ycm_language_server =
"  \ [{
"  \   'name': 'ccls',
"  \   'cmdline': [ 'ccls' ],
"  \   'filetypes': [ 'c', 'cpp', 'cuda', 'objc', 'objcpp' ],
"  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
"  \ }]


""CONFIGURAÇÕES GLOBAIS"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" colorscheme dracula           " ativa o esquema de cores padrão do sistema 
filetype on               " ativa a detectação da extensão do arquivo, o que opcionalmente pode ativar um evento
filetype plugin on        " carrega plugins de acordo com a exntesão do arquivo
filetype indent on        " carrega uma indentação de acordo com a extensão do arquivo

syntax on                 " ativa a sintaxe colorida
set autoindent            " ativa a indentação automática
set smartindent           " ativa a indentação inteligente 

set number                " ativa a numeração de linha
set relativenumber        " ativa a numeração relativa

set nu                    " ativa números de linha
set history=1000          " aumenta o número de comandos armazenados pelo vim
set clipboard=unnamedplus " ativa o compartilhamento de área de transferência entre o vim e a interface gráfica 

set tabstop=4             " troca o espaço em branco em espaços
set softtabstop=4         " troca o espaço em branco em espaços
set shiftwidth=4          " quando se indenta com '>', usa 4 espaços do teclado
set expandtab             " o espaço em branco de quandos se pressiona a tecla tab é substituido por espaços
set smarttab              " troca o espaço em branco em espaços normais automaticamente quando abre o arquivo

set hidden                " oculta o buffer atual quando um novo arquivo é aberto
set incsearch             " automaticamente pesquisa ao digitar sem precisar apertar enter
set ignorecase            " ignorar maiúscolo e minuscolo nas buscas
set smartcase             " considera a palavra caso houver um caractere maiústo

set scrolloff=8           " número mínimo de linhas para manter acima e abaixo do cursor
set cmdheight=2           " dá mais espaço para mostrar as mensagens de modos
set encoding=utf-8        " ativa a codificação utf-8

set splitright            " cria rachaduras verticais à direita
set splitbelow            " cria divisões horizontais abaixo

set nobackup              " sem backup
set nowritebackup         " sem backup
set updatetime=210        " tempo em milísegundos pra considerar mudanças

set title                 " alerta de alterações na título da janela
set autoread              " o vim atualiza qualquer alteração externa feita no arquivo
set mouse=a               " ativa o clique do mouse para navegação pelos documentos


""REMAPS"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map cc <Plug>NERDCommenterInvert
map <c-k>i :IndentLinesToggle<cr>
map <C-n> :NERDTreeToggle<cr>




