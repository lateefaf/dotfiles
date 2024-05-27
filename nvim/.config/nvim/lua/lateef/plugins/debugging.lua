return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap-python",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local keymap = vim.keymap

		require("dap-python").setup("~/.venvs/debugpy/bin/python")
		require("dapui").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end

		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end

		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.open()
		end

		dap.listeners.before.event_exited.dapui_config = function()
			dapui.open()
		end

		keymap.set("n", "<leader>bt", function()
			dap.toggle_breakpoint()
		end, { desc = "Breakpoint toggle" })
		keymap.set("n", "<leader>bc", function()
			dap.continue()
		end, { desc = "Debug- continue" })
		keymap.set("n", "<leader>bso", function()
			dap.step_over()
		end, { desc = "Debug- step over" })
		keymap.set("n", "<leader>bsi", function()
			dap.step_into()
		end, { desc = "Debug- step into" })
		keymap.set("n", "<leader>bsot", function()
			dap.step_out()
		end, { desc = "Debug- step out" })
		--What does this mean
		keymap.set("n", "<Leader>lp", function()
			dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
		end)
		keymap.set("n", "<Leader>br", function()
			dap.repl.open()
		end, { desc = "Debug- step out" })
		keymap.set("n", "<Leader>bl", function()
			dap.run_last()
		end, { desc = "Debug- run last" })
		-- keymap.set({ "n", "v" }, "<Leader>dh", function()
		-- 	require("dap.ui.widgets").hover()
		-- end)
		-- keymap.set({ "n", "v" }, "<Leader>dp", function()
		-- 	require("dap.ui.widgets").preview()
		-- end)
		-- keymap.set("n", "<Leader>df", function()
		-- 	local widgets = require("dap.ui.widgets")
		-- 	widgets.centered_float(widgets.frames)
		-- end)
		-- keymap.set("n", "<Leader>ds", function()
		-- 	local widgets = require("dap.ui.widgets")
		-- 	widgets.centered_float(widgets.scopes)
		-- end)
	end,
}
