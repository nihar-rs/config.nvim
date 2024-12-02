--[[
return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }
}
]]

return {
	{
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		vim.cmd [[ colorscheme gruvbox ]]
	end,
	opts = ...}
}

