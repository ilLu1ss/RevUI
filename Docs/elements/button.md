# Button

Botón de altura fija **50px** (40 x 1.25). La `description` vive dentro, no agranda la fila. Contraste automático contra el fondo.

```lua
tab:Button({
    title = "Hola mundo",
    description = "opcional, no cambia el tamaño",
    icon = "play",          -- nombre Lucide
    iconSize = 14,
    iconColor = Color3.fromRGB(255,255,255),
    color = Color3.fromRGB(139, 92, 246), -- fondo (se suaviza 15%)
    textColor = Color3.fromRGB(255,255,255), -- fuerza color, desactiva contraste
    align = "center", -- left | center | right
    callback = function() print("click") end,
})
```

![preview](../assets/example.png ':class=example-img')

> Pon captura de este elemento en `docs/assets/button.png` y cámbiala aquí:
> `![button](../assets/button.png ':class=example-img')`

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | `""` | Texto principal |
| `description` / `desc` | `string` | `""` | Subtexto (11px, dentro del botón) |
| `color` | `Color3` | `surface2` | Fondo (pasa por `Utils.soften`) |
| `textColor` | `Color3` | auto | Fuerza color de título |
| `icon` | `string` | `nil` | Icono Lucide |
| `iconSize` / `iconColor` | `number` / `Color3` | `14` | Tamaño / color icono |
| `align` | `string` | `"center"` | Alineación |
| `callback` | `function` | `nil` | Click |

## Métodos

```lua
local b = tab:Button({ title = "Run" })
b:SetText("Nuevo texto")   -- b:SetTitle / b:Set("text", ...)
b:SetDescription("desc")   -- b:Set("description", ...)
b:SetColor(Color3.fromRGB(0,255,0)) -- b:Set("color", ...) | nil = reset
print(b:GetText(), b:GetDescription(), b:GetColor())
print(b:Get("text"))
```

