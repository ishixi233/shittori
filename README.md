# Shittori しっとり · 笔记与输入法主题

为自己设计的一套主题，用于 Typora、Obsidian、macOS 鼠须管（Squirrel）和 Android 同文（Trime）。笔记主题以中文为主，兼顾英文和少量日文，面向金融、技术、机器学习笔记和文学哲学随笔；输入法皮肤延续相同的暖纸白、松叶绿与深色蓝灰配色。

名字取自日语「しっとり」：润泽、沉静、不张扬。罗马字里双写的 t 是促音，不能省。

设计上只有三条原则：

1. **结构保持墨色，颜色只留给信号。** 标题、列表、代码这些每屏出现几十次的东西不上色；全篇一种强调色，高饱和色只给高亮。
2. **一套字体贯穿，层级靠字号、字重和留白。** 不靠换字体、色块和装饰区分层级。
3. **笔记尺寸出自同一组数字。** 一个纵向单位、一组字号；输入法则按候选窗的阅读距离与操作频率单独收紧。

## 怎么读这个项目

- [设计流派梳理](<设计流派梳理.md>)：瑞士国际主义、乌尔姆、北欧、日式极简、民艺、苹果各自的思想和手法，以及它们在这套主题里对应到哪里。
- [设计过程与决策](<设计过程与决策.md>)：每一步试了什么、留下什么、撤回什么和原因，以及尺寸体系、字体分工、配色的完整规格。
- [样式测试](<样式测试.md>)：把主题处理过的元素各用一遍的测试文档，换主题或改变量后打开它检查。
- [鼠须管皮肤](<themes/squirrel/README.md>)：松叶 / 蓝夜两套配色、安装方法、紧凑候选框与调整参数。
- [同文九宫格](<themes/trime/README.md>)：Android 拼音九宫格、松叶 / 蓝夜配色、一级剪贴板与编辑工具栏。
- [主题示例](Theme-Preview.md)：投稿截图使用的中英混排短文。
- 预览图在 [figures](<figures/>)，各软件的主题文件在 [themes](<themes/>)。

## 预览

Typora 浅色与深色：

![Typora 浅色](<figures/typora-light.png>)

![Typora 深色](<figures/typora-night.png>)

Obsidian 阅读模式（浅色、深色）与实时预览：

![Obsidian 阅读模式 浅色](<figures/obsidian-reading-light.png>)

![Obsidian 阅读模式 深色](<figures/obsidian-reading-dark.png>)

![Obsidian 实时预览](<figures/obsidian-live-preview.png>)

Typora 和 Obsidian 的浅深色阅读图来自 macOS 上的实际应用，已裁剪为文章区域。Obsidian 截图环境启用了首行缩进片段，主题本身不含缩进。实时预览图仍是模拟页面，只用于说明排版；同文预览也属于布局示意。

## 成品在哪里

本项目保留四个平台的主题源文件与安装说明。可按平台单独下载：

