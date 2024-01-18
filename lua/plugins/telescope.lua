return {
	"nvim-telescope/telescope.nvim",
	keys = {
		{ '<leader>s"', false },
		{ "<leader>sa", false },
		{ "<leader>sc", false },
		{ "<leader>sC", false },
		{ "<leader>sd", false },
		{ "<leader>sD", false },
		{ "<leader>sH", false },
		{ "<leader>sM", false },
		{ "<leader>so", false },
		{ "<leader>sR", false },
		{ "<leader>sS", false },
		{ "<leader>ss", false },
		{ "<leader>sT", false },
		{ "<leader>sw", false },
		{ "<leader>sW", false },
    --remaps
		{ "<leader>ff", "<leader><space>", desc = "Find Files (Git/Root)", remap = true },
		{ "<leader>fs", "<leader>sG", desc = "Grep (cwd)", remap = true },
		{ "<leader>fS", "<leader>sg", desc = "Grep (root)", remap = true },
	},
}
