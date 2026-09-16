# Slider

Slider

<!-- TODO imagen: sube `docs/public/slider.png` y descomenta la línea de abajo -->
<!-- ![slider](/slider.png) -->

```lua
local fov = tab:Slider({
    title = "FOV",
    min = 30, max = 200, default = 90,
    step = 1, suffix = "°",
    callback = function(v) print(v) end,
})
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `min` / `max` / `default` | `number` | `0 / 100 / min` | Rango y valor inicial |
| `step` | `number` | `1` | Snap |
| `suffix` | `string` | `""` | Sufijo (`"°"`, `"x"`) |
| `color` | `Color3` | `primary` | Fill |
| `callback` | `function(v)` | `nil` | Al soltar |

## Métodos

```lua
fov:Set(120)     -- fov:Set(120, false) = sin callback
print(fov:Get())
```