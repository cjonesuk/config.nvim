return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  enabled = true,
  dependencies = {
    {
      "folke/edgy.nvim",
      event = "VeryLazy",
      opts = {},
    },
  },
  ---@type snacks.Config
  opts = {
    lazygit = {
      enabled = true,
    },
    bigfile = {
      enabled = true,
    },
    input = {
      enabled = true,
    },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    picker = {
      enabled = true,
      layout = "ivy",
    },
    scroll = {
      enabled = true,
    },
    terminal = {
      enabled = true,
    },
    zen = {
      enabled = true,
    },
  },
  keys = {
    {
      "<leader>gg",
      function()
        Snacks.lazygit()
      end,
      desc = "Lazygit",
    },
    {
      "<leader>gb",
      function()
        Snacks.git.blame_line()
      end,
      desc = "Git Blame line",
    },
    {
      "<leader>gB",
      function()
        Snacks.gitbrowse()
      end,
      desc = "Git Browse",
      mode = { "n", "v" },
    },
    {
      "<leader><space>",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find Files",
    },
    {
      "<s-h>",
      function()
        Snacks.picker.buffers({
          -- Start in normal mode
          on_show = function()
            vim.cmd.stopinsert()
          end,
        })
      end,
      desc = "Buffers",
    },
    {
      "<leader>fc",
      function()
        Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "Find Config File",
    },
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fg",
      function()
        Snacks.picker.git_files()
      end,
      desc = "Find Git Files",
    },
    {
      "<leader>fm",
      function()
        Snacks.picker.marks({
          -- Start in normal mode
          on_show = function()
            vim.cmd.stopinsert()
          end,
        })
      end,
      desc = "Marks",
    },
    {
      "<leader>fp",
      function()
        Snacks.picker.projects()
      end,
      desc = "Projects",
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.recent()
      end,
      desc = "Recent",
    },
    {
      "<leader>sr",
      function()
        Snacks.picker.resume()
      end,
      desc = "Resume",
    },
    {
      "<leader>sf",
      function()
        Snacks.picker.grep()
      end,
      desc = "Search Files (Grep)",
    },
    {
      "<leader>sc",
      function()
        Snacks.picker.command_history()
      end,
      desc = "Command History",
    },
    {
      "<leader>sC",
      function()
        Snacks.picker.commands()
      end,
      desc = "Commands",
    },
    {
      "<leader>sd",
      function()
        Snacks.picker.diagnostics()
      end,
      desc = "Diagnostics",
    },
    {
      "<leader>sD",
      function()
        Snacks.picker.diagnostics_buffer()
      end,
      desc = "Buffer Diagnostics",
    },
    {
      "<c-/>",
      function()
        Snacks.terminal()
      end,
      desc = "Toggle Terminal",
    },
    {
      "<c-_>",
      function()
        Snacks.terminal()
      end,
      desc = "which_key_ignore",
    },
    {
      "<leader>z",
      function()
        Snacks.zen.zoom({
          toggles = {
            dim = false,
          },
          win = {
            width = 240,
          },
        })
      end,
      desc = "Toggle Zoom",
    },
    {
      "<leader>Z",
      function()
        Snacks.zen({
          toggles = {
            dim = false,
          },
          win = {
            width = 0,
          },
        })
      end,
      desc = "Toggle Zen mode",
    },
  },
}
