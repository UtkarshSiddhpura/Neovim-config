return {
	"FotiadisM/tabset.nvim",
	event = "BufReadPre",
	config = function()
		require("tabset").setup({
			defaults = {
				tabwidth = 4,
				expandtab = false,
			},
			languages = {
				{
					filetypes = { "yaml", "terraform", "helm", "proto" },
					config = {
						tabwidth = 2,
						expandtab = true,
					},
				},
				{
					filetypes = { "python" },
					config = {
						tabwidth = 4,
						expandtab = true,
					},
				},
				-- {
				-- 	filetypes = {
				-- 		"javascript",
				-- 		"typescript",
				-- 		"javascriptreact",
				-- 		"typescriptreact",
				-- 		"json",
				-- 		"vue",
				-- 		"html",
				-- 	},
				-- 	config = {
				-- 		tabwidth = 4,
				-- 		expandtab = false,
				-- 	},
				-- },
			},
		})
	end,
}
