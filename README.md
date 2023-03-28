# vim-github-theme

GitHub's theme for Vim (unofficial).

<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/227714473-0d469702-1469-4f29-9a16-74f69a29fc32.png">

<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/227714432-5e96a6f5-b28f-4d80-a870-eedb8a0f1acf.png">

<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/227714505-5078a021-ca58-4c88-95c1-43e5d2dfffee.png">

## Features

- GitHub's theme based on [primer/primitives]
  - dark
  - dark_dimmed
  - light
- `g:terminal_ansi_colors`
   
## Options

```vim
" default options.
let g:github = {
  \ 'theme': 'dark'
  \ }
```

|Key|Type|Default|Description|
|---|---|---|---|
|`theme`|string|`'dark'`|The flavor of this colorscheme. Available: `'dark'`, `'light'`, `'dark_dimmed'`|

## ToDo

- [ ] More themes(e.g. dark_colorbind)
- [ ] Configurable highlighting
- [ ] Export colorscheme to one file
  
## Licnese
[MIT License](./LICENSE)

[primer/primitives]: https://github.com/primer/primitives
