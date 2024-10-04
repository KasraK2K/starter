local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html", -- HTML
  "cssls", -- CSS
  "cssmodules_ls", -- CSS
  "golangci_lint_ls", -- GO
  "gopls", -- GO
  "quick_lint_js", -- JavaScript
  "ts_ls", -- TypeScript
  "sqlls", -- SQL
  "sqls", -- SQL
  "volar", -- VUE
  "vuels", -- VUE
  "dockerls", -- DOCKER
  "yamlls", -- YML
  "eslint", -- ESLint
  "emmet_ls", -- Emmet
  "graphql", -- GraphQL
  "marksman", -- Markdown
  "jedi_language_server", -- Python
  "pyright", -- Python
  "pylsp", -- Python (docs)
  "taplo", -- TOML
  "tailwindcss", -- Tailwind CSS
  "prismals", -- Prisma
  "intelephense", -- PHP
  "phpactor", -- PHP
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.ts_ls.setup {
--   init_options = {
--     token = "your_sourcery_token"
--   },
--   on_init = on_init,
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }

-- lspconfig.volar.setup{
--   filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
-- }

-- require("nvim-lsp-installer").setup({
--   automatic_installation = true,
-- })
