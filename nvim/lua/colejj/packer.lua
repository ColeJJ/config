-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


 -- THEMES

  -- Aquarium
  --  use({
  --    'frenzyexists/aquarium-vim'
  --  })

  -- tundra theme
  use 'sam4llis/nvim-tundra'

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- local windows switching
  use ('theprimeagen/harpoon')
  -- local branches and changes
  use ('mbbill/undotree')
  -- git 
  use ('tpope/vim-fugitive')
  -- autopairs
  use ('jiangmiao/auto-pairs')
  -- autopairs for html
  use ('alvan/vim-closetag')
  -- commenting
  use ('numToStr/Comment.nvim')

  -- prettier and null ls
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- lsp
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }

}

  -- go lang 
  use ('fatih/vim-go',{ run = ':GoUpdateBinaries' })

  -- java 
  use 'mfussenegger/nvim-jdtls'
end)
