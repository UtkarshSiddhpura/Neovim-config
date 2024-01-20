return {
	"echasnovski/mini.bufremove",
	keys = {
		{ "<leader>bd", false },
		{ "<leader>bD", false },
		-- Quick Buffer delete
		{
			"<leader>d",
			function(n)
				require("mini.bufremove").delete(n, false)
			end,
			desc = "Delete Buffer",
		},
	},
}
