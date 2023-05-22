return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- noice ui
  { import = "astrocommunity.utility.noice-nvim" },
  -- trouble debug
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- todo comments
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- markdown :Glow file.md
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
}
