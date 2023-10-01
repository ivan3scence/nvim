-- Добавляем Packer как пакет в Neovim
vim.cmd [[packadd packer.nvim]]

-- Используем данный коллбэк как список для плагинов
return require('packer').startup(function(use)

	-- Добавляем Packer в список, чтобы он обновлял сам себя
	use 'wbthomason/packer.nvim'

	-- LSP сервер
	use 'neovim/nvim-lspconfig'
	
	-- Иконки для автодополнения
--	use {
--		'onsails/lspkind-nvim',
--		config = function()
--			require('plugins/lspkind')
--		end
--	}

	-- Инсталлер для серверов LSP
	--use {
	--	'williamboman/nvim-lsp-installer',
	--	config = function()
	--		require('plugins/lsp-installer')
	--	end
	--}

	-- Mason {{{
  use {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
      		"williamboman/mason-lspconfig.nvim",
      		"neovim/nvim-lspconfig",
    	}
	}
	-- Удобное меню для обозрения проблем LSP
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end,
	}

	-- Автодополнение
--	use {
--		'hrsh7th/nvim-cmp',
--		requires = {
--			'L3MON4D3/LuaSnip',
--			'saadparwaiz1/cmp_luasnip',
--			'hrsh7th/cmp-nvim-lsp',
--			'hrsh7th/cmp-path',
--			'hrsh7th/cmp-emoji',
--			'hrsh7th/cmp-nvim-lsp-signature-help',
--			'hrsh7th/cmp-nvim-lua'
--		}
--		--config = function()
--		--	require('plugins/cmp')
--		--end
--	}
	use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-path", "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
            'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
            'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
            'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
        }
    }
-- snippets
use("L3MON4D3/LuaSnip") -- snippet engine
use("saadparwaiz1/cmp_luasnip") -- for autocompletion
use("rafamadriz/friendly-snippets") -- useful snippets
    use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp'
    }
	-- Telescope {{{
	use {
	    'nvim-telescope/telescope.nvim',
	    tag = '0.1.1',
	    --lazy = false,
	    --dependencies = {
	    --  "nvim-lua/plenary.nvim",
	    --  "ahmedkhalf/project.nvim",
	    --},
		requires = { {'nvim-lua/plenary.nvim'} }
	    --config = function()
	    --  require('plugins/telescope')
	    --end
	  }

  	-- TreeSitter {{{
  	use {
  	  "nvim-treesitter/nvim-treesitter",
  	  lazy = false,
  	  build = ":TSUpdate",
  	  event = { "BufReadPost", "BufNewFile" }
  	  --config = function()
  	  --  require('plugins/treesitter')
  	  --end
  	}
	-- Neo Tree {{{
	use {
	  	"nvim-neo-tree/neo-tree.nvim",
	    branch = "v2.x",
	    requires = { 
	      "nvim-lua/plenary.nvim",
	      "MunifTanjim/nui.nvim",
	    }
	  }
end)
