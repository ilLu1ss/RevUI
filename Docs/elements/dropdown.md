# Dropdown

Lista desplegable con animación. Sube su ZIndex sobre todo mientras está abierta (funciona dentro de Stack/Section).

```lua
local dd = tab:Dropdown({
    title = "Arma",
    description = "opcional",
    options = { "AK", "M4", "AWP" },
    default = "M4",
    callback = function(opt) print(opt) end,
})
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `options` | `{string}` | `{}` | Opciones |
| `default` | `string` | `options[1]` | Selección inicial |
| `color` | `Color3` | `primary` | Resaltado selección (suavizado) |
| `callback` | `function(opt)` | `nil` | Al elegir |
| `compact` | `boolean` | `false` | Control debajo (Stack) |

## Métodos

```lua
dd:Set("AWP")              -- solo si existe en options
print(dd:Get())
dd:Refresh({ "A", "B" })   -- cambia opciones
```
