return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = "gruvbox",
        },
        sections = {
          lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, { "filetype" } },
          lualine_y = {
            function()
              local mem = collectgarbage("count") / 1024 -- memory in MB
              return string.format(" %.2fMB", mem)
            end,
          },
          lualine_z = {
            function()
              local buf_clients = vim.lsp.get_clients({ bufnr = 0 })
              if next(buf_clients) == nil then
                return "  No LSP"
              end
              local client_names = {}
              for _, client in pairs(buf_clients) do
                table.insert(client_names, client.name)
              end
              -- return "  " .. table.concat(client_names, "|")
              -- return "  " .. buf_clients[#buf_clients].name + string.format(" %d LSP", #buf_clients)
              local last = buf_clients[#buf_clients].name
              local count = #buf_clients
              return string.format("  %s |%d", last, count)
            end,
            "location",
            function()
              return "󱑍 " .. os.date("%H:%M")
            end,
          },
        },
        extensions = {},
      })
    end,
  },
}
