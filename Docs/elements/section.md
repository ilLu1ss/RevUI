# Section

Contenedor colapsable con header (icono + título + desc + chevron animado) y contenido.

```lua
-- forma corta
local sec = tab:Section("Mi sección")

-- forma completa
local sec = tab:Section({
    title = "Aim",
    description = "opcional",
    icon = "crosshair",
    opened = true,     -- open | Opened
    box = false,       -- fondo surface2
    border = false,    -- borde
})

sec:Toggle({ title = "Enabled" })
sec:Slider({ title = "FOV" })
sec:Button({ title = "Run" })
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | `"Section"` | Título (o string directo) |
| `description` / `desc` | `string` | `""` | Subtexto |
| `icon` | `string` | `""` | Icono header |
| `opened` | `boolean` | `true` | Expandida |
| `box` | `boolean` | `false` | Fondo en caja |
| `border` | `boolean` | `false` | Borde |

Método: `sec.SetExpanded(bool)`.
