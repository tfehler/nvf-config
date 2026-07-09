{
  vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
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
  };
}
