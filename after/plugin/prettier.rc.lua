local status, prettier = pcall(require, "prettier")
if not status then
	return
end

prettier.setup({
	bin = "prettier",
	filetypes = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
		"vue",
	},
	cli_options = {
		config_precedence = "prefer-file",
	},
})
