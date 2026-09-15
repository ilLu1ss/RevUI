# Tab

```lua
local tab = window:Tab({ name = "Combat", icon = "swords" })
```

El orden de creación = orden en la sidebar y en el panel (`UIListLayout`).

## Factory de widgets

Todos devuelven un `element` con sus métodos:

```lua
tab:Button({ title = "..." })
tab:Toggle({ title = "..." })
tab:Slider({ title = "..." })
tab:Dropdown({ title = "..." })
tab:Keybind({ title = "..." })
tab:Input({ title = "..." })
tab:ColorPicker({ title = "..." })
tab:Card({ title = "..." })
tab:Section("Título")      -- o tab:Section({ title = "..." })
tab:HStack({ p = 6 })      -- tab:VStack es alias
tab:Space(8)               -- tab:Space({ p = 8 })
tab:Label("texto")         -- label simple
```

`Section` también crea widgets dentro:

```lua
local sec = tab:Section({ title = "Aim", opened = true })
sec:Toggle({ title = "Enabled" })
sec:Slider({ title = "FOV" })
```

![preview](../assets/example.png ':class=example-img')
