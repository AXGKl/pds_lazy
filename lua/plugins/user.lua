-- pyright config via pyproject.toml: https://github.com/microsoft/pyright/blob/main/docs/configuration.md

return {
  'mrjones2014/smart-splits.nvim', -- better than lazies resize (left is really left in right split)
  --{ 'Pocco81/auto-save.nvim', cmd = 'ASToggle' },
  {
    'nullishamy/autosave.nvim',     -- cmd = 'ASGlobalToggle' },
    lazy = true,                    -- means: off at start, since noone except toggle requires it. at first toogle it'll be disabled though. can live with that.
    config = function()
      require('autosave').setup({}) -- attach to all filetypes
    end,
  },
  { 'echasnovski/mini.pairs', enabled = false },
  'axiros/vpe',
  'godlygeek/tabular',
  'junegunn/limelight.vim',
  'mbbill/undotree',
  'tpope/vim-surround',
  'brentyi/isort.vim',
  'isobit/vim-caddyfile',
  --'sheerun/vim-polyglot',
  --'uga-rosa/translate.nvim',
  --'github/copilot.vim',

  -- {
  --   "folke/flash.nvim",
  --   enabled = false,
  -- },
  -- {
  --   "folke/noice.nvim",
  --   enabled = false,
  --   opts = {
  --     presets = { bottom_search = false },
  --     routes = {
  --       {
  --         filter = {
  --           event = "msg_show",
  --           any = {
  --             { find = "%d+L, %d+B" },
  --             { find = "; after #%d+" },
  --             { find = "; before #%d+" },
  --             { find = "%d fewer lines" },
  --             { find = "%d more lines" },
  --           },
  --         },
  --         opts = { skip = true },
  --       },
  --     },
  --   },
  -- },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup() -- attach to all filetypes
    end,
  },
  {

    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-emoji' },
    opts = function(_, opts)
      table.insert(opts.sources, { name = 'emoji' })
      table.insert(opts.sources, { name = 'copilot', group_index = 2 })
    end,
  },
  {
    'mfussenegger/nvim-dap',
    opts = function(_, opts)
      require('config.dap')
    end,
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        --'js-debug-adapter',
        'shfmt',
        'node-debug2-adapter',
        'typescript-language-server',
      },
    },
  },

  -- Use <tab> for completion and snippets (supertab)

  -- {
  --   "neovim/nvim-lspconfig",
  --   ft = "python",
  --   opts = {
  --     servers = {
  --       pyright = {
  --         -- https://fossies.org/linux/pyright/docs/settings.md
  --         settings = {
  --           pyright = {
  --             disableLanguageServices = false,
  --             disableOrganizeImports = true,
  --             reportMissingModuleSource = "none",
  --             reportMissingImports = "none",
  --             reportUndefinedVariable = "none",
  --           },
  --           python = {
  --             analysis = {
  --               autoSearchPaths = true,
  --               diagnosticMode = "workspace",
  --               typeCheckingMode = "basic",
  --               useLibraryCodeForTypes = true,
  --             },
  --           },
  --         },
  --       },
  --       ruff_lsp = {
  --         on_attach = function(client, _)
  --           client.server_capabilities.hoverProvider = false
  --         end,
  --         init_options = {
  --           settings = {
  --             args = {},
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
  -- kshenoy/vim-signature
  --  {
  --    "simrat39/symbols-outline.nvim", -- the symbols split window
  --    cmd = "SymbolsOutline",
  --    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  --    config = true,
  --  },

  -- add telescope-fzf-native: Faster + supports e.g. 'foo
  --   {
  --     "telescope.nvim",
  --     dependencies = {
  --       "nvim-telescope/telescope-fzf-native.nvim",
  --       build = "make",
  --       config = function()
  --         require("telescope").load_extension("fzf")
  --       end,
  --     },
  --   },
}
