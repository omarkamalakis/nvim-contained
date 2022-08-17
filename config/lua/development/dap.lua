-- DEBUGGING
require("trouble").setup {}
require("todo-comments").setup {}

-- Nvim-Dap
local dap = require("dap")
-- UI
require("dapui").setup()

-- Debuggers
-- Chrome Debugger
dap.adapters.chrome = {
    type = "executable",
    command = "node",
    args = {os.getenv("HOME") .. "/Repos/vscode-chrome-debug/out/src/chromeDebug.js"}
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}

dap.configurations.typescriptreact = { -- change to typescript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}/build"
    }
}
-- Chrome must be started before using this debuggers
-- google-chrome-stable --remote-debugging-port=9222

-- Java Debugger
