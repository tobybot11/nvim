-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"dockerfile",
		"gitignore",
		"go",
		"graphql",
		"html",
		"javascript",
		"json",
		"lua",
		"markdown",
		"rust",
		"svelte",
		"tsx",
		"typescript",
		"vim",
		"yaml",
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	-- auto install above language parsers
	auto_install = true,
})

-- Treesitter folding
-- vim.wo.foldmethod = "expr"
-- vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
