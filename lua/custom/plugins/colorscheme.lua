return {
  {
    'metalelf0/black-metal-theme-neovim',
    lazy = false,
    priority = 1000,
    config = function()
      require('black-metal').setup {
        -- optional configuration here
        favor_treesitter_hl = true,
        dark_gutter = true,
        alt_bg = false,
        plain_float = true,
      }
      -- require('black-metal').load()
      -- vim.cmd.colorscheme 'dark-funeral'
    end,
  },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }
    end,
  },
  { 'bluz71/vim-nightfly-colors', name = 'nightfly', lazy = false, priority = 1000 },
  { 'bluz71/vim-moonfly-colors', name = 'moonfly', lazy = false, priority = 1000 },
  {
    'thehamsti/oscura.nvim',
    lazy = false,
    priority = 1000,
    name = 'oscura',
    config = function()
      require('oscura').setup {
        -- Optional configuration
        italic_comments = true,
        italic_keywords = false,
        italic_functions = false,
        italic_variables = false,
        bold_functions = false,
        bold_keywords = false,
        bold_variables = false,
        underline_variables = false,
        strikethrough_deprecated = true,
        undercurl_diagnostics = true,
        bold_active_tab = true,
        italic_signature_help = true,
        bold_todo = true,
        italic_todo = true,
      }
    end,
  },
  {
    'webhooked/kanso.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      theme = 'zen',
    },
    config = function()
      vim.cmd 'colorscheme kanso-ink'
    end,
  },
}
