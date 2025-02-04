return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "github/copilot.vim",
    config = function()
      -- vim.g.copilot_enabled = false
      vim.cmd("Copilot disable") -- Ensures Copilot is actually off
    end,
  },
  {
    "l3mon4d3/luasnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "onsails/lspkind.nvim",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()
      local lspkind = require("lspkind")
      local luasnip = require("luasnip")
      luasnip.config.setup({})

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body) -- Fixed duplicate call
          end,
        },
        completion = { completeopt = "menu,menuone,noinsert" },

        mapping = cmp.mapping.preset.insert({
          ["<c-n>"] = cmp.mapping.select_next_item(), -- select the [n]ext item
          ["<c-p>"] = cmp.mapping.select_prev_item(), -- select the [p]revious item
          ["<c-b>"] = cmp.mapping.scroll_docs(-4), -- scroll docs back
          ["<c-f>"] = cmp.mapping.scroll_docs(4), -- scroll docs forward
          ["<c-e>"] = cmp.mapping.abort(),
          ["<cr>"] = cmp.mapping.confirm({ select = true }),
        }),

        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered()
        },

        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- for luasnip users
          { name = "buffer" },
          { name = "path" },
        }),

        formatting = {
          format = lspkind.cmp_format({
            maxwidth = 50,
            ellipsis_char = "...",
            mode = "symbol_text",
            menu = {
              buffer = "[buf]",
              nvim_lsp = "[lsp]",
              nvim_lua = "[api]",
              path = "[path]",
              luasnip = "[snip]",
            },
          }),
        },
      })
    end,
  },
}

