return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["h"] = "close_node",
          ["l"] = "open",
          ["s"] = {
            function()
              require("flash").jump()
            end,
            desc = "flash",
          },
          ["S"] = {
            function()
              require("flash").treesitter()
            end,
            desc = "flash treesitter",
          },
          ["|"] = "open_vsplit",
          ["-"] = "open_split",
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_gitignored = false,
        },
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            -- auto close
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    },
  },
}
