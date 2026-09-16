# ColorPicker

Selector estilo Roblox Studio

<!-- TODO imagen: sube `docs/public/colorpicker.png` y descomenta la línea de abajo -->
<!-- ![colorpicker](/colorpicker.png) -->

```lua
local cp = tab:ColorPicker({
    title = "Color del glow",
    description = "opcional",
    default = Color3.fromRGB(139, 92, 246),
    callback = function(c) print(c) end,
})
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `default` | `Color3` | `primary` | Color inicial |
| `color` | `Color3` | `nil` | Color |
| `callback` | `function(c)` | `nil` | Solo en OK |
| `compact` | `boolean` | `false` | Botón debajo |

## Métodos

```lua
cp:Set(Color3.fromRGB(255, 0, 0)) -- cp:Set(c, false) = sin callback
print(cp:Get())
```