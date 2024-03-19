local M = {}

M.adapter = {
    type = "executable",
    command = "/usr/bin/python3",
    args = {
        "-m",
        "debugpy.adapter",
    },
}

M.config = {
    {
        type = "python",
        request = "launch",
        name = "Launch",
        program = "${file}",
    }
}

return M
