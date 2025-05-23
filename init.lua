vim.loader.enable()
-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configuration ]]
require 'options'
require 'keymaps'
require 'autocmds'

-- [[ Configure plugins ]]
require('lazy').setup({
  { import = 'kickstart.plugins' },
  { import = 'custom.plugins' }
}, {
  rocks = { enabled = false },
  ui = {
    -- define a unicode icons table
    icons = {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- [[ Axlefublr ]]
Map = vim.keymap.set
Cmd = vim.cmd
VSCodeNotify = vim.fn.VSCodeNotify
VSCodeCall = vim.fn.VSCodeCall

THROWAWAY_REGISTER = 'o'
THROWAWAY_MARK = 'I'

require 'custom/functions'
require 'custom/fixes'

if vim.g.vscode then
  require 'custom/vscode/functions'
  require 'custom/vscode/mappings'
else
  require 'custom/nvim'
end

-- require 'custom/configuration'
require 'custom/keymap'

require 'custom/big/functions'
require 'custom/big/mappings'

require 'custom/registers/registers'
require 'custom/registers/text-objects'
require 'custom/registers/brackets'
require 'custom/registers/killring'
require 'custom/registers/numbered'

require 'custom/remaps'


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
