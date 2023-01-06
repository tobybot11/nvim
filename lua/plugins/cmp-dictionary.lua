local setup, cmp_dictionary = pcall(require, "cmp_dictionary")
if not setup then
	return
end

-- configure/enable gitsigns
cmp_dictionary.setup({
	dic = {
		-- ["*"] = vim.fn.expand("$XDG_DATA_HOME") .. "/en.dict",
		["*"] = { "~/.local/share/en.dict" },
	},
})
