# Tab

Contenedor de los elementos. El orden de creación = orden en la sidebar.

<!-- TODO imagen: sube `docs/public/tab.png` y descomenta la línea de abajo -->
<!-- ![tab](/tab.png) -->

```lua
local tab = window:Tab({ name = "Inicio", icon = "home" })

tab:Button({ title = "Hola" })
tab:Toggle({ title = "Aimbot" })
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `name` | `string` | `"Tab"` | Nombre en la sidebar |
| `icon` | `string` | `"circle"` | Icono Lucide |
| `color` | `Color3` | — | Color del icono  |

## Métodos 

Todos reciben su config y devuelven su `element`:

```lua
tab:Button({ title = "..." })
tab:Toggle({ title = "..." })
tab:Slider({ title = "..." })
tab:Dropdown({ title = "...", options = {...} })
tab:Keybind({ title = "..." })
tab:Input({ title = "..." })
tab:ColorPicker({ title = "..." })
tab:Card({ title = "..." })
tab:Section("Título")     -- o tab:Section({...})
tab:HStack({ p = 6 })     -- tab:VStack es alias
tab:Space(8)
tab:Label("texto")
```
