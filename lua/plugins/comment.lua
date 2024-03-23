local setup, comment = pcall(require, "Comment")
if not setup then
	return
end

comment.setup({
	padding = true,
	sticky = true,
	extra = {
		above = "gcO",
		below = "gco",
		eol = "gcA",
	},
	mappings = {
		basic = true,
		extra = true,
	},
})
