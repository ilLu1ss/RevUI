# Notifications

Notifications a la derecha.

<!-- TODO imagen: sube `docs/public/notifications.png` y descomenta la línea de abajo -->
<!-- ![notifications](/notifications.png) -->

```lua
RevUI:Notify({ message = "¡Funciona!", type = "success" })

-- max 4 en pantalla
RevUI:Notify({
    title = "Guardado",
    message = "Config aplicada",
    type = "saved",   -- success | error | warning | info | playing | saved
    duration = 3.2,
    onclick = function() print("click") end,
})
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `message` | `string` | `""` | Texto |
| `title` | `string` | según `type` | Título  |
| `type` | `string` | `"info"` | Color + icono |
| `duration` | `number` | `3.2` | Segundos visible |
| `onclick` | `function` | `nil` | CallBack |