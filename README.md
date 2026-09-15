# 📚 RevUI — Documentación

**RevUI** es una librería de UI para Roblox con API encadenada, pensada para hubs/scripts

> Filosofía: Simple.


---

## 🪟 `RevUI:CreateWindow(config)`

Crea la ventana principal. Acepta tanto `RevUI:CreateWindow({...})` como `RevUI.CreateWindow({...})`.

| Propiedad    | Tipo                  | Default    | Descripción                                              |
| ------------ | --------------------- | ---------- | -------------------------------------------------------- |
| `title`      | `string`              | `"RevUI"`  | Título en la barra superior y en el floating minimizado. |
| `author`     | `string`              | `""`       | Subtítulo bajo el título.                                |
| `version`    | `string`              | `""`       | Texto centrado en la top bar.                            |
| `icon`       | `string`              | `""`       | Nombre de icono (ver [Iconos](#-iconos)). Aparece junto al título. |
| `theme`      | `string` o `table`    | —          | Nombre de preset (`"dark"`, `"midnight"`, `"sunset"`, `"forest"`) o tabla de overrides. |
| `toggleKey`  | `Enum.KeyCode`        | `nil`      | Tecla para mostrar/ocultar la ventana (ej. `RightShift`).|
| `width`      | `number`              | `590`      | Ancho inicial (mínimo `380`).                            |
| `height`     | `number`              | `480`      | Alto inicial (mínimo `300`).                             |
| `size`       | `Vector2` o `{w, h}`  | —          | Alternativa a `width`/`height`.                          |

### Métodos de la ventana

| Método                    | Descripción                                                        |
| ------------------------- | ------------------------------------------------------------------ |
| `window:Tab(config)`      | Crea una pestaña. Devuelve el objeto `Tab`.                        |
| `window:Minimize()`       | Minimiza a un floating pill arriba y centrado (arrastrable).       |
| `window:Restore()`        | Restaura la ventana minimizada.                                    |
| `window:ToggleMinimize()` | Alterna minimizar/restaurar.                                       |
| `window:SetVisible(bool)` | Muestra/oculta la ventana.                                         |
| `window:Destroy()`        | Destruye la UI y limpia todas las conexiones. Alias: `window.destroy`. |
| `window.gui`              | El `ScreenGui` raíz (por si necesitas acceso directo).             |
| `window.onClose`          | Asigna una función: se llama al pulsar la ✕ antes de destruir.     |

### Comportamiento integrado (no requiere código)

- **Drag**: arrastra desde la top bar (mouse y táctil).
- **Resize**: handle de esquina inferior derecha, fuera del frame (no se recorta).
- **Móvil**: detecta touch y agrega un botón flotante para abrir/cerrar + escala `0.85`.
- **Minimizar**: píldora flotante arriba-centro, con icono y título, arrastrable.

---

## 🗂️ `window:Tab(config)`

| Propiedad | Tipo     | Default    | Descripción                                    |
| --------- | -------- | ---------- | ---------------------------------------------- |
| `name`    | `string` | `"Tab"`    | Nombre de la pestaña.                          |
| `icon`    | `string` | `"circle"` | Nombre de icono de Lucide.                     |
| `color`   | `Color3` | `textMuted`| Color del icono.                               |

```lua
local tab = window:Tab({ name = "Combate", icon = "zap" })
```

- La **primera** tab creada se selecciona automáticamente.
- El orden de los widgets es el orden de creación (UIListLayout automático).
- El panel de contenido es un ScrollingFrame con scroll automático.

---

## 🧩 Widgets

Todos los widgets se crean desde la tab (o desde una sección) y devuelven un objeto con métodos `Set`/`Get` cuando aplica.

### `tab:Button(config)`

| Propiedad  | Tipo       | Default       | Descripción                                   |
| ---------- | ---------- | ------------- | --------------------------------------------- |
| `title`    | `string`   | `""`          | Texto del botón.                              |
| `description` | `string` | `""`        | Subtexto debajo del título (alineado al `align`). **No cambia el tamaño del botón.** |
| `callback` | `function` | `nil`         | Se ejecuta al hacer click.                    |
| `icon`     | `string`   | `nil`         | Icono a la izquierda.                         |
| `iconSize` | `number`   | `14`          | Tamaño del icono.                             |
| `iconColor`| `Color3`   | = `textColor` | Color del icono.                              |
| `color`    | `Color3`   | `surface2`    | Color de fondo del botón.                     |
| `textColor`| `Color3`   | `text`        | Color del texto.                              |
| `align`    | `string`   | `"center"`    | `"left"`, `"center"` o `"right"`.             |
| `border`   | `boolean`  | `false`       | Muestra un borde (`UIStroke`) alrededor de la fila. |

```lua
tab:Button({
    title = "Guardar config",
    icon = "save",
    callback = function() print("guardado") end,
})
-- Métodos: btn:SetText("nuevo texto")
```

### `tab:Toggle(config)`

| Propiedad     | Tipo       | Default     | Descripción                              |
| ------------- | ---------- | ----------- | ---------------------------------------- |
| `title`       | `string`   | `""`        | Título.                                  |
| `description` | `string`   | `""`        | Subtexto opcional.                       |
| `default`     | `boolean`  | `false`     | Estado inicial.                          |
| `color`       | `Color3`   | `primary`   | Color cuando está ON.                    |
| `border`      | `boolean`  | `false`     | Muestra un borde alrededor de la fila.   |
| `callback`    | `function` | `nil`       | `function(nuevoEstado: boolean)`         |

```lua
local aimbot = tab:Toggle({
    title = "Aimbot",
    description = "Apunta automáticamente",
    default = false,
    callback = function(value) print("Aimbot:", value) end,
})

aimbot:Set(true)      -- cambia estado (dispara callback)
aimbot:Set(true, false) -- cambia estado sin disparar callback
aimbot:Get()          -- lee el estado
```

### `tab:Slider(config)`

| Propiedad     | Tipo       | Default | Descripción                            |
| ------------- | ---------- | ------- | -------------------------------------- |
| `title`       | `string`   | `""`    | Título.                                |
| `description` | `string`   | `""`    | Subtexto opcional.                     |
| `min`         | `number`   | `0`     | Valor mínimo.                          |
| `max`         | `number`   | `100`   | Valor máximo.                          |
| `default`     | `number`   | `min`   | Valor inicial.                         |
| `step`        | `number`   | `1`     | Incremento (si `< 1`, muestra decimales). |
| `suffix`      | `string`   | `""`    | Sufijo del valor (ej. `"°"`, `"%"`).   |
| `color`       | `Color3`   | `primary`| Color del relleno.                    |
| `border`      | `boolean`  | `false` | Muestra un borde alrededor de la fila. |
| `callback`    | `function` | `nil`   | `function(valor: number)` (en cada cambio de drag). |

```lua
local fov = tab:Slider({
    title = "FOV",
    min = 30, max = 200, default = 90,
    suffix = "°",
    callback = function(v) print("FOV:", v) end,
})
-- Métodos: fov:Set(120), fov:Get()
```

### `tab:Input(config)`

| Propiedad      | Tipo            | Default    | Descripción                                       |
| -------------- | --------------- | ---------- | ------------------------------------------------- |
| `title`        | `string`        | `""`       | Título.                                           |
| `description`  | `string`        | `""`       | Subtexto opcional.                                |
| `placeholder`  | `string`        | `""`       | Texto de ayuda dentro del campo.                  |
| `default`      | `string`        | `""`       | Texto inicial.                                    |
| `controlWidth` | `number`        | `180`      | Ancho del campo (antes `200` → más aire para la descripción). |
| `radius`       | `number`/`UDim` | cápsula    | Curva del campo. `UDim.new(1, 0)` = redondo; `8` = rect redondeado. |
| `round`        | `boolean`       | `true`     | `false` → vuelve al rect redondeado de 8px.       |
| `compact`      | `boolean`       | `nil`      | `true` → el campo baja debajo del título (lo fuerza `Stack`). |
| `border`       | `boolean`       | `false`    | Borde alrededor de la fila.                       |
| `callback`     | `function`      | `nil`      | `function(texto, enterPressed)` al perder el foco. |

```lua
local nombre = tab:Input({
    title = "Nombre",
    placeholder = "Escribe aquí...",
    callback = function(texto) print("Nombre:", texto) end,
})
-- Métodos: nombre:Get(), nombre:Set("Rev"), nombre:OnChanged(fn)
```

- El campo es **redondo (cápsula)** y vive **a la derecha** de la fila; el texto interno lleva un inset lateral (`UIPadding`) para no cortarse con la curva.
- Dentro de un `Stack` el campo se coloca debajo del título: pasa `compact = false` para mantenerlo a la derecha.

### `tab:Dropdown(config)`

| Propiedad     | Tipo       | Default        | Descripción                            |
| ------------- | ---------- | -------------- | -------------------------------------- |
| `title`       | `string`   | `""`           | Título.                                |
| `description` | `string`   | `""`           | Subtexto opcional.                     |
| `options`     | `table`    | `{}`           | Lista de opciones (strings/valores).   |
| `default`     | `any`      | `options[1]`   | Opción seleccionada inicial.           |
| `color`       | `Color3`   | —              | Color de la fila.                      |
| `border`      | `boolean`  | `false`        | Muestra un borde alrededor de la fila. |
| `callback`    | `function` | `nil`          | `function(opcionElegida)`              |

```lua
local target = tab:Dropdown({
    title = "Parte objetivo",
    options = { "Head", "Torso", "Random" },
    default = "Head",
    callback = function(opt) print("Target:", opt) end,
})
-- Métodos:
--   target:Set("Torso")          -- selecciona (dispara callback)
--   target:Get()                 -- lee la selección
--   target:Refresh({ "A", "B" }) -- reemplaza las opciones
```

- La lista se abre con animación, cierra al click fuera y tiene scroll (máx. ~160px).

### `tab:Keybind(config)`

| Propiedad   | Tipo           | Default | Descripción                                        |
| ----------- | -------------- | ------- | -------------------------------------------------- |
| `title`     | `string`       | `""`    | Título.                                            |
| `default`   | `Enum.KeyCode` | `nil`   | Tecla inicial.                                     |
| `callback`  | `function`     | `nil`   | Se ejecuta **cada vez que se presiona la tecla**.  |
| `onChanged` | `function`     | `nil`   | `function(nuevaTecla)` al rebindear.               |
| `border`    | `boolean`      | `false` | Muestra un borde alrededor de la fila.             |

```lua
tab:Keybind({
    title = "Activar aimbot",
    default = Enum.KeyCode.E,
    callback = function()
        aimbot:Set(not aimbot:Get())
    end,
})
-- Métodos: kb:Set(Enum.KeyCode.F), kb:Get()
```

- Click en el botón → modo captura (`...`). Presiona una tecla para bindear, `Escape` cancela.

### `tab:Section(config)`

Agrupa widgets en un contenedor colapsable. Acepta string directo o tabla.

| Propiedad     | Tipo      | Default     | Descripción                                    |
| ------------- | --------- | ----------- | ---------------------------------------------- |
| `title`       | `string`  | `"Section"` | Título (header clicable para colapsar).        |
| `description` | `string`  | `""`        | Subtexto del header.                           |
| `icon`        | `string`  | `""`        | Icono del header.                              |
| `iconColor`   | `Color3`  | `text`      | Color del icono.                               |
| `box`         | `boolean` | `false`     | Fondo visible (`surface2`).                    |
| `boxBorder`   | `boolean` | `false`     | Borde (requiere `box = true`).                 |
| `opened`      | `boolean` | `true`      | ¿Inicia expandida?                             |
| `textSize`    | `number`  | `13`        | Tamaño del título.                             |
| `textXAlignment` | `string` | `"Left"`  | `"Left"`, `"Center"`, `"Right"`.               |
| `border`      | `boolean` | `false`     | Borde alrededor de la section (funciona con o sin `box`; `boxBorder` solo con `box`). |

**Las secciones exponen los mismos widgets** (`Button`, `Toggle`, `Slider`, `Dropdown`, `Keybind`, `Space`) para crear widgets dentro de ellas:

```lua
local sec = tab:Section({
    title = "Configuración de combate",
    box = true,
    boxBorder = true,
    opened = true,
})

sec:Toggle({ title = "Silent aim", callback = function(v) end })
sec:Slider({ title = "Hitchance", min = 0, max = 100, default = 80 })
sec:Button({ title = "Reset" })
```

- Métodos: `sec:SetExpanded(bool)` para colapsar/expandir por código. También expone `.instance`, `.header`, `.content`.

### `tab:HStack(config)` / `tab:VStack(config)`

Contenedores de fila para agrupar widgets horizontalmente. Ambos funcionan igual (VStack es alias de HStack).

| Propiedad | Tipo     | Default | Descripción                                                      |
| --------- | -------- | ------- | ---------------------------------------------------------------- |
| `p`       | `number` | `6`     | Padding/gap en px entre widgets y filas.                         |
| `perRow`  | `number` | `3`     | Elementos por fila (`1..3`, máx 3). Con 2, cada widget ocupa 1/2 del ancho; con 1, ancho completo. |
| `rows`    | `number` | `1`     | Filas a reservar → capacidad = `rows × perRow` elementos.        |

```lua
-- Fila simple (máx 3 elementos, 1/3 de ancho cada uno):
local row = tab:HStack({ p = 4 })
row:Button({ title = "A", callback = function() end })
row:Button({ title = "B", callback = function() end })
row:Button({ title = "C", callback = function() end })

-- perRow = 2: cada elemento ocupa 1/2 del ancho (no quedan pequeños):
local row = tab:HStack({ p = 4, perRow = 2 })
row:Button({ title = "A" })
row:Button({ title = "B" })

-- perRow = 1: ancho completo por elemento:
local col = tab:VStack({ p = 4, perRow = 1 })

-- Con auto-wrap: rows = 2, perRow = 2 → hasta 4 elementos;
-- al llenar la fila 1, el siguiente baja automáticamente a la fila 2:
local row = tab:HStack({ p = 4, perRow = 2, rows = 2 })
for i = 1, 4 do
    row:Button({ title = "Botón " .. i })
end
```

**Reglas:**
- **Máximo 3 elementos por fila**; el ancho de cada celda se adapta a `perRow` (2 elementos → 1/2 de ancho cada uno).
- Exceder las filas reservadas lanza error (sube `rows` o crea otro stack).
- **No se pueden anidar** stacks (`row:HStack()` lanza error).
- El stack se parenta a la tab (o sección) donde fue creado.
- Devuelve un objeto con los mismos widgets: `Button`, `Toggle`, `Slider`, `Dropdown`, `Keybind`, `Input`, `Card`, `Space`.

### `tab:Card(config)`

Tarjeta **horizontal** estilo "resultado de emote" (como las cards de búsqueda del emote menu), angosta y con 4 botones:


1. **Holder** (altura fija según `size`), 2. **Thumbnail a la izquierda** centrado verticalmente, 3. **Título + subtítulo** al centro, 4. **Separador invisible** (solo estructura), 5. **Grid de botones** a la derecha (2 columnas).

| Propiedad  | Tipo     | Default   | Descripción                                                        |
| ---------- | -------- | --------- | ------------------------------------------------------------------ |
| `title`    | `string` | `"Title"` | Título.                                                            |
| `subtitle` | `string` | `""`      | Subtexto bajo el título (alias: `description`).                    |
| `icon`     | `string` | `nil`     | Imagen del thumbnail (`"rbxassetid://..."`) o icono Lucide.        |
| `size`     | `number` | `3`       | Tamaño absoluto `1..5` → card 64/72/**80**/88/96px de alto.        |
| `border`   | `boolean`| `false`   | Muestra un borde alrededor de la card.                             |
| `buttons`  | `table`  | `{}`      | **Máximo 4** botones (grid 2x2). Exceder lanza error.              |

Cada botón (**exento de la regla del tema**: acepta colores custom; si no se pasan, estilo emote):

| Propiedad   | Tipo       | Default   | Descripción                                                        |
| ----------- | ---------- | --------- | ------------------------------------------------------------------ |
| `text`      | `string`   | `""`      | Texto del botón (se muestra si no hay `icon`).                     |
| `icon`      | `string`   | `nil`     | Icono centrado (Lucide o rbxassetid).                              |
| `color`     | `Color3`   | `nil`     | Color de fondo. Si no se pasa → transparente (estilo emote).       |
| `textColor` | `Color3`   | `text`    | Color del texto.                                                   |
| `iconColor` | `Color3`   | `textColor` | Color del icono.                                                 |
| `callback`  | `function` | `nil`     | Se ejecuta al hacer click.                                         |

```lua

    ═══════════════════════════════════════════════════════════════
    Card.lua — API
    ═══════════════════════════════════════════════════════════════

    local card = tab:Card({ ... })       -- devuelve `element`
    card.instance                        -- Frame raíz de la card

    ───────────────────────────────────────────────────────────────
    PROPIEDADES (config inicial)
    ───────────────────────────────────────────────────────────────
        title     : string
        subtitle  : string   (alias: description, desc)
        icon      : string | number | table
                    - "rbxassetid://123"
                    - "rbxasset://..."
                    - "rbxthumb://type=...&id=...&w=..&h=.."
                    - "user:123" | "player:123" | "player:Nombre"
                    - "asset:123" | "catalog:123" | "item:123"
                    - "bundle:123" | "game:123" | "group:123" | "badge:123"
                    - 12345                     (número → rbxassetid)
                    - { type="avatar", id=123 } (o userId / assetId)
                    - "play"                    (nombre de icono Lucide)
        buttons   : table    (máx 4)
        size      : number 1..5  (default 3)
        border    : boolean      (default false)
        order     : number       (LayoutOrder)

    ───────────────────────────────────────────────────────────────
    FORMATO DE CADA BOTÓN
    ───────────────────────────────────────────────────────────────
        {
            icon      = "play",              -- Lucide / content / "tipo:id"
            title     = "Run",
            callback  = function() end,
            color     = Color3,              -- (opcional) relleno sólido
            textColor = Color3,              -- (opcional)
            iconColor = Color3,              -- (opcional)

            -- O dropdown (no acepta description):
            dropdown = {
                options  = { "A", "B", { title="C", icon="star" } },
                selected = "A",              -- opcional (se autoguarda)
                callback = function(opt) end,
                icon     = "chevron-down",   -- opcional
            },
        }

    Reglas:
      - máx 4 botones (si pasas más → error)
      - color presente → botón sólido, el tema no lo pisa
      - sin color      → surface + borde, hover a surface2
      - dropdown NO lleva callback/title propios (el title = selección actual)

    ───────────────────────────────────────────────────────────────
    MÉTODOS
    ───────────────────────────────────────────────────────────────

    card:SetProp(name, value) -> element
        Cambia UNA prop. Acepta props custom O cualquier prop del Frame.
        Custom: title | subtitle/description/desc | icon | buttons | size | border
        Otro  : se asigna directo al Frame (warn si falla)

    card:SetProps(propsTable) -> element
        Igual que SetProp pero varias a la vez.

    card:Set(key, value) -> element
        Alias flexible de SetProp. Acepta tabla (delega a SetProps).

    card:SetTitle(text)    -> element
    card:SetSubtitle(text) -> element
    card:SetIcon(icon)     -> element
        Atajos de SetProp. SetIcon acepta cualquier formato de `icon`.

    card:SetButtons(buttonsTable) -> element
        Reemplaza TODA la lista de botones (máx 4 o error).

    card:SetButton(index, propsTable) -> element
        Merge PARCIAL sobre un botón. Solo sobreescribe las claves pasadas.
        Re-renderiza solo la grid. Dropdown mantiene su `selected`.

    card:GetButton(index) -> table | nil
        Config REAL (referencia) del botón en ese índice.

    card:GetButtons() -> table
        Copia shallow del array de configs.

    card:Get(key?) -> any
        Sin key : tabla con { title, subtitle, icon, buttons, size, border }
        Con key : valor de esa prop (o card[key] del Frame)

    ───────────────────────────────────────────────────────────────
    EJEMPLO
    ───────────────────────────────────────────────────────────────
        local card = tab:Card({
            title    = "Canción",
            subtitle = "Artista",
            icon     = "music",
            size     = 3,
            border   = false,
            buttons  = {
                { icon="play",  title="Play",  callback=function() end },
                { icon="pause", title="Pause", callback=function() end },
            },
        })

        -- en caliente:
        card:SetTitle("Otra")
        card:SetIcon("player:1")
        card:SetButton(1, { icon="stop", title="Stop" })
        card:SetButtons({ { icon="x", title="Cerrar" } })
        card:SetProp("size", 5)
        card:SetProps({ title="X", border=true })

        -- lectura:
        print(card:Get("title"))
        print(card:GetButton(1).icon)
        for i, b in ipairs(card:GetButtons()) do print(i, b.title) end

        -- encadenable:
        card:SetTitle("Hola"):SetIcon("star"):SetButton(1, { title="Ok" })

        -- instancia:
        card.instance.BackgroundTransparency = 0.5
        card.instance:Destroy()

```

- Sin `color`, los botones quedan **transparentes con solo el icono/texto** (como los botones play/star de las cards de emotes); el hover les da un fondo `surface2` del tema.
- Con `color`, el botón es sólido y fijo (el tema **no** lo pisa).
- El resto de la card (título, subtítulo, thumbnail) **sí sigue el tema** en vivo.
- Su ancho lo define el contenedor: suelta ocupa la tab; en un `HStack` con `perRow = 2` o `3` queda compacta (grid de cards). Para celdas de 1/3 usa `size = 1..2`.

### `tab:Space(config)`

Espaciador flexible. Acepta número o tabla.

```lua
tab:Space(10)               -- 10px de espacio
tab:Space({ p = 8 })        -- alias: padding, size, height, value
```

### `tab:Label(config)`

Texto simple no interactivo. Acepta string directo o tabla.

```lua
tab:Label("Bienvenido a Mi Hub")
tab:Label({ text = "Versión 1.0", color = Color3.fromRGB(255, 100, 100) })
-- Métodos: label:SetText("nuevo texto")
```

---

## 🧷 Grupos automáticos (holders)

Las filas que creas **seguidas** en el mismo contenedor se fusionan solas en un
**solo holder redondeado**. No agrupas nada a mano: si no hay nada que las
separe, se juntan; si metes un `Space`, vuelven a ser individuales.

```lua
tab:Button({ title = "Aimbot" })
tab:Slider({ title = "FOV", min = 30, max = 200 })
tab:Keybind({ title = "Tecla" })   -- estas TRES = un solo cuadro redondo

tab:Space(10)                      -- rompe la regla

tab:Toggle({ title = "ESP" })      -- esta = su propio cuadro
tab:Input({ title = "Nombre" })    -- y se junta con la de arriba
```

- **Participan**: `Button`, `Toggle`, `Slider`, `Keybind`, `Input`.
- **No participan** (y además **cortan** el grupo): `Space`, `Label`, `Card`, `Dropdown`, `HStack`/`VStack` y `Section`.
- Una fila **sola** se ve exactamente como siempre: el holder nace recién cuando aparece el 2º elemento seguido.
- Dentro del holder las filas conservan su hover, su `color` custom y el repintado de tema en vivo; el holder solo aporta la forma (radio + recorte).

```lua
RevUI.Groups.enabled  = false   -- apaga el agrupado (look clásico: una caja por fila)
RevUI.Groups.dividers = false   -- sin la línea de 1px entre filas del grupo
RevUI.Groups.radius   = 12      -- redondeo del holder

tab:Button({ title = "Suelto", group = false })  -- esta fila no se agrupa
```

> El `Dropdown` queda fuera a propósito: su lista abierta se sale del row y el holder la recortaría.

---

## 🔔 Notificaciones — `RevUI:Notify(config)`

| Propiedad  | Tipo       | Default   | Descripción                                        |
| ---------- | ---------- | --------- | -------------------------------------------------- |
| `message`  | `string`   | `""`      | Cuerpo del mensaje.                                |
| `title`    | `string`   | según tipo| Título personalizado.                              |
| `type`     | `string`   | `"info"`  | `"success"`, `"error"`, `"warning"`, `"info"`, `"playing"`, `"saved"`, `"search"`. |
| `duration` | `number`   | `3.2`     | Segundos en pantalla.                              |
| `onclick`  | `function` | `nil`     | Se ejecuta al hacer click (además se descarta).    |

```lua
RevUI:Notify({ message = "Config guardada", type = "success", duration = 2.5 })
RevUI:Notify({ message = "Algo falló", type = "error" })

-- Compatibilidad (también funciona):
RevUI.Notify("mensaje simple")
RevUI.Notify("mensaje", "warning")
```

- Máximo **4 en pantalla**: al llegar al límite, la más vieja se expulsa.
- Aparecen arriba a la derecha con animación de entrada; click para descartar.

---

## 💬 Diálogos — `RevUI:Dialog(config)`

Modal de confirmación. **Requiere haber creado una ventana antes.**

| Propiedad | Tipo     | Default        | Descripción                              |
| --------- | -------- | -------------- | ---------------------------------------- |
| `title`   | `string` | `""`           | Título del diálogo.                      |
| `message` | `string` | `""`           | Mensaje (con wrap).                      |
| `buttons` | `table`  | `{{text="OK"}}`| Lista de botones.                        |

Cada botón:

| Propiedad  | Tipo       | Default      | Descripción                                |
| ---------- | ---------- | ------------ | ------------------------------------------ |
| `text`     | `string`   | `"OK"`       | Texto del botón.                           |
| `style`    | `string`   | `"primary"`  | `"primary"`, `"danger"`, `"ghost"`.        |
| `callback` | `function` | `nil`        | Acción al pulsar (cierra el diálogo antes).|

```lua
RevUI:Dialog({
    title = "Confirmar",
    message = "¿Restablecer toda la configuración?",
    buttons = {
        {
            text = "Sí, restablecer",
            style = "danger",
            callback = function()
                RevUI:Notify({ message = "Config restablecida", type = "warning" })
            end,
        },
        { text = "Cancelar", style = "ghost" },
    },
})
```

- Devuelve `{ Close = function, instance = Frame }` para cerrarlo por código.
- Bloquea clicks en la UI de debajo mientras está abierto.

---

## 🎨 Temas

### Presets incluidos

**14 temas** definidos en `Themes.lua`:

| Tema | Descripción |
| ---- | ----------- |
| `dark` | Default. Morado sobre gris oscuro. |
| `midnight` | Azul índigo profundo. |
| `sunset` | Naranjas cálidos. |
| `forest` | Verde esmeralda oscuro. |
| `ocean` | Azules del mar. |
| `blood` | Rojos intensos. |
| `amethyst` | Lilas suaves. |
| `cyberpunk` | Cian neón + magenta. |
| `gold` | Dorado elegante. |
| `rose` | Rosas/fucsias. |
| `arctic` | Grises fríos claros. |
| `emerald` | Verdes jade. |
| `coffee` | Marrones cálidos. |
| `synthwave` | Púrpuras neón retro. |

```lua
-- Al crear la ventana:
RevUI:CreateWindow({ theme = "midnight" })

-- O en caliente:
RevUI.SetTheme("sunset")         -- alias: RevUI.ApplyTheme, RevUI.Theme.set

-- Con overrides puntuales (repinta TODA la UI en vivo):
RevUI.Theme.set({ primary = Color3.fromRGB(230, 70, 90) })

-- Con una tabla completa:
RevUI.Theme.set({
    primary = Color3.fromHex("#8B5CF6"),
    surface = Color3.fromRGB(15, 15, 20),
    text    = Color3.fromRGB(235, 235, 240),
})
```

### Claves de la paleta

`black`, `border`, `danger`, `gray`, `info`, `primary`, `purple`, `success`, `surface`, `surface2`, `text`, `textMuted`, `warning`, `white`.

```lua
RevUI.Theme.get("primary") -- Color3 actual
RevUI.Colors               -- alias de Theme.palette (acceso directo)
```

> `Theme.set()` muta la paleta in-place y **repinta TODA la UI en vivo, al instante**: ventana, sidebar, tabs (activas/inactivas), botones (sin color custom), toggles, sliders, dropdowns (incluida la lista abierta y opciones seleccionadas), keybinds, secciones, notificaciones, diálogos, hovers y handle de resize. Los colores custom que tú pases (`color = ...`) se respetan y **no** son pisados por el tema. Las claves desconocidas se ignoran. No hace falta cambiar el tema dos veces: un solo `set` actualiza todo.

### API avanzada del tema

```lua
RevUI.Theme.get("primary")       -- lee un color de la paleta
RevUI.Theme.bind(inst, "BackgroundColor3", "surface") -- repinta automático
RevUI.Theme.onChange(function(palette)
    -- se dispara en CADA Theme.set(): úsalo para elementos con estado
    -- (opción seleccionada, tab activa, etc.)
    print("Tema cambiado, primary es ahora", palette.primary)
end, someInstance) -- la instancia es opcional: auto-limpieza al destruirse
```

---

## 🔣 Iconos

RevUI incluye **~1700 iconos estilo Lucide** (generados en `Icons.lua`) como `rbxassetid`. Se referencian por nombre en kebab-case:

```lua
window:Tab({ name = "Inicio", icon = "home" })
tab:Button({ title = "Guardar", icon = "save" })
window:Tab({ icon = "chevron-down" })
```

Algunos nombres útiles: `home`, `settings`, `zap`, `skull`, `save`, `search`, `bell`, `x`, `check`, `info`, `star`, `heart`, `lock`, `key`, `eye`, `crown`, `target`, `crosshair`, `menu`, `move`, `chevron-down`, `circle`, `flame`, `ghost`, `sword`, `user`, `github`, etc.

> Si el nombre no existe, se renderiza vacío (sin error). Explora `src/RevUI/Icons.lua` para ver todos los nombres.

---

## 🏗️ Ejemplo completo

```lua
local RevUI = require(game:GetService("ReplicatedStorage"):WaitForChild("RevUI"))

local window = RevUI:CreateWindow({
    title = "Mi Hub",
    author = "4REVerfold",
    version = "1.0",
    icon = "skull",
    theme = "forest",
    toggleKey = Enum.KeyCode.RightShift,
    width = 453,
    height = 460,
})

local inicio  = window:Tab({ name = "Inicio",  icon = "home" })
local combate = window:Tab({ name = "Combate", icon = "zap" })

-- Sección con caja y borde
local sec = combate:Section({
    title = "Aimbot",
    description = "Ajustes de puntería",
    box = true,
    boxBorder = true,
})

local aimbot = sec:Toggle({
    title = "Activado",
    description = "Apunta automáticamente",
    callback = function(v) print("Aimbot:", v) end,
})

sec:Slider({
    title = "FOV", min = 30, max = 200, default = 90, suffix = "°",
    callback = function(v) print("FOV:", v) end,
})

sec:Dropdown({
    title = "Parte objetivo",
    options = { "Head", "Torso", "Random" },
    callback = function(opt) print("Target:", opt) end,
})

sec:Keybind({
    title = "Toggle rápido",
    default = Enum.KeyCode.E,
    callback = function() aimbot:Set(not aimbot:Get()) end,
})

inicio:Button({
    title = "Probar notificación",
    icon = "bell",
    callback = function()
        RevUI:Notify({ message = "Todo funciona", type = "success", duration = 2.5 })
    end,
})

inicio:Button({
    title = "Diálogo de confirmación",
    icon = "message-square",
    callback = function()
        RevUI:Dialog({
            title = "Confirmar",
            message = "¿Restablecer la configuración?",
            buttons = {
                { text = "Sí", style = "danger", callback = function()
                    RevUI:Notify({ message = "Restablecido", type = "warning" })
                end },
                { text = "No", style = "ghost" },
            },
        })
    end,
})

window.onClose = function()
    print("Cerrando Mi Hub...")
end
```

---

## 🔤 Fuentes (Fonts.lua)

Roblox **eliminó la familia Gotham**: `Gotham`, `GothamMedium`, `GothamBold` y `GothamBlack` fueron removidos (mapean a Montserrat) y `GothamSemibold` fue **borrado del enum** en la v529. Eso rompía RevUI de dos maneras distintas:

- `Font = Enum.Font.GothamSemibold` → el `pcall` de `Components.create` falla y solo se ve un `warn`: la fuente NO se aplica (parece que falla en silencio).
- `Font.new("Gotham", peso)` → `Font family Gotham failed to load: Temp read failed.`

Ahora **ningún** módulo asigna `Font`: se usa `Fonts.lua` (familias que sí existen, vía `FontFace`) con roles semánticos:

| Rol | Peso |
| --- | --- |
| `"title"` | `SemiBold` (600) |
| `"body"` | `Regular` (400) |
| `"bold"` | `Bold` (700) |
| `"medium"` | `Medium` (500) |

```lua
-- en cualquier config de elemento
tab:Button({ title = "Hola", fontRole = "bold" })
tab:Toggle({ title = "Aimbot", fontRole = "title", descFontRole = "medium" })

-- cambiar TODA la UI en vivo (se reaplica a lo ya creado)
RevUI.Fonts.setPreset("builder")   -- builder | montserrat | arimo | roboto | sourcesans
RevUI.Fonts.setFamily("rbxasset://fonts/families/Roboto.json")
RevUI.Fonts.setRole("title", Enum.FontWeight.Bold)

-- a mano sobre una instancia de texto
RevUI.Fonts.apply(miLabel, "title")
miLabel.FontFace = RevUI.Fonts.face("body")
```

Por defecto usa **Montserrat** (`rbxasset://fonts/families/Montserrat.json`), que es exactamente a lo que Roblox mapea el viejo Gotham, así que el look no cambia. Si en tu cliente Montserrat no cargara, `RevUI.Fonts.setPreset("builder")` usa Builder Sans, la fuente propia de Roblox (viene incluida en el cliente).

---

## 📐 Estructura del proyecto

```
revui/
├── default.project.json      # Monta src/RevUI → ReplicatedStorage.RevUI
├── rojo.exe
├── aftman.toml
├── DOCS.md                   # Este archivo
└── src/
    ├── client/
    │   └── init.client.lua   # Ejemplo ejecutable (StarterPlayerScripts)
    └── RevUI/
        ├── Init.lua          # Punto de entrada (API pública)
        ├── Window.lua        # Ventana: drag, resize, minimize, tabs
        ├── Tab.lua           # Objeto tab + factory de widgets
        ├── Elements/         # Button, Toggle, Slider, Dropdown,
        │                     # Keybind, Section, Space
        ├── Notifications.lua # Sistema de toasts
        ├── Dialog.lua        # Modal de confirmación
        ├── Theme.lua         # Paleta + set() con repintado en vivo
        ├── Themes.lua        # Presets: dark, midnight, sunset, forest
        ├── Components.lua    # Primitivas (frame, button, label, icon...)
        ├── ElementKit.lua    # Plantilla de fila estándar de widget
        ├── Fonts.lua         # Familias + roles de fuente (FontRole)
        ├── Icons.lua         # ~1700 iconos Lucide (rbxassetid)
        ├── SpecialKeys.lua   # Utilidades de teclas
        ├── Card.lua          # Componente card
        └── Utils.lua         # Parent seguro, helpers
```

---

## 💡 Buenas prácticas y notas

1. **Crea la ventana primero**: `Dialog` requiere una ventana existente (`assert`).
2. **Guarda referencias** a los widgets que necesites controlar (`aimbot:Set(...)`).
3. **El orden de creación importa**: tabs y widgets se muestran en el orden en que los creas.
4. **`description`** en widgets agranda la fila automáticamente (+12px) — no calcules nada. **Excepción**: en `Button` la descripción se acomoda dentro del botón sin cambiar su tamaño (40px fijo), alineada al `align` del título.
5. **Soporte móvil incluido**: botón flotante y escala automática; los widgets funcionan con touch.
6. **Limpieza de eventos**: toda conexión se desconecta al destruir la ventana; los sliders/keybinds usan conexiones temporales que no quedan zombis.
7. **Mínimos de resize**: `380×300` — diseña tu contenido para ese ancho mínimo.
8. **Compatibilidad de API**: `RevUI:CreateWindow({...})`, `RevUI.CreateWindow({...})`, `RevUI:Notify({...})` y `RevUI.Notify({...})` funcionan igual.
9. **`border = true` en cualquier widget**: Button, Toggle, Slider, Dropdown, Keybind, Input, Section y Card aceptan `border` (default `false`) para mostrar un borde `UIStroke` con el color `border` del tema. En `Section` funciona con o sin `box`.
10. **Sizing inteligente por parent**: los widgets usan escala relativa (`1` de ancho) y se adaptan solos al espacio de su contenedor. El **parent define el área segura**: el contenido de una `Section` recibe un inset de 12px por lado **solo cuando hay borde visible** (`box = true` o `border = true`), así ninguna fila llega hasta el borde del shell. Sin box ni borde el contenido va flush y queda alineado con el resto de la tab. Lo mismo aplica a Stacks y Cards dentro de sections — heredan el inset automáticamente.

---

*RevUI — por 4REVerfold. Documentación generada a partir del código fuente en `src/RevUI`.*
