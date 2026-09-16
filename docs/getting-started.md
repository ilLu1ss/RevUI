# Inicio rápido

Mínimo para usar RevUI:

<!-- TODO imagen: sube `docs/public/example.png` y descomenta la línea de abajo -->
<!-- ![preview](/example.png) -->

```lua
local RevUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ilLu1ss/revui/refs/heads/main/revui.lua"))()

local window = RevUI:CreateWindow({
    title = "Mi Hub",
    author = "tuUsuario",
    theme = "forest",
    toggleKey = Enum.KeyCode.RightShift,
})

local tab = window:Tab({ name = "Inicio", icon = "home" })

tab:Button({
    title = "Hola mundo",
    callback = function()
        RevUI:Notify({ message = "¡Funciona!", type = "success" })
    end,
})
```
