-- local jdtls = require("jdtls")

local function start_jdtls()
  for _, client in pairs(vim.lsp.get_clients({ bufrn = 0 })) do
    if client.name == "jdtls" then
      return -- Don't start another instance
    end
  end
  local config = {
    cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
    root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
  }
  require("jdtls").start_or_attach(config)
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = start_jdtls,
})
