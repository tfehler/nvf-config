{
  vim.luaConfigRC.lazygit = ''
    local Terminal = require("toggleterm.terminal").Terminal

    local lazygit = Terminal:new({
      cmd = "lazygit",
      dir = "git_dir",
      hidden = true,
      direction = "float",
    })

    function _LAZYGIT_TOGGLE()
      lazygit:toggle()
    end
  '';
}
