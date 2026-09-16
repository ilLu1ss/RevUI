# Dialog

Dialog con 2 opciones. Cancelar solo lo destruye

<!-- TODO imagen: sube `docs/public/dialog.png` y descomenta la línea de abajo -->
<!-- ![dialog](/dialog.png) -->

```lua
RevUI:Dialog({
    title = "Confirmar",
    message = "¿Aplicar cambios?",
    buttons = {
        { text = "Sí", style = "primary", callback = function() print("ok") end },
        { text = "No", style = "ghost" },
    },
})
```

## Parámetros

| Prop | Tipo | Descripción |
|------|------|-------------|
| `title` | `string` | Título |
| `message` | `string` | Cuerpo |
| `buttons` | `table` | `{ text, style, callback }` por botón |

Estilos: `"primary"` (default), `"danger"`, `"ghost"`. Retorna `{ Close(), instance }`.