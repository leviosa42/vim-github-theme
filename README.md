# vim-github-theme

GitHub's theme for Vim (unofficial).

<!-- dark -->
<details>
<summary>dark</summary>
<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/227714473-0d469702-1469-4f29-9a16-74f69a29fc32.png">
</details>

<!-- light -->
<details>
<summary>light</summary>
<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/227714432-5e96a6f5-b28f-4d80-a870-eedb8a0f1acf.png">
</details>

<!-- dark_dimmed -->
<details>
<summary>dark_dimmed</summary>
<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/227714505-5078a021-ca58-4c88-95c1-43e5d2dfffee.png">
</details>

<!-- dark_colorbind -->
<details>
<summary>dark_colorbind</summary>
<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/228261711-22c8df71-dc78-4cc4-9eeb-d15e386eef5a.png">
</details>

<!-- light_colorbind -->
<details>
<summary>light_colorbind</summary>
<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/228263074-12fba2ea-0ac3-490c-a935-2a916e94b52b.png">
</details>

<!-- dark_high_contrast -->
<details>
<summary>dark_high_contrast</summary>
<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/228262806-1264a1be-fdec-4158-be96-b2449718b497.png">
</details>

<!-- light_high_contrast -->
<details>
<summary>light_high_contrast</summary>
<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/228263281-e897f56b-3a9c-43ce-ba90-f50c2d373412.png">
</details>

<!-- dark_tritanopia -->
<details>
<summary>dark_tritanopia</summary>
<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/228263538-4ed0d05f-b318-4d65-991b-71436f535ace.png">
</details>

<!-- light_tritanopia -->
<details>
<summary>light_tritanopia</summary>
<img width="480" alt="image" src="https://user-images.githubusercontent.com/101305426/228263713-2ebcba7c-6960-4fcf-8ff7-5fe6a3a94dd0.png">
</details>

## Features

- GitHub's theme based on [primer/primitives]
  - dark
  - dark_dimmed
  - dark_colorbind
  - dark_high_contrast
  - dark_tritanopia
  - light
  - light_colorbind
  - light_high_contrast
  - light_tritanopia
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
|`theme`|string|`'dark'`|The flavor of this colorscheme. Available: `'dark'`, `'light'`, `'dark_dimmed'`, `'dark_colorbind'`, `'light_colorbind'`, `'dark_high_contrast'`, `'light_high_contrast'`, `'dark_tritanopia'`, `'light_tritanopia'`|

## ToDo

- [x] More themes(e.g. dark_colorbind)
- [ ] Configurable highlighting
- [ ] Export colorscheme to one file
  
## Licnese
[MIT License](./LICENSE)

[primer/primitives]: https://github.com/primer/primitives
