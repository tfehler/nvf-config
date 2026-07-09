{
  vim.languages.python = {
    enable = true;

    lsp = {
      enable = true;
      servers = [ "basedpyright" ];
    };

    format.enable = false;
  };
}
