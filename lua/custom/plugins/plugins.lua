-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local plugins = {
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    branch = 'main',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    init = function()
      vim.g.no_plugin_maps = true
    end,
    config = function()
      require 'custom.plugins.configs.nvim-treesitter-textobjects'
    end,
  },
  {
    'nvimtools/none-ls.nvim',
    dependencies = {
      'nvimtools/none-ls-extras.nvim',
      'jayp0521/mason-null-ls.nvim', -- ensure dependencies are installed
    },
    config = function()
      require 'custom.plugins.configs.none-ls'
    end,
  },
  -- text to diagram with d2
  {
    'terrastruct/d2-vim',
    ft = { 'd2' },
  },
  -- markdown, svg, html preview
  {
    'brianhuster/live-preview.nvim',
    dependencies = {
      -- You can choose one of the following pickers
      'nvim-telescope/telescope.nvim',
      'ibhagwan/fzf-lua',
      'echasnovski/mini.pick',
      'folke/snacks.nvim',
    },
  },
  -- jump to matching tag
  {
    'andymass/vim-matchup',
    opts = {
      treesitter = {
        stopline = 500,
      },
      surround = {
        enabled = 1,
      },
      transmute = {
        enabled = 1,
      },
    },
  },
}
return plugins
