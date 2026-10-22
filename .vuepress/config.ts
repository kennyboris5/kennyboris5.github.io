import { viteBundler } from '@vuepress/bundler-vite'
import { defaultTheme } from '@vuepress/theme-default'

export default {
  base: '/', // user site root: kennyboris5.github.io
  lang: 'en-US',
  title: 'Zhao Yuanchao (Linus) · Resume',
  description: 'AI × Finance Entrepreneur / AI Major · Junior Year',
  bundler: viteBundler(),
  theme: defaultTheme({
    colorMode: 'dark', // force dark
    navbar: false,
    sidebar: false,
    socialLinks: [
      { icon: 'github', link: 'https://github.com/kennyboris5' },
    ],
    footer: 'Copyright © ' + new Date().getFullYear() + ' Zhao Yuanchao (Linus) · Built with VuePress',
  }),
}
