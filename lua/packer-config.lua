local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost packer-config.lua source <afile> | PackerSync
--   augroup end
-- ]])

local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	group = packer_group,
	-- pattern = vim.fn.expand '$MYVIMRC',
	-- pattern = vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua/packer.lua",
	-- pattern = vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua/packer-config.lua",
	-- pattern = { "packer-config.lua" },
	pattern = "packer-config.lua",
	-- command = "source <afile> | silent! LspStop | silent! LspStart | PackerSync",
	command = "source <afile> | PackerSync",
})

local status, packer = pcall(require, "packer")
if not status then
	return
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("lewis6991/impatient.nvim")

	-- lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'
	use("bluz71/vim-nightfly-guicolors")
	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer")
	use("rust-lang/rust.vim")
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")
	use("numToStr/Comment.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")

	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- LSP completion source:
	use("hrsh7th/cmp-nvim-lsp")

	-- Useful completion sources:
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & forwarders
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use({ -- LSP configuration & plugins
		"neovim/nvim-lspconfig",
		requires = {
			-- Automatically install LSPs to stdpath for neovim
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",

			-- Useful status updates for LSP
			"j-hui/fidget.nvim",

			-- Additional lua configuration, makes nvim stuff amazing
			"folke/neodev.nvim",
		},
	})

	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")
	-- use("simrat39/rust-tools.nvim")
	-- fork with inlay fix issue
	use("mattfbacon/rust-tools.nvim")

	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use({ -- Additional text objects via treesitter
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
	})

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- Git related plugins
	use("tpope/vim-fugitive")
	use("tpope/vim-rhubarb")
	use("lewis6991/gitsigns.nvim")

	use("lukas-reineke/indent-blankline.nvim") -- Add indentation guides even on blank lines
	use("tpope/vim-sleuth") -- Detect tabstop and shiftwidth automatically

	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	-- use("preservim/tagbar")
	use("simrat39/symbols-outline.nvim")
	use("puremourning/vimspector")
	use("voldikss/vim-floaterm")

	use("mhinz/vim-startify")
	use("m-demare/hlargs.nvim")

	use("uga-rosa/cmp-dictionary")

	-- use({
	-- 	"kosayoda/nvim-lightbulb",
	-- 	requires = "antoinemadec/FixCursorHold.nvim",
	-- })
	--
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
