{
  vim.keymaps = [
    {
      key = "<leader>gg";
      mode = "n";
      action = "<cmd>lua _LAZYGIT_TOGGLE()<CR>";
      silent = true;
      desc = "LazyGit";
    }
  ];
}
