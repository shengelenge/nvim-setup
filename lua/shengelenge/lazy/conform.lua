return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				cpp = { "clang_format" },
				javascript = { { "prettierd", "prettier", stop_after_first = true } },
				typescript = { { "prettierd", "prettier", stop_after_first = true } },
				javascriptreact = { { "prettierd", "prettier", stop_after_first = true } },
				typescriptreact = { { "prettierd", "prettier", stop_after_first = true } },
				json = { { "prettierd", "prettier", stop_after_first = true } },
				yaml = { { "prettierd", "prettier", stop_after_first = true } },
				markdown = { { "prettierd", "prettier", stop_after_first = true } },
				html = { { "prettierd", "prettier", stop_after_first = true } },
				css = { { "prettierd", "prettier", stop_after_first = true } },
				scss = { { "prettierd", "prettier", stop_after_first = true } },
				lua = { "stylua" },
				python = { "isort", "black", stop_after_first = true },
				go = { "gopls" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
