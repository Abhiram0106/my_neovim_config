local lsp_configs = {}

local config_dir = vim.fn.stdpath("config") .. "/lua/lsp"
for _, f in ipairs(vim.fn.globpath(config_dir, "*.lua", false, true)) do
	local server_name = vim.fn.fnamemodify(f, ':t:r')
	if server_name ~= "init" then
		local config = dofile(f)
		vim.lsp.config(server_name, config)
		table.insert(lsp_configs, server_name)
	end
end

vim.lsp.enable(lsp_configs)
