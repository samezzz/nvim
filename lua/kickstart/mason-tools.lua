-- NOTE: be sure tools are assigned in nvim-lint, nvim-dap, and conform.nvim

local ensure_installed = {}

local function add_tool(command, tools)
	if vim.fn.executable(command) == 1 then
		vim.list_extend(ensure_installed, tools)
	end
end

add_tool('bash', {
	-- Linters
	'shellcheck'
})

add_tool('npm', {
	-- Formatters
	'prettier',
	-- Linters
	'eslint_d',
	'textlint',
	'markdownlint',
	-- DAP
	'js-debug-adapter',
	-- LSPs
	'mdx_analyzer'
})

add_tool('cargo', {
	-- Formatters
	'shellharden',
})

add_tool('python3', {
	-- Formatters
	'black',
	'isort',
	'autopep8',
	'autoflake',
	-- Linters
	'flake8',
	'proselint',
	'cpplint'
})

add_tool('dotnet', {
	-- Formatters
	'csharpier'
})

add_tool('dcm', {
	-- DAP
	'dart-debug-adapter'
})

add_tool('ast-grep', {
	'ast-grep'
})

add_tool('trivy', {
	'trivy'
})

add_tool('go', {
	-- Formatters
	'gofumpt',
	'goimports',
	-- Linters
	'golangci-lint',
	-- DAP
	'delve',
	-- Gopher.nvim
	'gomodifytags',
	'gotests',
	'iferr',
	'impl'
})

add_tool('docker', {
	-- LSPs
	'dockerls',
	'docker_compose_language_service'
})

add_tool('templ', {
	-- LSP/Analyzer
	'templ'
})

add_tool('marksman', {
	-- Markdown LSP
	'marksman'
})

add_tool('taplo', {
	-- TOML LSP
	'taplo'
})

add_tool('buf', {
	-- Protobuf tools
	'buf',
	'protolint'
})

add_tool('cpptools', {
	-- C/C++ debugger tools
	'cpptools'
})

return ensure_installed
