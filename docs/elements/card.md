# Card

Tarjeta vertical en 2 zonas: thumb + texto arriba, botones a todo el ancho abajo. Máximo **4 botones**.

<!-- TODO imagen: sube `docs/public/card.png` y descomenta la línea de abajo -->
<!-- ![card](/card.png) -->

```lua
tab:Card({
    title = "Title",
    subtitle = "subtitle", -- o description
    icon = "rbxassetid://...",
    -- thumbs: "user:123" | "asset:123" | "game:123" | "group:123" ...
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

## Parámetros

| Prop | Tipo | Descripción |
|------|------|-------------|
| `title` | `string` | Título |
| `subtitle` / `description` | `string` | Subtítulo |
| `icon` | `string` | Thumb o asset |
| `size` | `1..5` | Tamaño absoluto |
| `buttons` | `table` | Máx 4: `{ icon, title, color, textColor, iconColor, callback }` o `{ dropdown = {...} }` |
| `border` | `boolean` | Borde |

Sin `color`: relleno `surface` + borde `border`, hover a `surface2`. Con `color`: sólido fijo.

## Métodos

```lua
local c = tab:Card({ title = "T" })
c:SetTitle("Nuevo")              -- Set("title", ...)
c:SetSubtitle("sub")             -- Set("subtitle", ...) / Set("description", ...)
c:SetIcon("user:1")              -- Set("icon", ...)
c:SetButtons({ ... })            -- reemplaza los 4 (Set("buttons", ...))
c:SetButton(1, { title = "Go" }) -- mergea props solo en ese botón

print(c:GetButton(1))   -- config del botón 1 (o nil si fuera de rango)
print(c:GetButtons())   -- copia de la tabla de botones
print(c:Get("title"))   -- Get("subtitle"), Get("icon"), Get("buttons"), Get("size"), Get("border")
print(c:Get())          -- { title, subtitle, icon, buttons, size, border }
```