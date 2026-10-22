const { defaultTheme } = require('@vuepress/theme-default')
const { viteBundler } = require('@vuepress/bundler-vite')

module.exports = {
  base: '/', // 用户站点 kennyboris5.github.io 根路径；若是项目页改成 '/<repo>/'
  bundler: viteBundler(),
  locales: {
    '/': {
      lang: 'zh-CN',
      title: 'Linus · 个人主页',
      description: '计算机专业学生 / 开发者 — 量化与桌面应用方向',
    },
    '/en/': {
      lang: 'en-US',
      title: 'Linus · Resume',
      description: 'CS Student / Developer — Quant & Desktop Applications',
    },
  },
  theme: defaultTheme({
    darkmode: 'force', // 强制暗色，契合金融终端质感
    navbar: [
      { text: '中文', link: '/' },
      { text: 'English', link: '/en/' },
    ],
    sidebar: false,
    socialLinks: [
      { icon: 'github', link: 'https://github.com/kennyboris5' },
    ],
    footer: 'Copyright © ' + new Date().getFullYear() + ' Linus · Built with VuePress',
  }),
}
