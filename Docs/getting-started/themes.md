# Temas

Aplica un preset por nombre o una tabla de overrides. Todo se repinta **en vivo**.

```lua
-- por nombre
RevUI.SetTheme("midnight")

-- overrides parciales
RevUI.SetTheme({ primary = Color3.fromRGB(255, 100, 100) })
```

Presets incluidos: `dark`, `midnight`, `sunset`, `forest`, `ocean`, `lavender`, `mono`, `candy`, `matrix`, `rose`, `arctic`, `emerald`, `coffee`, `synthwave`.

Claves de paleta: `primary`, `surface`, `surface2`, `text`, `textMuted`, `success`, `danger`, `warning`, `info`, `border`, `black`, `white`, `gray`, `purple`.

## Contraste automático

`Button` (y el resto) calculan luminancia del fondo: si el fondo es claro usan texto oscuro `rgb(18,18,20)` / muted `rgb(64,64,72)`, si no `theme.text` / `theme.textMuted`. Los colores custom se suavizan 15% con `Utils.soften()`.
