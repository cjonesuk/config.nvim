return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    enabled = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
      },
    },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            theme = "ivy",
          },
        },
        extensions = {
          fzf = {},
        },
      })

      require("telescope").load_extension("fzf")

      function vim.getVisualSelection()
        vim.cmd('noau normal! "vy"')
        local text = vim.fn.getreg("v")
        vim.fn.setreg("v", {})

        text = string.gsub(text, "\n", "")
        if #text > 0 then
          return text
        else
          return ""
        end
      end

      local tb = require("telescope.builtin")

      vim.keymap.set("n", "<space>fh", tb.help_tags)

      vim.keymap.set("n", "<space>ff", tb.find_files)
      vim.keymap.set("v", "<space>ff", function()
        tb.find_files({ default_text = vim.getVisualSelection() })
      end)

      vim.keymap.set("n", "<space>fF", function()
        require("telescope.builtin").find_files({
          hidden = true,
        })
      end)
      vim.keymap.set("v", "<space>fF", function()
        require("telescope.builtin").find_files({
          hidden = true,
          default_text = vim.getVisualSelection(),
        })
      end)

      vim.keymap.set("n", "<space>fb", require("telescope.builtin").buffers)
      vim.keymap.set("n", "<space>fn", function()
        local opts = require("telescope.themes").get_ivy({
          cwd = vim.fn.stdpath("config"),
        })

        require("telescope.builtin").find_files(opts)
      end)

      vim.keymap.set("n", "<leader>fg", require("custom.telescope.multigrep").live_multigrep)
      vim.keymap.set("v", "<leader>fg", function()
        local opts = require("telescope.themes").get_ivy({
          default_text = vim.getVisualSelection(),
        })
        require("custom.telescope.multigrep").live_multigrep(opts)
      end)

      vim.keymap.set("n", "<space>fc", require("telescope.builtin").resume)
    end,
  },
}
