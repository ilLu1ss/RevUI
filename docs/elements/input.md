# Input

Input text.

<!-- TODO imagen: sube `docs/public/input.png` y descomenta la línea de abajo -->
<!-- ![input](/input.png) -->

```lua
local name = tab:Input({
    title = "Nombre",
    placeholder = "Escribe...",
    default = "",
    controlWidth = 160,
    controlHeight = 28,
    -- radius = UDim.new(1, 0), -- rounded (default)
    -- round = false,           -- rect de 8px
    callback = function(text, enterPressed) print(text) end,
})
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `placeholder` / `default` | `string` | `""` | Placeholder  |
| `controlWidth` / `controlHeight` | `number` | `160 / 28` | Tamaño del campo |
| `radius` | `UDim` | cápsula | Curva (`number` también vale) |
| `callback` | `function` | `nil` | `FocusLost(text, enter)` |

## Métodos

```lua
print(name:Get())
name:Set("hola")
name:OnChanged(function(t) print(t) end)
```