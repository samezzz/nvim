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
          ['<M-j>'] = 'actions.select_split',
          ['<M-l>'] = 'actions.select_vsplit', -- this is used to navigate left
          ['L'] = 'actions.preview',
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