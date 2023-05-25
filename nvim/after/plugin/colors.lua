-- catppuccin
-- require("catppuccin").setup({
--     flavour = "mocha", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--     },
--     transparent_background = true,
--     show_end_of_buffer = false, -- show the '~' characters after the end of buffers
--     term_colors = false,
--     dim_inactive = {
--         enabled = false,
--         shade = "dark",
--         percentage = 0.15,
--     },
--     no_italic = false, -- Force no italic
--     no_bold = false, -- Force no bold
--     styles = {
--         comments = { "italic" },
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--     },
--     color_overrides = {},
--     custom_highlights = {},
--     integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--         notify = false,
--         mini = false,
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
-- })

-- everforest
-- require("everforest").setup({
--   -- Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
--   -- Default is "medium".
--   background = "hard",
--
--   -- How much of the background should be transparent. Options are 0, 1 or 2.
--   -- Default is 0.
--
--   --
--   -- 2 will have more UI components be transparent (e.g. status line
--   -- background).
--   transparent_background_level = 2,
--   -- Whether italics should be used for keywords, builtin types and more.
--   italics = false,
--   -- Disable italic fonts for comments. Comments are in italics by default, set
--   -- this to `true` to make them _not_ italic!
--   disable_italic_comments = false,
-- })

-- nord 
-- Example config in lua
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = true 
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false
-- Load the colorscheme
require('nord').set()

--aquarium
-- -- " On = 1 (default) | Off = 0
-- vim.g.aqua_bold = 1
-- -- " On = 1 | Off = 0 (default)
-- vim.g.aqua_transparency = 0
-- -- " options: "light", "dark"
-- vim.g.aquarium_style="dark"

function ColorMyPencils(color)
	color = color or "nord"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
