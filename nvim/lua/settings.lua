local o = vim.o --global options
local wo = vim.wo --window local
local bo = vim.bo --buffer local

-- global options
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 12
o.showcmd = true
o.shell = fish
-- indents
o.smarttab = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.shiftwidth = 2
o.tabstop = 2
o.ai = true --Auto indent
o.si = true --Smart indent

-- THEME VSCODE
-- For dark theme (neovim's default)
vim.o.background = "dark"
-- Enable transparent background
vim.g.vscode_transparent = 1
-- Enable italic comment
vim.g.vscode_italic_comment = 1
-- Disable nvim-tree background color
vim.g.vscode_disable_nvimtree_bg = true
vim.cmd([[colorscheme vscode]])

-- THEME Devaslife
-- vim cmd run vim in lua
--vim.cmd([[
--" true color
--if exists("&termguicolors") && exists("&winblend")
--syntax enable
--set termguicolors
--set winblend=0
--set wildoptions=pum
--set pumblend=5
--set background=dark
--" Use NeoSolarized
--let g:neosolarized_termtrans=1
--runtime ./colors/NeoSolarized.vim
--colorscheme NeoSolarized
--endif
--]])

-- window-local options
wo.number = false
wo.wrap = false
wo.fillchars = 'eob: '
wo.number = true

-- buffer-local options
bo.expandtab = true
