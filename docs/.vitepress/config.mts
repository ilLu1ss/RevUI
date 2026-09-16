import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: 'RevUI',
  description: 'UI Library para Roblox — simple, rápida y declarativa.',
  base: '/revui/', // <-- CAMBIA ESTO al nombre de tu repo en GitHub

  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    logo: '/logo.png',
    nav: [
      { text: 'Inicio', link: '/' },
      { text: 'Guía', link: '/getting-started' },
      { text: 'API', link: '/window' },
    ],

    sidebar: [
      {
        text: 'Guía',
        items: [
          { text: 'Inicio rápido', link: '/getting-started' },
          { text: 'Instalación', link: '/installation' },
          { text: 'Temas', link: '/themes' },
        ],
      },
      {
        text: 'UI',
        items: [
          { text: 'Window', link: '/window' },
          { text: 'Tab', link: '/tab' },
          { text: 'Notifications', link: '/notifications' },
          { text: 'Dialog', link: '/dialog' },
        ],
      },
      {
        text: 'Elementos',
        items: [
          { text: 'Button', link: '/elements/button' },
          { text: 'Toggle', link: '/elements/toggle' },
          { text: 'Slider', link: '/elements/slider' },
          { text: 'Dropdown', link: '/elements/dropdown' },
          { text: 'Input', link: '/elements/input' },
          { text: 'Keybind', link: '/elements/keybind' },
          { text: 'ColorPicker', link: '/elements/colorpicker' },
          { text: 'Card', link: '/elements/card' },
          { text: 'Section', link: '/elements/section' },
          { text: 'Stack', link: '/elements/stack' },
          { text: 'Space', link: '/elements/space' },
        ],
      },
    ],

    socialLinks: [
      // { icon: 'github', link: 'https://github.com/TU-USUARIO/revui' },
    ],

    search: { provider: 'local' },
  },
})
