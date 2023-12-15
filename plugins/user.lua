return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  -- themes
  { "https://gitlab.com/__tpb/monokai-pro.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "navarasu/onedark.nvim" },
  { "shaunsingh/moonlight.nvim" },
  { "shaunsingh/nord.nvim" },
  { "EdenEast/nightfox.nvim" },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup {
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
        },
      }
    end,
  },
  -- caddyfile syntax
  { "isobit/vim-caddyfile", event = { "BufReadPre", "BufNewFile" } },
  -- Outline
  {
    "simrat39/symbols-outline.nvim",
    config = function() require("symbols-outline").setup() end,
  },
  -- NAVIC path
  {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
    config = function() require("nvim-navic").setup() end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      -- char = "│",
      -- context_char = "│",
      indent = {
        char = "│",
      },
    },
  },
  -- gitsigns override
  {
    "lewis6991/gitsigns.nvim",
    enabled = vim.fn.executable "git" == 1,
    event = "User AstroGitFile",
    opts = {
      signs = {
        add = { text = "│" },
        change = { text = "│" },
      },
      worktrees = vim.g.git_worktrees,
    },
  },
  -- lazy.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = {
        -- bottom_search = true, -- use a classic bottom cmdline for search
        -- command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
      views = {
        cmdline_popup = {
          position = {
            row = 10,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 13,
            col = "50%",
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
      -- add any options here
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        handlers = false,
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
}
