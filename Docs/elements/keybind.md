# Keybind

Click para capturar tecla nueva. `Escape` cancela.

```lua
local kb = tab:Keybind({
    title = "Activar",
    default = Enum.KeyCode.E,
    callback = function() print("tecla presionada") end,
    onChanged = function(key) print("nueva:", key) end,
})
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | — | Título |
| `description` / `desc` | `string` | `""` | Subtexto |
| `default` | `Enum.KeyCode` | `nil` | Tecla inicial |
| `callback` | `function()` | `nil` | Al presionar la tecla |
| `onChanged` | `function(key)` | `nil` | Al rebindear |
| `compact` | `boolean` | `false` | Botón debajo (Stack) |

## Métodos

```lua
kb:Set(Enum.KeyCode.Q)
print(kb:Get())
```
