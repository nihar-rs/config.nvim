print("Hello from Nihar")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

--Highlight when yanking text

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank({
      higroup = "Substitute",
      timeout = 100,
    })
  end,
})

vim.diagnostic.config({
  virtual_text = {
    spacing = 8,
    prefix = function(diagnostic)
      local msg = diagnostic.message
      if msg:match("^%s*⚠️[●•]") then
        return msg
      else
        return "● " .. msg
        -- return = "⚠️" .. msg
      end
    end,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
