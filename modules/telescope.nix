{
  vim.telescope.enable = true;

  vim.keymaps = [
    {
      key = "<leader>ff";
      mode = "n";
      action = "<cmd>Telescope find_files<CR>";
      desc = "Find files";
    }

    {
      key = "<leader>fg";
      mode = "n";
      action = "<cmd>Telescope live_grep<CR>";
      desc = "Live grep";
    }
  ];
}
