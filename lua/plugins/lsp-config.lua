return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = false,
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    lazy = false,
    ["rust_analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
    lazy = false,
    ft = "java",
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      local servers = {
        bashls = true,
        lua_ls = {
          server_capabilities = {
            semanticTokensProvider = vim.NIL,
          },
        },
        rust_analyzer = true,
        ts_ls = {
          root_dir = require("lspconfig").util.root_pattern("package.json"),
          single_file = false,
          server_capabilities = {
            documentFormattingProvider = false,
          },
        },
        clangd = {
          -- cmd = { "clangd", unpack(require("custom.clangd").flags) },
          -- TODO: Could include cmd
          init_options = { clangdFileStatus = true },
          filetypes = { "c" },
        },
      }

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      lspconfig.html.setup({
        capabilities = capabilities,
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.jdtls.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
