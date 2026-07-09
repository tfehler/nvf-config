{
  vim.languages.python = {
    enable = true;

    lsp = {
      enable = true;
      servers = [ "pyright" ];
    };

    format.enable = false;
  };
}
