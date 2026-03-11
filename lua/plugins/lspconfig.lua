return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  ft = { "rust" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("rust_analyzer", {
      capabilities = capabilities,
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = true,
          check = {
            command = "clippy",
            extraArgs = { "--all", "--", "-W", "clippy::all" },
          },
          cargo = {
            allFeatures = true,
            loadOutDirsFromCheck = true,
            buildScripts = { enable = true },
          },
          procMacro = {
            enable = true,
            attributes = { enable = true },
          },
          inlayHints = {
            enable = true,
            chainingHints = { enable = true },
            typeHints = { enable = true, hideClosureInitialization = true },
            parameterHints = { enable = true },
            closureReturnTypeHints = { enable = "with_block" },
            lifetimeElisionHints = { enable = "skip_trivial", useParameterNames = true },
            maxLength = 25,
            bindingModeHints = { enable = true },
            closureCaptureHints = { enable = true },
            discriminantHints = { enable = "fieldless" },
            expressionAdjustmentHints = { enable = "reborrow" },
            rangeExclusiveHints = { enable = true },
          },
          completion = {
            autoimport = { enable = true },
            postfix = { enable = true },
            callable = { snippets = "fill_arguments" },
            fullFunctionSignatures = { enable = true },
            privateEditable = { enable = true },
          },
          imports = {
            granularity = { group = "module" },
            prefix = "self",
          },
          diagnostics = {
            enable = true,
            experimental = { enable = true },
            styleLints = { enable = true },
          },
          semanticHighlighting = {
            operator = { specialization = { enable = true } },
            punctuation = { enable = true, specialization = { enable = true } },
            strings = { enable = true },
          },
          hover = {
            actions = {
              enable = true,
              references = { enable = true },
              run = { enable = true },
              debug = { enable = true },
              gotoTypeDef = { enable = true },
              implementations = { enable = true },
            },
            documentation = { enable = true, keywords = { enable = true } },
            links = { enable = true },
          },
          typing = {
            autoClosingAngleBrackets = { enable = true },
          },
          lens = {
            enable = true,
            references = {
              enable = true,
              adt = { enable = true },
              enumVariant = { enable = true },
              method = { enable = true },
              trait = { enable = true },
            },
            implementations = { enable = true },
            run = { enable = true },
            debug = { enable = true },
          },
          workspace = {
            symbol = { search = { kind = "all_symbols" } },
          },
        },
      },
    })
    vim.lsp.enable("rust_analyzer")
  end,
}
