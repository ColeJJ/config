-- maps.lua

local map = vim.api.nvim_set_keymap


-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' ' -- 'vim.g' sets global variables


options = { noremap = true, silent = true }

-- new line in normal mode
map('n', '==', 'o<Esc>', options)

-- WINDOWS
-- split windows
map('n', 'ss', ':split<Return><C-w>w', options)
map('n', 'sv', ':vsplit<Return><C-w>w', options)
-- move windows
map('n', '<space>', '<C-w>w', options)
map('n', 'sh', '<C-w>h', options)
map('n', 'sk', '<C-w>k', options)
map('n', 'sj', '<C-w>j', options)
map('n', 'sl', '<C-w>l', options)
