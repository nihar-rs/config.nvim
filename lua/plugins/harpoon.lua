return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon").setup({})
    local toggle_opts = {
      border = "rounded",
      title_pos = "center",
      ui_width_ratio = 0.60,
      border_highlight = "Select",
      winhighlight = "NormalFloat:SpecialKey,FloatBorder:EndOfBuffer",
    }

    -- Set custom border color
    vim.api.nvim_set_hl(0, "NormalFloat", { bold = true })

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():add()
    end)
    vim.keymap.set("n", "<leader>hm", function()
      harpoon.ui:toggle_quick_menu(harpoon:list(), toggle_opts)
    end)

    for _, idx in ipairs({ 1, 2, 3, 4, 5 }) do
      vim.keymap.set("n", string.format("<space>%d", idx), function()
        harpoon:list():select(idx)
      end)
    end
  end,
}
