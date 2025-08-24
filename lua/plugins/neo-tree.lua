return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false,
    config = function()      
      vim.keymap.set('n', '<leader>n', ':Neotree filesystem toggle right<CR>',{})
      vim.keymap.set('n', '<leader>nb', ':Neotree focus<CR>',{})
    end
}
