return {
  {
    'goolord/alpha-nvim',
    config = function()
      local dashboard = require 'alpha.themes.dashboard'

      local logo = [[                            
      ███████████           █████      ██
     ███████████             █████ 
     ████████████████ ███████████ ███   ███████
    ████████████████ ████████████ █████ ██████████████
   ██████████████    █████████████ █████ █████ ████ █████
 ██████████████████████████████████ █████ █████ ████ █████
██████  ███ █████████████████ ████ █████ █████ ████ ██████
      ]]
      dashboard.section.header.val = vim.split(logo, '\n')

      dashboard.section.buttons.val = {
        dashboard.button('f', ' ' .. ' Find file', '<cmd> Telescope find_files <cr>'),
        dashboard.button('n', ' ' .. ' New file', '<cmd> ene <BAR> startinsert <cr>'),
        dashboard.button('r', ' ' .. ' Recent files', '<cmd> Telescope oldfiles <cr>'),
        dashboard.button('g', ' ' .. ' Find text', '<cmd> Telescope live_grep <cr>'),
        dashboard.button('l', '󰒲 ' .. ' Lazy', '<cmd> Lazy <cr>'),
        dashboard.button('q', ' ' .. ' Quit', '<cmd> qa <cr>'),
      }

      dashboard.opts.layout[1].val = 8

      require('alpha').setup(dashboard.opts)
    end,
  },
}
