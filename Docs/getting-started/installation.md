# Instalación

## Con Rojo (desarrollo)

El proyecto monta la librería en `ReplicatedStorage.RevUI` vía `default.project.json`:

```bash
rojo serve
```

Conecta desde Studio con el plugin de Rojo.

## Requiriendo la librería

```lua
local RevUI = require(game:GetService("ReplicatedStorage"):WaitForChild("RevUI"))
```

> En Studio se monta en `PlayerGui`; en ejecutores usa `get_hidden_gui()` / `gethui()` / `syn.protect_gui()` si existen, con fallback a `CoreGui`.
