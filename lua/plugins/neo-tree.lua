return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = {
		{ "<leader>e", "<cmd>:Neotree ./ toggle reveal_force_cwd<cr><cr>", desc = "Explorer (cwd)" },
		{ "<leader>E", false },
		{ "<leader>be", false },
	},
	opts = {
		window = {
			mappings = {
				[">"] = "",
				["<"] = "navigate_up",
				["<cr>"] = function(state)
					state.commands["open"](state)
					state.commands["close_window"](state)
				end,
			},
		},
	},
}
