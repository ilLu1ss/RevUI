# ColorPicker

Selector con popup modal (área 2D hue/sat + barra value + RGB/HEX). Callback **solo** al presionar OK. Cancel, click fuera y `Escape` descartan.

```lua
local cp = tab:ColorPicker({
    title = "Color del glow",
    description = "opcional",
    default = Color3.fromRGB(139, 92, 246),
    callback = function(c) print(c) end,
})
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `default` | `Color3` | `primary` | Color inicial |
| `color` | `Color3` | `nil` | Color de la fila (suavizado) |
| `callback` | `function(c)` | `nil` | Solo en OK |
| `compact` | `boolean` | `false` | Botón debajo (Stack) |

## Métodos

```lua
cp:Set(Color3.fromRGB(255, 0, 0)) -- cp:Set(c, false) = sin callback
print(cp:Get())
```
