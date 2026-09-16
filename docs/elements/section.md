# Section

Contenedor colapsable: recibe lo mismo que una tab

<!-- TODO imagen: sube `docs/public/section.png` y descomenta la línea de abajo -->
<!-- ![section](/section.png) -->

```lua
local sec = tab:Section("Mi sección")

local sec2 = tab:Section({
    title = "Aim",
    description = "opcional",
    icon = "crosshair",
    opened = true,
    box = false,    -- fondo surface2
    border = false, -- borde
})

sec2:Toggle({ title = "Enabled" })
sec2:Slider({ title = "FOV" })
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | `"Section"` | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `icon` | `string` | `""` | Icono header |
| `opened` | `boolean` | `true` | Expandida (`open`, `Opened`) |
| `box` | `boolean` | `false` | Fondo  |
| `border` | `boolean` | `false` | Borde |

Método: `sec.SetExpanded(bool)`. La section expone los mismos builders que `Tab` (`Button`, `Toggle`, `Slider`, `Dropdown`, `Keybind`, `Input`, `ColorPicker`, `Card`, `HStack`).