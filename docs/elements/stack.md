# Stack (HStack / VStack)

Stackea hasta 3 elementos en una sola fila

<!-- TODO imagen: sube `docs/public/stack.png` y descomenta la línea de abajo -->
<!-- ![stack](/stack.png) -->

```lua
local row = tab:HStack({ p = 6 })
row:Button({ title = "A" })
row:Button({ title = "B" })
row:Button({ title = "C" })

local row2 = tab:HStack({ p = 4, perRow = 2, rows = 2 })
row2:Button({ title = "A" })
row2:Button({ title = "B" })
row2:Toggle({ title = "C" })
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `p` / `padding` / `gap` | `number` | `6` | Gap px |
| `perRow` | `1..3` | `3` | Elementos por fila |
| `rows` | `number` | `1` | Filas reservadas |

