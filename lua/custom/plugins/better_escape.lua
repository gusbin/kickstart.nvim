-- lua with lazy.nvim
return {
  'max397574/better-escape.nvim',
  config = function()
    require('better_escape').setup {
      timeout = vim.o.timeoutlen, -- after `timeout` passes, you can press the escape key and the plugin will ignore it
      default_mappings = false, -- setting this to false removes all the default mappings
      mappings = {
        i = {
          --map kj to exit insert mode
          k = {
            j = '<Esc>',
          },
          j = {
            k = '<Esc>',
            j = '<Esc>',
          },
        },
        -- mode = {
        --     firstkey = {
        --        secondkey = "Escape key", -- make a key press "Escape key"
        --        secondkey = false, -- disable a key
        --     },
        -- }
      },
    }
  end,
}
