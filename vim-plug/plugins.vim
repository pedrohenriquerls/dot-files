" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" Sneak moves
Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-sneak'
" Easymotion
Plug 'easymotion/vim-easymotion'
" Surround
Plug 'tpope/vim-surround'
" Have the file system follow you around
Plug 'airblade/vim-rooter'
" auto set indent settings
Plug 'tpope/vim-sleuth'
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Cool Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Closetags
Plug 'alvan/vim-closetag'
" Themes
Plug 'marko-cerovac/material.nvim'
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/completion-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'tsuyoshicho/vim-efm-langserver-settings'
Plug 'akinsho/flutter-tools.nvim'
" Status Line
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" FZF
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'
" Start Screen
Plug 'mhinz/vim-startify'
" Vista
Plug 'liuchengxu/vista.vim'
" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key'
" Snippets
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
" Better tabline
Plug 'romgrk/barbar.nvim'
" undo time travel
Plug 'mbbill/undotree'
" Find and replace
Plug 'brooth/far.vim'
" Auto change html tags
Plug 'AndrewRadev/tagalong.vim'
" live server
Plug 'turbio/bracey.vim'
" Smooth scroll
Plug 'psliwka/vim-smoothie'
" " async tasks
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
" Swap windows
Plug 'wesQ3/vim-windowswap'
" Colorizer
Plug 'norcalli/nvim-colorizer.lua'
" Intuitive buffer closing
Plug 'moll/vim-bbye'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
