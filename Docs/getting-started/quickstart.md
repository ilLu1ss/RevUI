# Inicio rápido

```lua
local RevUI = require(game:GetService("ReplicatedStorage"):WaitForChild("RevUI"))

-- 1. Ventana
local window = RevUI:CreateWindow({
    title = "Mi Hub",
    author = "tuUsuario",
    version = "1.0",
    icon = "skull",
    theme = "forest",
    toggleKey = Enum.KeyCode.RightShift,
    width = 590,
    height = 480,
})

-- 2. Pestaña (el orden de creación = orden en la sidebar)
local inicio = window:Tab({ name = "Inicio", icon = "home" })

-- 3. Widgets
inicio:Button({
    title = "Hola mundo",
    callback = function()
        RevUI:Notify({ message = "¡Funciona!", type = "success" })
    end,
})
```

Guarda referencias si vas a controlar widgets después:

```lua
local aimbot = inicio:Toggle({ title = "Aimbot", default = false })
aimbot:Set(true)
print(aimbot:Get())
```

![preview](../assets/example.png ':class=example-img')
