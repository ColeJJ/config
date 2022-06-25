local status, telescope = pcall(require, "telescope")
if not status then
  return
end

-- KEYBINDINGS

local map = vim.api.nvim_set_keymap

options = { noremap = true, silent = true }

map('n', ';f', '<cmd>Telescope find_files<cr>', options)
map('n', ';r', '<cmd>Telescope live_grep<cr>', options)
map('n', '\\', '<cmd>Telescope buffers<cr>', options)
map('n', ';;', '<cmd>Telescope help_tags<cr>', options)

local actions = require('telescope.actions')
telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
