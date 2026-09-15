<div class="rev-hero">

# RevUI
### UI Library para Roblox 


</div>

![preview](assets/example.png ':class=example-img')

> Pon tu screenshot en `docs/assets/example.png` (560px aprox). Si no existe, se muestra el borde punteado como placeholder.

## Inicio rápido

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
    description = "Mi primer botón",
    callback = function()
        RevUI:Notify({ message = "¡Funciona!", type = "success" })
    end,
})
```

👉 Sigue en [Instalación](getting-started/installation.md) y [Inicio rápido](getting-started/quickstart.md)
