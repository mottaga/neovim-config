-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require('nvim-tree').setup({
    renderer = {
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = false
            },
        },
    },
})

require('nvim-treesitter.configs').setup({
	-- A list of parser names, or "all"
	ensure_installed = { "c", "python" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

	highlight = {
		-- `false` will disable the whole extension
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,

        --custom syntax highlight
        vim.api.nvim_set_hl(0, "@function.builtin", { link = "Function" }),
        vim.api.nvim_set_hl(0, "@constructor", { link = "Function" }),
        vim.api.nvim_set_hl(0, "@parameter", { link = "Normal" }),
        vim.api.nvim_set_hl(0, "@field", { link = "Normal" }),
        vim.api.nvim_set_hl(0, "@variable", { link = "Normal" }),
        vim.api.nvim_set_hl(0, "@constant.builtin", { link = "Normal" }),
        vim.api.nvim_set_hl(0, "@constant", { link = "Normal" }),
	},
})