| 平台 | 下载与说明 |
|---|---|
| Typora | [主题包](https://github.com/ishixi233/shittori/releases/tag/typora-1.0.0) · [安装说明](themes/typora/README.md) |
| Obsidian · Matsuba | [独立主题仓库](https://github.com/ishixi233/shittori-obsidian) · [安装说明](themes/obsidian/README.md) |
| 鼠须管 | [皮肤包](https://github.com/ishixi233/shittori/releases/tag/squirrel-1.0.0) · [安装说明](themes/squirrel/README.md) |
| 同文 | [主题包](https://github.com/ishixi233/shittori/releases/tag/trime-2.0.0) · [安装说明](themes/trime/README.md) |

| 软件 | 正在使用的位置 | 本项目里的文件 |
|---|---|---|
| Typora | `~/Library/Application Support/abnerworks.Typora/themes/` 下的 `shittori.css`、`shittori-night.css`、`shittori/dark.css` | [themes/typora](<themes/typora/>) |
| Obsidian | 库目录里 `.obsidian/themes/Shittori/` 下的 `theme.css`、`manifest.json` | [themes/obsidian](<themes/obsidian/>) |
| 鼠须管（macOS） | `~/Library/Rime/squirrel.custom.yaml` | [themes/squirrel](<themes/squirrel/>) |
| 同文（Android） | 同文选定的 Rime 外部同步目录 | [themes/trime](<themes/trime/>) |

Obsidian 发行版显示名为 **Matsuba（松叶）**，属于 Shittori 系列；仓库地址和 Style Settings 中的 Shittori 分组名保持不变。已有的本机 Shittori 安装不受项目文件更新影响。

修改正在使用的主题后，同步更新本项目对应的软件子目录。

### 安装或从备份恢复

在本文件夹下运行。Typora：

```bash
cp -R themes/typora/ ~/Library/Application\ Support/abnerworks.Typora/themes/
```

Obsidian：

```bash
mkdir -p <你的库>/.obsidian/themes/Matsuba && cp themes/obsidian/theme.css themes/obsidian/manifest.json <你的库>/.obsidian/themes/Matsuba/
```

恢复后在 Typora 的「主题」菜单里选 Shittori（深色选 Shittori Night 或同样选 Shittori）；在 Obsidian 的「设置 → 外观 → 主题」里选 Matsuba，并把字体大小设为 18。

### 鼠须管

[安装说明与完整配置](<themes/squirrel/README.md>)。默认横向候选、16 pt 字号、紧凑留白，外框 / 选中项圆角为 12 / 8；浅色「松叶」与深色「蓝夜」随 macOS 外观切换。已有配置时只合并外观补丁，再重新部署。

### 同文九宫格

[安装说明与配置](<themes/trime/README.md>) · [下载主题包](https://github.com/ishixi233/shittori/releases/tag/trime-2.0.0)。适配 Trime 3.3.12，主键区 224dp、候选文字 17sp，数字与长按提示位于右上角，剪贴板和编辑直接从顶部工具栏进入。浅深配色可随系统切换，使用 Android 默认字体。

## 依赖的字体

Typora 和 Obsidian 调用本机已安装的字体，主题里没有任何外部资源。鼠须管皮肤的候选词和注释使用 Helvetica，中文由系统回退至苹方，编号使用 JetBrains Mono。以下是笔记主题的字体：

| 用途 | 字体 | 来源 |
|---|---|---|
| 正文、H2–H6、加粗（中文） | 思源宋体 VF（Source Han Serif SC VF） | 需安装 |
| 正文、标题（英文与数字） | Source Serif 4 | 需安装 |
| H1（中文） | 方正大标宋简体 | 需安装 |
| H1（英文） | EB Garamond | 需安装 |
| 强调 | 霞鹜文楷（LXGW WenKai） | 需安装 |
| 引用 | 楷体-简（Kaiti SC） | macOS 自带 |
| 代码 | JetBrains Mono（含 Italic、Medium、Bold） | 需安装 |
| 日文片段 | Hiragino Mincho ProN | macOS 自带 |
| 界面 | 系统无衬线、苹方 | macOS 自带 |

缺字体时会自动回落到宋体-简、楷体-简等系统字体，不会出错，只是样子不同。

## 日常调整

**Obsidian** 安装 Style Settings 插件后，「设置 → Style Settings → Shittori」里有三个开关：

- 加粗带强调色（默认关：加粗只加重）
- 一级标题用正文字体（默认关：H1 用方正大标宋 + EB Garamond）
- 正文两端对齐（默认关：左对齐）

**Typora** 没有开关，改 `shittori.css` 开头的变量：

- 加粗带色：`--s-strong` 改成 `var(--s-accent)`
- H1 用正文字体：`--s-h1: var(--s-serif); --s-h1-weight: 600;`
- 正文两端对齐：`#write p` 的 `text-align` 改成 `justify`
- 提示块底色浓度：`--s-alert-tint`（浅色在 `shittori.css`，深色在 `shittori/dark.css`）
- 表格线深浅：`--s-table-line`、`--s-table-head-line`

Typora 和 Obsidian 的配色集中在 `--s-*` 变量里。鼠须管在 `squirrel.custom.yaml` 的 `preset_color_schemes/shittori_matsuba` 与 `preset_color_schemes/shittori_ai` 中定义颜色，注释保留对应的 CSS RGB 值；具体参数见[鼠须管说明](<themes/squirrel/README.md>)。

## 已知问题与边界

- **实测范围有限。** 已检查 macOS 上的示例正文与浅深色阅读效果；公式、Mermaid、所有编辑状态和第三方插件界面尚未逐项验证。Windows、Linux 和移动端也未实测。

- **英文弯引号是全角的。** 为了让中文“引号”正常，弯引号交给了宋体，英文段落里的 “quoted” 两侧会有较宽的空隙；英文撇号不受影响。英文段落用直引号可以避开。同一个字符只能有一种宽度，这是有意的取舍。
- **两端对齐遇到行内代码会拉开字距**，所以默认改成了左对齐。
- **日文汉字是简体字形。** 假名没问题；要地道的明朝体字形需给那段加 `<span lang="ja">`。
- **H1 的字体覆盖有限。** 方正大标宋只含简体常用字，标题里的假名和生僻字会回落到思源宋体粗体。
- **图片和公式会打破 8px 的纵向网格**，之后的内容不再落在格子上。
- **Typora 的提示块只认五种**（NOTE、TIP、IMPORTANT、WARNING、CAUTION），不支持 Obsidian 的自定义标题、折叠和其他类型。两边混用同一篇笔记时要留意。
- **额外 CSS 片段会改变主题效果。** 例如首行缩进片段会给每段加两字缩进；主题本身使用段间留白、不缩进。

## 社区入口

- [Typora 官方主题站投稿](https://github.com/typora/theme.typora.io/pull/578)：等待维护者审核。
- [Rime 官方社区展示](https://github.com/orgs/rime/discussions/2222)：鼠须管皮肤。
- [同文官方社区展示](https://github.com/osfans/trime/discussions/2166)：Android 九宫格主题。
- [Obsidian 官方主题页 · Matsuba](https://community.obsidian.md/themes/matsuba)：已公开，官网已开放安装入口；也可从[独立仓库](https://github.com/ishixi233/shittori-obsidian)下载手动安装。

## 相关主题与配色参考

如果想比较不同的排版和操作方式，可以从这些项目看起。它们各有侧重，不代表 Shittori 全部采用了对应实现。

| 项目 | 平台 | 值得参考的地方 |
|---|---|---|
| [Minimal](https://github.com/kepano/obsidian-minimal) | Obsidian | 克制的界面、阅读层级和较完整的设置体系 |
| [Ursine](https://github.com/noatpad/typora-theme-ursine) | Typora | 以 Bear 为灵感的排版，以及浅深色之间的协调 |
| [Flexoki](https://github.com/kepano/flexoki) | 跨应用配色 | 纸张与墨色的关系，兼顾正文和代码 |
| [Catppuccin Squirrel](https://github.com/catppuccin/squirrel) | 鼠须管 | 成套配色如何落到候选窗，以及多应用配色的一致性 |
| [rime-pure](https://github.com/SivanLaai/rime-pure) | Rime / 同文 | 九宫格方案与键盘布局；使用前需核对分支和同文版本 |
| [单静](https://github.com/nopdan/danjing) | 同文 | 功能键与编辑入口的安排；仓库已归档，适合参考布局 |

## 许可

Typora、Obsidian 和鼠须管主题采用 MIT；同文派生部分与附带字体分别保留 GPL 和 OFL 许可。详见[许可说明](LICENSE.md)。公开包不含私人短语、用户词库或语法模型。
