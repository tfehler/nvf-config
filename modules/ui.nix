{
  vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
    };

    visuals = {
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      fidget-nvim.enable = true;

      highlight-undo.enable = true;
      blink-indent.enable = true;
      indent-blankline.enable = true;
    };

    # Lualine (bottom status line)
    statusline.lualine.enable = true;

    # Bufferline
    tabline = {
      nvimBufferline = {
        enable = true;

        setupOpts = {
          options = {
            diagnostics = "nvim_lsp";
            always_show_bufferline = true;
            separator_style = "slant";
            offsets = [
              {
                filetype = "NvimTree";
                text = "File Explorer";
                highlight = "Directory";
                separator = true;
              }
            ];
            show_buffer_close_icons = true;
            show_close_icon = true;
            color_icons = true;
          };
        };
      };
    };

    # Neotree file explorer
    filetree.neo-tree.enable = true;

    keymaps = [
      {
        key = "<Tab>";
        mode = "n";
        action = "<cmd>BufferLineCycleNext<CR>";
      }

      {
        key = "<S-Tab>";
        mode = "n";
        action = "<cmd>BufferLineCyclePrev<CR>";
      }

      {
        key = "<leader>E";
        mode = "n";
        action = "<cmd>Neotree toggle<CR>";
        desc = "Toggle Neotree explorer";
      }
    ];
  };
}
