return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    enabled = true,
    config = function()
      require("nvim-treesitter.configs").setup({
        -- A list of parser names, or "all" (the listed parsers MUST always be installed)
        ensure_installed = {
          "c",
          "lua",
          "javascript",
          "typescript",
          "tsx",
          "vim",
          "vimdoc",
          "query",
          "markdown",
          "markdown_inline",
          "rust",
        },
        auto_install = false,

        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end,
  },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
}
