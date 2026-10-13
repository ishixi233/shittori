# Shittori · 鼠须管皮肤

[← 项目说明](../../README.md)

把 Shittori 的暖纸白与深色蓝灰带到 macOS 鼠须管（Squirrel）。浅色为「松叶」，深色为「蓝夜」，跟随系统外观切换。配色取自 [Typora 浅色主题](../typora/shittori.css)与[深色主题](../typora/shittori/dark.css)。

横向候选，候选词和注释使用 Helvetica（中文由系统回退至苹方），编号使用 JetBrains Mono，候选词 16 pt、序号及注释 12 pt。横纵留白收紧，外框与选中项圆角分别为 12、8，实色背景、无阴影。

## 文件

| 文件 | 用途 |
| --- | --- |
| [squirrel.custom.yaml](squirrel.custom.yaml) | 完整外观补丁，包含两套配色、字体、尺寸与自动深浅切换 |
| [shittori_matsuba.yaml](shittori_matsuba.yaml) | 供 Squirrel Panel 导入的浅色配色 |
| [shittori_ai.yaml](shittori_ai.yaml) | 供 Squirrel Panel 导入的深色配色；`ai` 是日语「藍」的罗马字 |

适用于 macOS 鼠须管，已在 1.1.2 中部署并检查生成配置。可搭配雾凇拼音或其他 Rime 输入方案；皮肤不设置词库、候选数量、快捷键或纠错功能。

## 安装

编号需要本机已安装 JetBrains Mono；候选词和注释不需要额外字体。内嵌在编辑区的拼音由所在应用控制显示字体。

1. 打开鼠须管用户目录 `~/Library/Rime/`。
2. 若没有 `squirrel.custom.yaml`，把本目录同名文件复制进去。若已有该文件，将本皮肤 `patch:` 下的键合并到原有 `patch:` 中：同名外观键使用本皮肤值，其他设置保留；不要添加第二个顶层 `patch:`。
3. 从鼠须管菜单选择「重新部署」，或在终端执行：

```sh
'/Library/Input Methods/Squirrel.app/Contents/MacOS/Squirrel' --reload
```

默认浅色方案为 `shittori_matsuba`，深色方案为 `shittori_ai`。

## 在 Squirrel Panel 中显示与编辑

Squirrel Panel 2.0.5 的「用户自定义配色」有独立注册表，不会自动收录手写在 `squirrel.custom.yaml` 中的新方案。因此皮肤可以正常生效，面板列表却暂时看不到。

进入「外观 → 编辑自定义方案」，分别导入本目录的 `shittori_matsuba.yaml` 和 `shittori_ai.yaml`，并启用这两套方案。之后可在外观页选择「Shittori · 松叶」，在深色模式配色中选择「Shittori · 蓝夜」，保持「跟随系统深浅色」开启。

这两个导入文件只含颜色。完整的尺寸、字体与紧凑布局由 `squirrel.custom.yaml` 提供，应先按上面的步骤合并外观补丁。避免重复导入，以免生成带后缀的重复方案。

## 常用调整

在 `squirrel.custom.yaml` 的 `patch:` 下修改，保存后重新部署：

| 配置键 | 默认值 | 用途 |
| --- | --- | --- |
| `style/font_face` | `Helvetica` | Helvetica；中文由系统回退至苹方 |
| `style/comment_font_face` | `Helvetica` | 注释使用 Helvetica |
| `style/label_font_face` | `JetBrains Mono` | 编号使用等宽字体 |
| `style/font_point` | `16` | 候选词字号 |
| `style/label_font_point` | `12` | 序号字号 |
| `style/comment_font_point` | `12` | 注释字号 |
| `style/border_width` | `-2` | 横向留白；负值收紧，并非 CSS 描边粗细 |
| `style/border_height` | `-2` | 纵向留白；负值收紧 |
| `style/corner_radius` | `12` | 外框圆角 |
| `style/hilited_corner_radius` | `8` | 选中项圆角 |

## 配色

下表为 CSS RGB 色值；鼠须管文件使用 `0xBBGGRR` 顺序与 sRGB 色彩空间，注释保留原始 RGB 值。

| 元素 | 松叶 | 蓝夜 |
| --- | --- | --- |
| 背景 | `#F9F6EF` | `#1E2228` |
| 普通候选 | `#2B2926` | `#C6CAD1` |
| 序号、注释 | `#6A655C` | `#929BA8` |
| 强调色 | `#42602D` | `#8FB3DA` |
| 选中底色 | `#D8DBCC` | `#3B4856` |
| 选中文字 | `#1C1B19` | `#E4E7EB` |
| 边框 | `#DDD6C8` | `#3A424E` |

选中底色按 Typora 原始透明度（浅色 18%、深色 26%）与背景预先合成，避免受到背后应用窗口颜色影响。若调整配色，请同步完整补丁与对应的 Panel 导入文件。
