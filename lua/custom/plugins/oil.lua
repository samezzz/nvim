return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      use_default_keymaps = false,
      keymaps = {
        ['g?'] = 'actions.show_help',
        ['l'] = 'actions.select',
        ['<CR>'] = 'actions.select',
        ["<space>l"] = { "actions.select", opts = { vertical = true } },
        ["<space>j"] = { "actions.select", opts = { horizontal = true } },
        ['L'] = 'oilactions.preview',
        ['<M-w>'] = 'actions.close',
        ['<M-r>'] = 'actions.refresh',
        ['h'] = 'actions.parent',
        ['_'] = 'actions.open_cwd',
        ['`'] = 'actions.cd',
        ['~'] = 'actions.tcd',
        ['gs'] = 'actions.change_sort',
        ['<M-E>'] = 'actions.open_external',
        ['g.'] = 'actions.toggle_hidden',
      },
      view_options = {
        show_hidden = true,
      },
    }
  end,
}
