-- lua/lsp/gopls.lua

return {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = { "go.work", "go.mod", ".git" },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true,
			gofumpt = true,
			hints = {
				assignVariableTypes = true,
				compositeLiterals = true,
				constantValues = true,
				functionTypeParameters = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
		},
	},
}
