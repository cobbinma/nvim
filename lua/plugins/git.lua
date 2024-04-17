return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()

      vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { desc = '[G]it [P]review Hunk' })
      vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', { desc = '[G]it [T]oggle Line' })
    end,
  },
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { desc = '[G]it [B]lame' })
      vim.keymap.set('n', '<leader>gd', ':Git diff<CR>', { desc = '[G]it [D]iff' })
      vim.keymap.set('n', '<leader>gs', ':Git<CR>', { desc = '[G]it [S]tatus' })
    end,
  },
}
