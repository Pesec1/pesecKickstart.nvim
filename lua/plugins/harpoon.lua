return {
  -- NOTE: right now harpoon is broken when trying to open files that have swap
  -- potential fix was introduces in https://github.com/ThePrimeagen/harpoon/pull/575
  -- I have manually changed it in my config

  -- Marks for navigating your project
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  requires = { 'nvim-lua/plenary.nvim' },
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
      mark_branch = true,
    },
  },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED
    --stylua: ignore start
    vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = '[A]dd item in harpoon' })
    vim.keymap.set('n', '<leader>l', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '[L]ist items in harpoon' })

    --NOTE: do not use them right now but maybe in the future
    -- vim.keymap.set('n', '<C-h>', function() harpoon:list():select(1) end)
    -- vim.keymap.set('n', '<C-t>', function() harpoon:list():select(2) end)
    -- vim.keymap.set('n', '<C-n>', function() harpoon:list():select(3) end)
    -- vim.keymap.set('n', '<C-s>', function() harpoon:list():select(4) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function() harpoon:list():prev() end, { desc = 'Go to [P]revious item in harpoon' })
    vim.keymap.set('n', '<C-S-N>', function() harpoon:list():next() end, { desc = 'Go to [N]ext item in harpoon' })
    --stylua: ignore end
  end,
}
