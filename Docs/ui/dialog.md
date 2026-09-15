# Dialog

Modal de confirmación. Requiere ventana creada. Bloquea input con blocker invisible (sin overlay negro).

```lua
RevUI:Dialog({
    title = "Confirmar",
    message = "¿Aplicar cambios?",
    buttons = {
        { text = "Sí", style = "primary", callback = function()
            print("ok")
        end },
        { text = "No", style = "ghost" },
    },
})
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Descripción |
|------|------|-------------|
| `title` | `string` | Título |
| `message` | `string` | Cuerpo (wrapped) |
| `buttons` | `table` | Lista `{ text, style, callback }` |

Estilos: `"primary"` (default), `"danger"`, `"ghost"`.

Retorna `{ Close(), instance }`.
