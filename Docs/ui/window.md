# Window

Crea la ventana principal. Acepta `RevUI:CreateWindow({...})` y `RevUI.CreateWindow({...})`.

```lua
local window = RevUI:CreateWindow({
    title = "Mi Hub",
    author = "tuUsuario",
    version = "1.0",
    icon = "skull",
    theme = "forest", -- nombre de preset o tabla
    toggleKey = Enum.KeyCode.RightShift,
    width = 590,   -- min 380
    height = 480,  -- min 300
    -- size = Vector2.new(590, 480), -- alternativa
    -- size = { 590, 480 },          -- alternativa
})
```

![preview](../assets/example.png ':class=example-img')

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | `"RevUI"` | Título top bar + floating minimizado |
| `author` | `string` | `""` | Subtítulo bajo el título |
| `version` | `string` | `""` | Texto centrado en la top bar |
| `icon` | `string` | `""` | Nombre de icono (Lucide) |
| `theme` | `string \| table` | — | Preset o overrides |
| `toggleKey` | `Enum.KeyCode` | `nil` | Tecla mostrar/ocultar |
| `width` / `height` | `number` | `590 / 480` | Tamaño inicial |
| `size` | `Vector2 \| {w,h}` | — | Alternativa a width/height |

## Métodos

| Método | Descripción |
|--------|-------------|
| `window:Tab({ name, icon, color })` | Crea pestaña, devuelve `Tab` |
| `window:SetVisible(bool)` | Mostrar / ocultar |
| `window:Minimize()` / `window:Maximize()` | Minimizar / restaurar |
| `window:SetToggleKey(key)` | Cambia tecla en caliente (`Enum`, `string` o `number`) |
| `window:GetToggleKey()` | Tecla actual |
| `window:Destroy()` | Destruye la UI y limpia conexiones |

```lua
window:SetToggleKey("K")
window:SetVisible(false)
```
