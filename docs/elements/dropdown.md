# Dropdown

Lista desplegable.

<!-- TODO imagen: sube `docs/public/dropdown.png` y descomenta la línea de abajo -->
<!-- ![dropdown](/dropdown.png) -->

```lua
local dd = tab:Dropdown({
    title = "Arma",
    description = "opcional",
    options = { "AK", "M4", "AWP" },
    default = "M4",
    callback = function(opt) print(opt) end,
})
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `options` | `{string}` | `{}` | Opciones - lista |
| `default` | `string` | `options[1]` | Selección inicial |
| `color` | `Color3` | `primary` | Resaltado selección |
| `callback` | `function(opt)` | `nil` | Al elegir |


## Métodos

```lua
dd:Set("AWP")            -- solo si existe en options
print(dd:Get())
dd:Refresh({ "A", "B" }) -- cambia opciones
```