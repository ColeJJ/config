-- maps.lua

local map = vim.api.nvim_set_keymap


-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' ' -- 'vim.g' sets global variables


local options = { noremap = true, silent = true }

-- new line in normal mode
map('n', '==', 'o<Esc>', options)

-- WINDOWS
-- split windows
map('n', 'ss', ':split<Return><C-w>w', options)
map('n', 'sv', ':vsplit<Return><C-w>w', options)
-- move windows
map('n', '<Tab>', '<C-w>w', options)
map('n', 'sh', '<C-w>h', options)
map('n', 'sk', '<C-w>k', options)
map('n', 'sj', '<C-w>j', options)
map('n', 'sl', '<C-w>l', options)

-- TELESCOPE
map('n', ';f', '<cmd>Telescope find_files<cr>', options)
map('n', ';r', '<cmd>Telescope live_grep<cr>', options)
map('n', '\\', '<cmd>Telescope buffers<cr>', options)
map('n', ';;', '<cmd>Telescope help_tags<cr>', options)

-- LSPSAGA
-- nnoremap <silent>K :Lspsaga hover_doc<CR>
map('n', 'gh', ':Lspsaga hover_doc<CR>', options)
-- inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
map('n', 'gs', ':Lspsaga signature_help<CR>', options)
-- nnoremap <silent> gh :Lspsaga lsp_finder<CR>
map('n', 'gf', ':Lspsaga lsp_finder<CR>', options)
--nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
map('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>', options)
-- nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
map('n', '<C-k>', ':Lspsaga diagnostic_jump_prev<CR>', options)

-- NVIM TREE
map("n", "<leader>e", ":NvimTreeToggle<cr>", options)
map("n", "q", ":bd<CR>:tabNext<CR>", options)
