---
title: Python environments & packages
layout: post
---

# Python environments & packages

![Image](../images/Screenshot 2024-07-27 at 8.26.42 PM.png)

Example repo: [Example repo]

### Prerequisites:
- OS: Mac OS X
- Homebrew

## pipenv

```sh
brew install pipenv
```

## Install packages

```sh
# Install an example package

pipenv install xerox
```

This creates a `Pipfile` and `Pipfile.lock`. We can add `Pipfile` to Git.

```toml
[[source]]
url = "https://pypi.org/simple"
verify_ssl = true
name = "pypi"

[packages]
xerox = "*"
yt-dlp = {extras = ["default"], version = "*"}

[dev-packages]
yt-dlp = "*"

[requires]
python_version = "3.12"
```

Similarly, you can uninstall with:
```sh
pipenv uninstall xerox
```

## Opening VIM (NeoVIM) with pipenv packages

```sh
pipenv shell
nvim
```

You can use `python` commands (e.g. `python run code-file-name`) in this shell. Also, no need to specify `python3`.

You can exit `pipenv shell` with:
```sh
exit
```

### Python support in NeoVIM (init.lua version)

Assumes NeoVIM has Plug package manager setup.

```lua
-- ~/.config/nvim/init.lua

vim.call('plug#begin', '~/AppData/Local/nvim/plugged')

-- LSPCONFIG
Plug 'neovim/nvim-lspconfig'

vim.call('plug#end')

-- LSP CONFIG - SETUP
require("lspconfig")["pyright"].setup {
  -- npm i -g pyright
}
```

----

[Example repo]: https://github.com/nirlanka/youtube-dl-ytmusic
