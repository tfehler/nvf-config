{
  vim = {
    # General editor settings
    globals = {
      mapleader = " ";
      maplocalleader = ",";
    };

    options = {
      number = true;
      relativenumber = true;

      expandtab = true;
      shiftwidth = 4;
      tabstop = 4;

      clipboard = "unnamedplus";

      ignorecase = true;
      smartcase = true;

      wrap = false;
      scrolloff = 8;
    };

    # Colorscheme
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
    };


    #
    # Completion
    #
    autocomplete = {
      nvim-cmp.enable = true;
    };


    #
    # Treesitter syntax highlighting
    #
    treesitter = {
      enable = true;
    };


    #
    # File explorer / fuzzy finding
    #
    telescope = {
      enable = true;
    };


    #
    # Status line
    #
    statusline = {
      lualine = {
        enable = true;
      };
    };

    #
    # Buffer line
    #
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

    #
    # Git integration
    #
    git = {
      enable = true;

      gitsigns = {
        enable = true;

        setupOpts = {
          current_line_blame = true;
          signs_staged_enable = true;
        };
      };

      gitlinker-nvim = {
        enable = true;
      };
    };


    #
    # Language support
    #
    languages = {
      nix = {
        enable = true;
      };

      python = {
        enable = true;

        lsp = {
          enable = true;
          servers = [ "pyright" ];
        };

        # Disable automatic formatting on save
        format.enable = false;
      };

      markdown = {
        enable = true;
      };

      bash = {
        enable = true;
      };
    };


    #
    # Formatting
    #
    formatter = {
      conform-nvim = {
        enable = true;

        # Keep formatting manual
        setupOpts = {
          format_on_save = null;
        };
      };
    };


    #
    # Useful key bindings
    #
    keymaps = [
      {
        key = "<leader>ff";
        mode = "n";
        action = "<cmd>Telescope find_files<CR>";
        silent = true;
        desc = "Find files";
      }

      {
        key = "<leader>fg";
        mode = "n";
        action = "<cmd>Telescope live_grep<CR>";
        silent = true;
        desc = "Search text";
      }

      {
        key = "<leader>gg";
        mode = "n";
        action = "<cmd>Git<CR>";
        silent = true;
        desc = "Git status";
      }

      {
        key = "<Tab>";
        mode = "n";
        action = "<cmd>BufferLineCycleNext<CR>";
        silent = true;
        desc = "Next buffer";
      }

      {
        key = "<S-Tab>";
        mode = "n";
        action = "<cmd>BufferLineCyclePrev<CR>";
        silent = true;
        desc = "Previous buffer";
      }

      {
        key = "<leader>bd";
        mode = "n";
        action = "<cmd>BufferLinePickClose<CR>";
        silent = true;
        desc = "Close selected buffer";
      }
    ];


    #
    # Diagnostics
    #
    diagnostics = {
      enable = true;
    };


    #
    # Miscellaneous
    #
    utility = {
      motion = {
        hop.enable = true;
      };
    };
  };
}
