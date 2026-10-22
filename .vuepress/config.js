const { defaultTheme } = require('@vuepress/theme-default')
const { viteBundler } = require('@vuepress/bundler-vite')

module.exports = {
  base: '/', // 用户站点 kennyboris5.github.io 根路径；若是项目页改成 '/<repo>/'
  bundler: viteBundler(),
  locales: {
    '/': {
      lang: 'zh-CN',
      title: '赵渊超 (Linus) · 个人主页',
      description: 'AI × 金融 创业者 / 人工智能专业 · 大三在读',
    },
    '/en/': {
      lang: 'en-US',
      title: 'Zhao Yuanchao (Linus) · Resume',
      description: 'AI × Finance Entrepreneur / AI Major · Junior Year',
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
    footer: 'Copyright © ' + new Date().getFullYear() + ' 赵渊超 (Linus) · Built with VuePress',
  }),
}
