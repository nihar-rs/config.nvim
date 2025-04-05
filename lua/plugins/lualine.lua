return {
	{
	  "nvim-lualine/lualine.nvim",
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  config = function()
	    require("lualine").setup({
	      options = {
	        icons_enabled = true,
	        theme = "auto",
	      },
	      sections = {
	        lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, { "filetype" } },
	      },
	      extensions = {},
	    })
	  end,
	},
}
