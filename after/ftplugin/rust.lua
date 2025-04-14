-- ~/.config/nvim/ftplugin/rust.lua
print("rust ftplugin loaded")
vim.api.nvim_create_autocmd("FileType", {
	pattern = "rust",
	callback = function()
		print("Rust FileType detected!")
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.expandtab = true
	end,
})
