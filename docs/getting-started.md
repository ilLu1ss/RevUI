# Inicio rápido

Mínimo para levantar RevUI:

```lua
local RevUI = require(game:GetService("ReplicatedStorage"):WaitForChild("RevUI"))

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

::: tip Espacio para tu screenshot
Pon tu imagen en `docs/public/example.png` y se mostrará aquí:

![preview](/example.png)
:::
