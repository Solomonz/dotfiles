source ~/.vimrc

call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

lua << EOF

-- treesitter
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  -- Install languages synchronously (only applied to ensure_installed)
  sync_install = false,
  highlight = {
    -- false will disable the whole extension
    enable = true
  },
}

EOF

syntax enable

colorscheme catppuccin-mocha

autocmd BufReadPost * silent! normal! g`"zv
