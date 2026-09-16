# Toggle

Switch ON / OFF

<!-- TODO imagen: sube `docs/public/toggle.png` y descomenta la línea de abajo -->
<!-- ![toggle](/toggle.png) -->

```lua
local aim = tab:Toggle({
    title = "Aimbot",
    description = "opcional",
    default = false,
    color = Color3.fromRGB(0, 255, 0), -- color ON 
    callback = function(v) print(v) end,
})
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `default` | `boolean` | `false` | Estado inicial |
| `color` | `Color3` | `primary` | Color del track en ON |
| `callback` | `function(v)` | `nil` | Cambio de estado |
| `border` | `boolean` | `false` | Borde|

## Métodos

```lua
aim:Set(true)      -- aim:Set(true, false) = sin callback
print(aim:Get())   -- true | false
```