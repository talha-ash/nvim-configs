-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'   
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

    use {
     'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate'
    }

    use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
    use {
     "ThePrimeagen/harpoon",
     branch = "harpoon2",
     requires = { {"nvim-lua/plenary.nvim"} }
    }


  use 'mbbill/undotree'

  use 'tpope/vim-fugitive'

  use {
    'Shatur/neovim-ayu',
    config = function()
      require('ayu').setup({
        mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        terminal = true, -- Set to `false` to let terminal manage its own colors.
        overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
      })
      
      -- Apply the colorscheme
      require('ayu').colorscheme()
      -- Or use one of these specific variants:
      -- vim.cmd('colorscheme ayu-dark')
      -- vim.cmd('colorscheme ayu-light')
      -- vim.cmd('colorscheme ayu-mirage')
    end
  }
  end)
