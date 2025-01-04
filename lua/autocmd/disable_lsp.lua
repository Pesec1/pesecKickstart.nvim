--NOTE: https://gist.github.com/bnse/a3eb5b9941e6af4582c5406b29d76e05
-- https://www.reddit.com/r/neovim/comments/13wcqdr/disable_hintslsperrors_etc/
return {
  vim.api.nvim_create_user_command('DiagnosticToggle', function()
    local config = vim.diagnostic.config
    local vt = config().virtual_text

    config {
      virtual_text = not vt,
      underline = not vt,
      signs = not vt,
    }

    local cmp = require 'cmp'
    if vt then
      cmp.setup { enabled = false }
    else
      cmp.setup { enabled = true }
    end
  end, { desc = 'toggle diagnostic / autocomplete' }),

  vim.keymap.set('n', '<leader>tl', '<cmd>DiagnosticToggle<CR>'),
}
