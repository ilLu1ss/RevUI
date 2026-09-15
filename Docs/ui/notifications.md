# Notifications

Toasts a la derecha con barra de `duration` que se drena. Máximo 4 visibles.

```lua
RevUI:Notify({ message = "¡Funciona!", type = "success" })

RevUI:Notify({
    title = "Guardado",
    message = "Config aplicada",
    type = "saved",   -- success | error | warning | info | playing | saved
    duration = 3.2,
    onclick = function() print("click") end,
})
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `message` | `string` | `""` | Texto principal |
| `title` | `string` | según `type` | Título (auto por tipo si se omite) |
| `type` | `string` | `"info"` | Color + icono |
| `duration` | `number` | `3.2` | Segundos visible |
| `onclick` | `function` | `nil` | Callback al hacer click |

Formas viejas aún válidas: `RevUI.Notify("texto", "success")`.
