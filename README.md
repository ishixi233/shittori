# Shittori しっとり · 笔记与输入法主题

为自己设计的一套主题，用于 Typora、Obsidian 和 macOS 鼠须管（Squirrel）。笔记主题以中文为主，兼顾英文和少量日文，面向金融、技术、机器学习笔记和文学哲学随笔；输入法皮肤延续相同的暖纸白、松叶绿与深色蓝灰配色。笔记主题创建于 2026-10-11 至 10-12，鼠须管皮肤于 2026-10-13 加入。

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
- 预览图在 [figures](<figures/>)，各软件的主题文件在 [themes](<themes/>)。

## 预览

Typora 浅色与深色：

![Typora 浅色](<figures/typora-light.png>)

![Typora 深色](<figures/typora-night.png>)

Obsidian 阅读模式（浅色、深色）与实时预览：

![Obsidian 阅读模式 浅色](<figures/obsidian-reading-light.png>)

![Obsidian 阅读模式 深色](<figures/obsidian-reading-dark.png>)

![Obsidian 实时预览](<figures/obsidian-live-preview.png>)

这些图都是在 Chrome 里用模拟的页面结构渲染的，不是两个软件的实际截图。Obsidian 的图叠加了它自带的样式表，较接近真实效果；Typora 的图只能说明排版和配色。

## 成品在哪里

正在使用的文件在各软件自己的目录里。本项目保留 Typora、Obsidian 的主题文件，以及 2026-10-13 新增的鼠须管皮肤。

| 软件 | 正在使用的位置 | 本项目里的文件 |
|---|---|---|
| Typora | `~/Library/Application Support/abnerworks.Typora/themes/` 下的 `shittori.css`、`shittori-night.css`、`shittori/dark.css` | [themes/typora](<themes/typora/>) |
| Obsidian | 库目录里 `.obsidian/themes/Shittori/` 下的 `theme.css`、`manifest.json` | [themes/obsidian](<themes/obsidian/>) |
| 鼠须管（macOS） | `~/Library/Rime/squirrel.custom.yaml` | [themes/squirrel](<themes/squirrel/>) |

修改正在使用的主题后，同步更新本项目对应的软件子目录。

### 安装或从备份恢复

在本文件夹下运行。Typora：

```bash
cp -R themes/typora/ ~/Library/Application\ Support/abnerworks.Typora/themes/
```

Obsidian：

```bash
mkdir -p <你的库>/.obsidian/themes/Shittori && cp themes/obsidian/* <你的库>/.obsidian/themes/Shittori/
```

恢复后在 Typora 的「主题」菜单里选 Shittori（深色选 Shittori Night 或同样选 Shittori）；在 Obsidian 的「设置 → 外观 → 主题」里选 Shittori，并把字体大小设为 18。

### 鼠须管

[安装说明与完整配置](<themes/squirrel/README.md>)。默认横向候选、16 pt 字号、紧凑留白，外框 / 选中项圆角为 12 / 8；浅色「松叶」与深色「蓝夜」随 macOS 外观切换。已有配置时只合并外观补丁，再重新部署。

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

**Obsidian** 装了 Style Settings 插件，「设置 → Style Settings → Shittori」里有三个开关：

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

- **英文弯引号是全角的。** 为了让中文“引号”正常，弯引号交给了宋体，英文段落里的 “quoted” 两侧会有较宽的空隙；英文撇号不受影响。英文段落用直引号可以避开。同一个字符只能有一种宽度，这是有意的取舍。
- **两端对齐遇到行内代码会拉开字距**，所以默认改成了左对齐。
- **日文汉字是简体字形。** 假名没问题；要地道的明朝体字形需给那段加 `<span lang="ja">`。
- **H1 的字体覆盖有限。** 方正大标宋只含简体常用字，标题里的假名和生僻字会回落到思源宋体粗体。
- **图片和公式会打破 8px 的纵向网格**，之后的内容不再落在格子上。
- **Typora 的提示块只认五种**（NOTE、TIP、IMPORTANT、WARNING、CAUTION），不支持 Obsidian 的自定义标题、折叠和其他类型。两边混用同一篇笔记时要留意。
- **Obsidian 的首行缩进片段 `shouhang` 仍然启用**，它给每段加两字缩进，与 Typora 版（段间留白、不缩进）不同。
