local status, vimspector = pcall(require, "vimspector")
if not status then
	return
end

-- vimspector.setup()

-- Vimspector options
vim.cmd([[
let g:vimspector_sidebar_width = 85
let g:vimspector_bottombar_height = 15
let g:vimspector_terminal_maxwidth = 70
]])
