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

-- THEME
-- For dark theme (neovim's default)
vim.o.background = "dark"
-- Enable transparent background
vim.g.vscode_transparent = 1
-- Enable italic comment
vim.g.vscode_italic_comment = 1
-- Disable nvim-tree background color
vim.g.vscode_disable_nvimtree_bg = true
vim.cmd([[colorscheme vscode]])

-- window-local options
wo.number = false
wo.wrap = false
wo.fillchars = 'eob: '
wo.number = true

-- buffer-local options
bo.expandtab = true
