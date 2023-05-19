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
          require("tokyonight").setup({
            styles = {
              -- Style to be applied to different syntax groups
              -- Value is any valid attr-list value for `:help nvim_set_hl`
              comments = { italic = false },
              keywords = { italic = false },
            },
          })
        end,
      },
      { "catppuccin/nvim" },
      -- plugins
      -- Outline
      {
        "simrat39/symbols-outline.nvim",
        config = function()
          require("symbols-outline").setup()
        end,
      },
      -- Trouble :Trouble
      { "folke/trouble.nvim" },
      -- TODO Comments
      {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
          require("todo-comments").setup()
        end,
      },
      -- NAVIC path
      {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig",
        config = function()
          require("nvim-navic").setup()
        end,
      },
      -- Floating CMD line :cmdline
      {
        'VonHeikemen/fine-cmdline.nvim',
        requires = {
          { 'MunifTanjim/nui.nvim' }
        },
        config = function()
          require("fine-cmdline").setup()
        end,
      },
}
