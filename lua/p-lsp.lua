local opts = {noremap=true, silent=true}
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

local on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd','<cmd>Telescope lsp_definitions<cr>' , opts)
    vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>d','<cmd>Telescope lsp_document_symbols<cr>' , opts)
-- format on save
   vim.api.nvim_create_autocmd('BufWritePre', {
	group=vim.api.nvim_create_autogroup('LspFormatting', {clear=true}),
	buffer = bufnr, 
	callback=function()
		vim.lsp.buf.format()
	end
   })
end

  local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_config={
  capabilities = capabilities,
	on_attach=function(client, bufnr)
		on_attach(_, bufnr)
	end
}


require('mason-lspconfig').setup_handlers({
	function(server_name)
		require('lspconfig')[server_name].setup()
	end,
	lua_ls=function()
		require('lspconfig').lua_ls.setup(vim.tbl_extend('force', lsp_config, {
			settings={
				Lua={
					diagnostics={
						globals={'vim'}
					}
				}
			}
		}))
	end
})
