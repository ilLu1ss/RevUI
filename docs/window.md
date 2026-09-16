# Window

Ventana principal: Toggle minize, rescalable. 


```lua
local window = RevUI:CreateWindow({
    title = "Mi Hub",
    author = "tuUsuario",
    version = "1.0",
    icon = "skull",
    theme = "forest",
    toggleKey = Enum.KeyCode.RightShift,
    width = 590,   -- mínimo 380
    height = 480,  -- mínimo 300
    -- size = Vector2.new(590, 480), -- alternativa
    -- size = { 590, 480 },          -- alternativa
})
```

Acepta `RevUI:CreateWindow({...})` y `RevUI.CreateWindow({...})`.

## Parámetros

| Prop | Tipo | Default | Descripción |
|------|------|---------|-------------|
| `title` | `string` | `"RevUI"` | Título |
| `author` | `string` | `""` | Subtítulo bajo el título |
| `version` | `string` | `""` | Texto centrado en la top bar |
| `icon` | `string` | `""` | Icono junto al título |
| `theme` | `string \| table` | — | Preset |
| `toggleKey` | `Enum.KeyCode` | `nil` | Tecla mostrar / ocultar |
| `width` / `height` | `number` | `590 / 480` | Tamaño inicial |
| `size` | `Vector2 \| {w,h}` | — | Alternativa a width / height |

## Métodos

| Método | Descripción |
|--------|-------------|
| `window:Tab({ name, icon, color })` | Crea pestaña |
| `window:_selectTab(tab)` | Ir a una tab |
| `window:SetVisible(bool)` | Mostrar / ocultar |
| `window:Minimize()` / `window:Restore()` / `window:ToggleMinimize()` | Minimizar a pill / restaurar |
| `window:SetToggleKey(key)` | Cambia tecla |
| `window:GetToggleKey()` | Tecla actual |
| `window:Destroy()` | Destruye la UI y limpia conexiones |

```lua
local inicio = window:Tab({ name = "Inicio", icon = "home" })
local combat = window:Tab({ name = "Combat", icon = "swords" })

window:_selectTab(combat) -- salta a Combat
print(window._activeTab.name) -- "Combat"
print(#window._tabs)          -- 2

window:SetToggleKey("K")
window:SetVisible(false)
window:Destroy()
```

> `window._tabs` es la lista de tabs, `window._activeTab` la actual, `window.gui` el ScreenGui, `window._content` / `window._sidebar` los contenedores. Son internos pero ahí están si los necesitas.
