--Only required if you have packer configured as 'opt'
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({ 'rebelot/kanagawa.nvim',
  	as = 'kanagawa',
	config = function()
		vim.cmd("colorscheme kanagawa")
	end
  })

  use ({ 'nvim-treesitter/nvim-treesitter', 
	{run = ':TSUpdate'}
  })

  use ( 'nvim-lua/plenary.nvim' )
  use ( 'theprimeagen/harpoon' )
  use ( 'tpope/vim-fugitive' )
  use ( 'tpope/vim-surround' )
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
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
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip',
          dependencies = { "rafamadriz/friendly-snippets"},
      },     -- Required
  }
  }
  -- install without yarn or npm
  use ({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use "rafamadriz/friendly-snippets"
  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }
  use "lukas-reineke/indent-blankline.nvim"
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

end)
