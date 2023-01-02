local setup, symbols_outline = pcall(require, "symbols-outline")
if not setup then
	return
end

symbols_outline.setup({
	show_guides = true,
	position = "right",
	width = 35,
	wrap = false,
	-- keymaps = { fold = "h", unfold = "l", fold_all = "zM", unfold_all = "zR" },
	-- symbols = {
	-- 	Function = { icon = "", hl = "TSFunction" },
	-- 	File = { icon = "", hl = "TSURI" },
	-- 	Module = { icon = "全", hl = "TSNamespace" },
	-- 	Namespace = { icon = "凜", hl = "TSNamespace" },
	-- 	Package = { icon = "", hl = "TSNamespace" },
	-- 	Class = { icon = "", hl = "TSType" },
	-- 	Method = { icon = "", hl = "TSMethod" },
	-- 	Property = { icon = "", hl = "TSMethod" },
	-- 	Field = { icon = "", hl = "TSField" },
	-- 	Constructor = { icon = "", hl = "TSConstructor" },
	-- 	Enum = { icon = "", hl = "TSType" },
	-- 	Interface = { icon = "ﰮ", hl = "TSType" },
	-- 	Variable = { icon = "", hl = "TSConstant" },
	-- 	Constant = { icon = "", hl = "TSConstant" },
	-- 	String = { icon = "", hl = "TSString" },
	-- 	Number = { icon = "#", hl = "TSNumber" },
	-- 	Boolean = { icon = "⊨", hl = "TSBoolean" },
	-- 	Array = { icon = "", hl = "TSConstant" },
	-- 	Object = { icon = "", hl = "TSType" },
	-- 	Key = { icon = "🔐", hl = "TSType" },
	-- 	Null = { icon = "ﳠ", hl = "TSType" },
	-- 	EnumMember = { icon = "", hl = "TSField" },
	-- 	Struct = { icon = "", hl = "TSType" },
	-- 	Event = { icon = "🗲", hl = "TSType" },
	-- 	Operator = { icon = "+", hl = "TSOperator" },
	-- 	TypeParameter = { icon = "", hl = "TSParameter" },
	-- },
})
