local formatter = { "prettier" }

return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			["javascript"] = formatter,
			["javascriptreact"] = formatter,
			["typescript"] = formatter,
			["typescriptreact"] = formatter,
			["vue"] = formatter,
			["css"] = formatter,
			["scss"] = formatter,
			["less"] = formatter,
			["html"] = formatter,
			["json"] = formatter,
			["jsonc"] = formatter,
			["yaml"] = formatter,
			["markdown"] = formatter,
			["markdown.mdx"] = formatter,
			["graphql"] = formatter,
			["handlebars"] = formatter,
			proto = { "buf" },
			["python"] = { "black" },
		},
	},
}
