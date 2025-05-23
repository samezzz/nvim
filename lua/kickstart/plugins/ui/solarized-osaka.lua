return {
  'craftzdog/solarized-osaka.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require("solarized-osaka").setup({
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, colors)
  hl.StatusLine = { bg = "none", fg = colors.fg }
  hl.StatusLineNC = { bg = "none", fg = colors.fg }
  hl.TabLineFill = { bg = "none" }
end
    })
    vim.cmd.colorscheme("solarized-osaka")
  end,
}