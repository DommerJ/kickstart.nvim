-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local plugins = {
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    init = function()
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
}
return plugins
