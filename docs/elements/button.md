# Button

`Button` tipico elemento infaltable. 

<!-- TODO imagen: sube `docs/public/button.png` y descomenta la línea de abajo -->
<!-- ![button](/button.png) -->

```lua
tab:Button({
    title = "Hola mundo",
    description = "opcional",
    callback = function() print("click") end,
})
```

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | `""` | Texto principal |
| `description` / `desc` | `string` | `""` | Subtexto  |
| `color` | `Color3` | `surface2` | Fondo |
| `textColor` | `Color3` | auto |  Color de título |
| `icon` / `iconSize` / `iconColor` | `string` / `number` / `Color3` | `nil` / `14` | Icon Lucide |
| `align` | `string` | `"center"` | `left` \| `center` \| `right` |
| `callback` | `function` | `nil` | onClick |

## Métodos

```lua
local b = tab:Button({ title = "Run" })
b:SetText("Nuevo texto") -- alias: SetTitle, Set("text", ...)
b:SetDescription("desc") -- Set("description", ...) / Set("desc", ...)
b:SetColor(Color3.fromRGB(0, 255, 0)) -- nil = reset. Set("color", ...)

print(b:GetText())        -- alias: GetTitle, Get("text"), Get("title")
print(b:GetDescription()) -- Get("description"), Get("desc")
print(b:GetColor())       -- Get("color") → Color3 o nil si no hay custom
print(b:Get())            -- { text, description, color }
```
