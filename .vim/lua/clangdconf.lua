require('lspconfig').clangd.setup {
	on_attach = function(client, bufNr)
		local bufopts = {
			noremap = true,
			silent = true,
			buffer = bufNr
		}

		vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
		vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	end
}
