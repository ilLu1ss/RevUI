# Input

Campo de texto redondo (cápsula) a la derecha. El callback se dispara al perder foco.

```lua
local name = tab:Input({
    title = "Nombre",
    placeholder = "Escribe...",
    default = "",
    controlWidth = 160,   -- ancho del campo
    controlHeight = 28,
    radius = UDim.new(1, 0), -- cápsula (default) | UDim.new(0, 8)
    -- round = false,     -- rect de 8px
    callback = function(text, enterPressed) print(text) end,
})
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `placeholder` / `default` | `string` | `""` | Placeholder / valor inicial |
| `controlWidth` / `controlHeight` | `number` | `160 / 28` | Tamaño del campo |
| `radius` | `UDim` | cápsula | Curva |
| `compact` | `boolean` | `false` | Campo debajo (Stack) |
| `callback` | `function` | `nil` | `FocusLost(text, enter)` |

## Métodos

```lua
print(name:Get())
name:Set("hola")
name:OnChanged(function(t) print(t) end)
```
