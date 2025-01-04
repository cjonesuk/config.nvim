return {
  {
    "rmagatti/auto-session",
    enabled = true,
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      -- log_level = 'debug',
    },

    config = function()
      local auto_session = require("auto-session")

      auto_session.setup({

        auto_save = true,
        auto_restore = true,
        auto_create = false,
        lazy_support = true,

        session_lens = {
          load_on_setup = true,
        },
      })

      vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

      local keymap = vim.keymap

      keymap.set("n", "<leader>wsr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
      keymap.set("n", "<leader>wss", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
      keymap.set("n", "<leader>wsf", "<cmd>SessionSearch<CR>", { desc = "Search for sessions" })
    end,
  },
}
