call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'Yggdroot/indentLine'
  Plug 'cohama/lexima.vim'

  " style
  Plug 'chriskempson/base16-vim'
  Plug 'camspiers/animate.vim'
  Plug 'camspiers/lens.vim'

  " fzf
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " lsp
  Plug 'Shougo/neocomplete.vim'
  Plug 'neovim/nvim-lspconfig'

  " git
  Plug 'tpope/vim-fugitive'

  " ruby
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'thoughtbot/vim-rspec'

  " elixir
  Plug 'elixir-editors/vim-elixir'
call plug#end()

source ~/.config/nvim/rc/colors.vim
source ~/.config/nvim/rc/lsp.vim
source ~/.config/nvim/rc/fzf.vim

" basic
syntax on
filetype plugin indent on

set number
set splitright
set clipboard=unnamed

" ruby syntax
let g:ruby_indent_access_modifier_style = 'indent'
let g:ruby_indent_block_style = 'do'
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_hanging_elements = 0

" shortcut
ca tn tabnew

nnoremap @ yiw
nnoremap <C-h> :tabp<CR>                                                                            
nnoremap <C-l> :tabn<CR>

vnoremap <C-c> "*y

map - :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>
map ] :NERDTreeFind<CR>

