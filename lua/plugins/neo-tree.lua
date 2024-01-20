local Util = require("lazyvim.util")
local function getNode(state)
	-- get the current node
	local node = state.tree:get_node()
	-- if the node is not a directory, walk up the tree until we find one
	while node and node.type ~= "directory" do
		local parent_id = node:get_parent_id()
		if parent_id == nil then
			-- we must have reached the root node
			-- this should not happen because the root node is always a directory
			-- but just in case...
			node = nil
			break
		end
		node = state.tree:get_node(parent_id)
	end
	return node
end

return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = {
		{ "<leader>be", false },
		{ "<leader>ge", false },
		{ "<leader>fe", false },
		{
			"<leader>t",
			function()
				require("neo-tree.command").execute({ dir = Util.root() })
			end,
			desc = "Explorer Toggle",
		},
		{
			"<leader>e",
			function()
				require("neo-tree.command").execute({})
			end,
			desc = "Explorer Current File",
		},
	},
	opts = {
		filesystem = {
			use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
			follow_current_file = {
				enabled = true, -- This will find and focus the file in the active buffer every time
			},
		},
		window = {
			width = 25,
			mappings = {
				["#"] = "noop",
				[">"] = "noop",
				["[g"] = "noop",
				["]g"] = "noop",
				["w"] = "noop",
				["od"] = "noop",
				["os"] = "noop",
				["D"] = "noop",
				["/"] = "noop",
				-- Mappings
				["<leader>e"] = function()
					vim.cmd("wincmd l")
				end,
				["<leader>t"] = function()
					vim.cmd("wincmd l")
				end,
				["<c-x>"] = "cut_to_clipboard",
				["x"] = "close_node",
				["<"] = "navigate_up",
				-- Search under current cursor folder directory (from neo-tree recipes)
				["F"] = function(state)
					-- if we somehow didn't find a directory, just use the root node
					local node = getNode(state)
					local path = node and node.path or state.path
					require("telescope.builtin").live_grep({
						search_dirs = { path },
						prompt_title = string.format("Grep in [%s]", vim.fs.basename(path)),
					})
				end,
				["f"] = function(state)
					local node = getNode(state)
					local path = node and node.path or state.path
					require("telescope.builtin").find_files({
						search_dirs = { path },
						prompt_title = string.format("Find in [%s]", vim.fs.basename(path)),
					})
				end,
			},
		},
	},
}
