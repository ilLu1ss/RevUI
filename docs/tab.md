# Tab

Contenedor de elementos. Orden de creación = orden codeada


```lua
local inicio = window:Tab({ name = "Inicio", icon = "home" })
local combat = window:Tab({ name = "Combat", icon = "swords" })

inicio:Button({ title = "Hola" })
combat:Toggle({ title = "Aimbot" })

-- ir a una tab
window:_selectTab(combat)
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `name` | `string` | `"Tab"` | Nombre  |
| `icon` | `string` | `"circle"` | Icono Lucide |
| `color` | `Color3` | — | Color del icono  |

## Métodos

Todos reciben su config y devuelven su `element`.

```lua
tab:Button({ title = "..." })
tab:Toggle({ title = "..." })
tab:Slider({ title = "..." })
tab:Dropdown({ title = "...", options = {...} })
tab:Keybind({ title = "..." })
tab:Input({ title = "..." })
tab:ColorPicker({ title = "..." })
tab:Card({ title = "..." })
tab:Section("Título")     -- o tab:Section({...}), devuelve section con sus builders
tab:HStack({ p = 6 })     -- tab:VStack es alias, devuelve stack (Button, Toggle, ...)
tab:Space(8)              -- tab:Space({ p = 8 })
tab:Label("texto")        -- tab:Label({ text = "...", color = ... }) → { instance, SetText }
```

## Propiedades útiles del objeto Tab

```lua
print(tab.name)    -- "Inicio"
tab.panel          -- ScrollingFrame del contenido
tab.button         -- TextButton de la sidebar
tab.icon           -- ImageLabel del icono
tab._window        -- la window dueña
tab._order         -- contador interno de LayoutOrder
```
