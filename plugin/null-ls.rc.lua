local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

null_ls.setup({
	sources = {
		null_ls.builtins.diagnostics.eslint_d.with({
			diagnostics_format = "[eslint] #{m}\n(#{c})",
		}),
		null_ls.builtins.diagnostics.rubocop,
		null_ls.builtins.formatting.rubocop,
		null_ls.builtins.formatting.taplo,
    null_ls.builtins.diagnostics.phpcs,
    null_ls.builtins.formatting.phpcbf,
    null_ls.builtins.diagnostics.golangci_lint,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.goimports_reviser
	},
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>")

			-- format on save
			vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
		end

		if client.server_capabilities.documentRangeFormattingProvider then
			vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
		end
	end,
})
