return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    enabled = true,
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

      vim.keymap.set("n", "<space>fh", require("telescope.builtin").help_tags)
      vim.keymap.set("n", "<space>ff", require("telescope.builtin").find_files)
      vim.keymap.set("n", "<space>fF", function()
        require("telescope.builtin").find_files({
          hidden = true,
        })
      end)
      vim.keymap.set("n", "<space>fb", require("telescope.builtin").buffers)
      vim.keymap.set("n", "<space>fn", function()
        local opts = require("telescope.themes").get_ivy({
          cwd = vim.fn.stdpath("config"),
        })

        require("telescope.builtin").find_files(opts)
      end)

      require("custom.telescope.multigrep").setup(require("telescope.themes").get_ivy())
    end,
  },
}
