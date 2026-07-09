{
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

    {
      key = "<leader>gg";
      mode = "n";
      action = "<cmd>Git<CR>";
      desc = "Git";
    }

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
  ];
}
