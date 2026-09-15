# Stack (HStack / VStack)

Filas de hasta 3 widgets. `VStack` es alias (mismo wrap). No se pueden anidar ni meter Sections dentro.

```lua
local row = tab:HStack({ p = 6 })
row:Button({ title = "A" })
row:Button({ title = "B" })
row:Button({ title = "C" })

-- 2 por fila, 2 filas reservadas
local row2 = tab:HStack({ p = 4, perRow = 2, rows = 2 })
row2:Button({ title = "A" })
row2:Button({ title = "B" })
row2:Toggle({ title = "C" })
row2:Slider({ title = "D" })
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `p` / `padding` / `gap` | `number` | `6` | Gap px |
| `perRow` | `1..3` | `3` | Elementos por fila |
| `rows` | `number` | `1` | Filas reservadas (auto-wrap) |

Widgets con control ancho (Dropdown, Keybind, Input, ColorPicker) entran en modo `compact` automático dentro del Stack (control debajo del título). `compact = false` lo desactiva por widget.
