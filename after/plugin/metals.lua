metals_config = require("metals").bare_config()
metals_config.settings = {
	showImplicitArguments = true,
	excludedPackages = {
		"akka.actor.typed.javadsl",
		"com.github.swagger.akka.javadsl",
	},
}
metals_config.init_options.statusBarProvider = "on"

local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "scala", "sbt", "java" },
	callback = function()
		require("metals").initialize_or_attach({ metals_config })
		require("metals").setup_dap()
	end,
	group = nvim_metals_group,
})

vim.o.shortmess = string.gsub(vim.o.shortmess, "F", "") .. "c"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

metals_config.capabilities = capabilities
