---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- Dap
M.dap = {
  n = {
    ['<F5>'] = {
      function()
        require("dap").continue()
      end,
      "Start debugging"
    },
    ['<F10>'] = {
      function()
        require("dap").step_over()
      end,
      "Step over"
    },
    ['<F11>'] = {
      function()
        require("dap").step_into()
      end,
      "Step into"
    },
    ['<F12>'] = {
      function()
        require("dap").step_out()
      end,
      "Step out"
    },
    ['<Leader>.b'] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint"
    },
    ['<Leader>.B'] = {
      function()
        require("dap").set_breakpoint()
      end,
      "Set breakpoint"
    },
    ['<Leader>.C'] = {
      function()
        require("dap").set_breakpoint(nil,nil, vim.fn.input('Breakpoint condition: '))
      end,
      "Set breakpoint Condition"
    },
    ['<Leader>.P'] = {
      function()
        require("dap").set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
      end,
      "Set breakpoint w/ log"
    },
    ['<Leader>.dr'] = {
      function()
        require("dap").repl.open()
      end,
      "Open REPL"
    },
    ['<Leader>.dl'] = {
      function()
        require("dap").run_last()
      end,
      "Run last"
    },
    ['<Leader>.dt'] = {
      function()
        require("dap").debug_test()
      end,
      "Debug test"
    },
    ['<Leader>.dh'] = {
      function()
        require("dap.ui.widgets").hover()
      end,
      "Widget Hover"
    },
    ['<Leader>.dp'] = {
      function()
        require("dap.ui.widgets").preview()
      end,
      "Widget Preview"
    },
    ['<Leader>.df'] = {
      function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.frames)
      end,
      "Widget Center Frames"
    },
    ['<Leader>.ds'] = {
      function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.scopes)
      end,
      "Widget Center Scopes"
    },
  },
  v = {
    ['<Leader>.dh'] = {
      function()
        require("dap.ui.widgets").hover()
      end,
      "Widget Hover"
    },
    ['<Leader>.dp'] = {
      function()
        require("dap.ui.widgets").preview()
      end,
      "Widget Preview"
    },
    ['<Leader>.df'] = {
      function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.frames)
      end,
      "Widget Center Frames"
    },
    ['<Leader>.ds'] = {
      function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.scopes)
      end,
      "Widget Center Scopes"
    },
  },
}

return M
