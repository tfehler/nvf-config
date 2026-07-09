{
  vim.terminal.toggleterm = {
    enable = true;

    setupOpts = {
      direction = "float";
      start_in_insert = true;
      persist_size = true;
      close_on_exit = true;

      float_opts = {
        border = "rounded";
      };
    };
  };

  vim.keymaps = [
    {
      key = "<leader>tt";
      mode = "n";
      action = "<cmd>ToggleTerm<CR>";
      silent = true;
      desc = "Open terminal";
    }

    {
      key = "<Esc>";
      mode = "t";
      action = "<C-\\><C-n>";
      silent = true;
      desc = "Exit terminal mode";
    }
  ];
}
