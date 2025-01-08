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
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    bigfile = {
      enabled = true,
    },
    input = {
      enabled = true,
    },
    scroll = {
      enabled = true,
    },
    terminal = {
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
  },
}
