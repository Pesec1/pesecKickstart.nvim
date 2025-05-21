--NOTE: disable for now, because it feels like it is not suitable for my workflow and it is not used enough
return {
  'jiaoshijie/undotree',
  dependencies = 'nvim-lua/plenary.nvim',
  config = true,
  keys = {
    { '<leader>u', "<cmd>lua require('undotree').toggle()<cr>" },
  },
}
