# Card

Tarjeta vertical en 2 zonas: thumb + texto arriba, botones a todo el ancho abajo. Máximo **4 botones**.

```lua
tab:Card({
    title = "Title",
    subtitle = "subtitle", -- o description
    icon = "rbxassetid://...",

    -- thumbs de Roblox:
    -- icon = "user:123" | "asset:123" | "game:123" | "group:123" ...
    size = 3, -- 1..5, default 3

    buttons = {
        { icon = "play", title = "Run", callback = function() end },
        { title = "Ghost", callback = function() end },
        { dropdown = {
            options = { "A", "B" }, default = "A",
            callback = function(opt) end,
        } },
    },
})
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Descripción |
|------|------|-------------|
| `title` | `string` | Título |
| `subtitle` / `description` | `string` | Subtítulo |
| `icon` | `string` | Thumb o asset |
| `size` | `1..5` | Tamaño absoluto |
| `buttons` | `table` | Máx 4: `{ icon, title, color, textColor, iconColor, callback }` o `{ dropdown = {...} }` |
| `border` | `boolean` | Borde |

Botones sin `color`: relleno `surface` + borde `border`, hover → `surface2`. Con `color`: sólido fijo.

## Métodos

```lua
local c = tab:Card({ title = "T" })
c:SetTitle("Nuevo")
c:SetSubtitle("sub")
c:SetIcon("user:1")
c:SetButtons({ ... })
c:SetButton(1, { title = "Go" })
print(c:GetButton(1))
print(c:GetButtons())
c:Set("title", "X")  -- SetProp genérico
print(c:Get("title"))
```
