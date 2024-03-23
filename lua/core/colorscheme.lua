-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
local status, _ = pcall(vim.cmd, "colorscheme bluloco-dark")
if not status then
	print("Colorscheme not found!")
end
