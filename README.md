[![imagecb16fe619f3c244e.png](https://s3.gifyu.com/images/imagecb16fe619f3c244e.png)](https://gifyu.com/image/58oh)

## Installation

### Install Manually

- Add the following line in `~/.config/xplr/init.lua`

  ```lua
  local home = os.getenv("HOME")
  package.path = home
  .. "/.config/xplr/plugins/?/init.lua;"
  .. home
  .. "/.config/xplr/plugins/?.lua;"
  .. package.path
  ```

- Clone the plugin

  ```bash
  mkdir -p ~/.config/xplr/plugins

  git clone https://github.com/sayanarijit/material-landscape2.xplr ~/.config/xplr/plugins/material-landscape2
  ```

- Require the module in `~/.config/xplr/init.lua`

  ```lua
  require("material-landscape2").setup()

  # Or

  require("material-landscape2").setup{
    keep_default_layout = true
  }
  ```
