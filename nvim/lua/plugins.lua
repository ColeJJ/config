-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- auto runs PackerCompile if this file is updated  
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme 
  use 'Mofiqul/vscode.nvim'

  -- LSP Config
  use 'neovim/nvim-lspconfig'

  -- treesitter
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  -- cmp -> autocompletion plugin
   use "hrsh7th/nvim-cmp" -- the completion plugin
   use "hrsh7th/cmp-nvim-lsp" -- nvim completion
   use "hrsh7th/cmp-path"  -- path completions
   use "hrsh7th/cmp-buffer"  -- buffer completions
   use "hrsh7th/cmp-calc"  -- calculation completions
   use "hrsh7th/cmp-cmdline" -- cmd line completions
   use "saadparwaiz1/cmp_luasnip" -- snippet completions

   -- Snippets
   use "L3MON4D3/LuaSnip" -- snippet engine

end)
