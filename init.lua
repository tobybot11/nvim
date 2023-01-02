-- require("tobybot11.plugins-setup")
require("packer-config")

require("core.options")
require("core.colorscheme")
require("core.keymaps")

require("plugins.autopairs")
-- require("plugins.autopairs")
require("plugins.comment")
require("plugins.fidget")
require("plugins.gitsigns")
require("plugins.hlargs")
require("plugins.impatient")
require("plugins.nvim-cmp")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.rust-tools")
require("plugins.symbols-outline")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.vimspector")

require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspconfig")
require("plugins.lsp.null-ls")
