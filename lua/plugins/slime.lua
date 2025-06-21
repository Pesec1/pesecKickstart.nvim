return {
  -- slime (REPL integration)
  {
    'jpalardy/vim-slime',
    keys = {
      { '<leader>rC', '<cmd>SlimeConfig<cr>', desc = 'Slime Config' },
      { '<leader>rr', '<Plug>SlimeSendCell<BAR>/^# %%<CR>', desc = 'Slime Send Cell' },
      { '<leader>rr', ":<C-u>'<,'>SlimeSend<CR>", mode = 'v', desc = 'Slime Send Selection' },
    },
    config = function()
      vim.g.slime_target = 'tmux'
      vim.g.slime_cell_delimiter = '# %%'
      vim.g.slime_default_config = {
        socket_name = 'default',
        target_pane = '1',
      }
      vim.g.slime_bracketed_paste = 1
    end,
  },
}
