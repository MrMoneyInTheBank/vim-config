-- n, v, i, t = mode names

local M = {}

M.customMaps = {
  i = {
    ["jk"] = {"<ESC>", "Go to Normal Mode"},
  },
  n = {
    ["<leader>cop"] = { "<cmd> %y+ <CR>", "Copy whole file" },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<leader>fe"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

return M
