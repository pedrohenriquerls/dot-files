hi Comment cterm=italic
let g:nvcode_termcolors=256

syntax on
" colorscheme gruvbox
"colorscheme nord
"colorscheme nvcode
"colorscheme onedark
colorscheme tokyonight
"colorscheme aurora

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif
