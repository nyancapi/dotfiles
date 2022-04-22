vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- tokyonight
	use 'folke/tokyonight.nvim'

	-- comment
	use 'numToStr/Comment.nvim'

	-- tree-sitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- indent-blankline
	use "lukas-reineke/indent-blankline.nvim"

	-- toggleterm
	use 'akinsho/toggleterm.nvim'

	-- scrollbar
	use 'petertriho/nvim-scrollbar'

	-- gitsigns
	use 'lewis6991/gitsigns.nvim'

	-- autopairs
	use 'windwp/nvim-autopairs' 

	-- telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- telescope.extension
	use {
		'nvim-telescope/telescope-frecency.nvim',
		config = function()
			require'telescope'.load_extension('frecency')
		end,
		requires = {'tami5/sqlite.lua'}
	}

	-- lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- neo-tree
	use {
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'v2.x',
		requires = { 
			'nvim-lua/plenary.nvim',
			'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
			'MunifTanjim/nui.nvim',
		}
	}
end)
