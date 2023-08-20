local colorscheme = "everforest"


local status = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
	return 
end


