{pkgs, ...}: {
  vim.startPlugins = [
    pkgs.vimPlugins.vimtex
  ];

  vim.keymaps = [
    {
      key = "<localleader>lk";
      mode = "n";
      action = "<cmd>VimtexCompile<CR>";
      desc = "Compile LaTeX";
    }

    {
      key = "<localleader>lv";
      mode = "n";
      action = "<cmd>VimtexView<CR>";
      desc = "View LaTeX PDF";
    }
    
    {
      key = "<localleader>lt";
      mode = "n";
      action = "<cmd>VimtexTocToggle<CR>";
      desc = "View LaTeX TOC";
    }
  ];

  vim.globals = {
    vimtex_view_method = "zathura";
    vimtex_compiler_method = "latexmk";
  };

  vim.languages.tex = {
    enable = true;

    lsp = {
      enable = true;
      servers = [ "texlab" ];
    };
  };
}
