# Slider

El callback **solo** se dispara al soltar (o click), no en cada frame del drag. Durante el arrastre solo se actualiza el visual.

```lua
local fov = tab:Slider({
    title = "FOV",
    min = 30, max = 200, default = 90,
    step = 1, suffix = "°",
    callback = function(v) print(v) end,
})
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `min` / `max` / `default` | `number` | `0 / 100 / min` | Rango y valor inicial |
| `step` | `number` | `1` | Snap |
| `suffix` | `string` | `""` | Sufijo del label (`"°"`, `"x"`) |
| `color` | `Color3` | `primary` | Fill (suavizado) |
| `callback` | `function(v)` | `nil` | Al soltar, si cambió |
| `compact` | `boolean` | `false` | Control debajo (para Stack) |

## Métodos

```lua
fov:Set(120)       -- fov:Set(120, false) = sin callback
print(fov:Get())
```
