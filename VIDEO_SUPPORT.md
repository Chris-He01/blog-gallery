# 为 blog-gallery 添加视频支持

## 📋 实现概要

已为 Hugo Gallery Theme 添加轻量级视频支持，可在 story content page 中混合展示图片和视频。

## 🎯 新增文件

1. **`layouts/partials/gallery-with-video.html`** - 支持视频的 gallery 模板
2. **`assets/js/lightbox-with-video.js`** - 支持视频播放的 lightbox
3. **`assets/css/video-support.css`** - 视频样式

## 📖 使用方法

### 1. 在相册中添加视频文件

将视频文件（如 `.mp4`, `.webm`）放入相册文件夹：

```
content/
└── my-album/
    ├── index.md
    ├── photo1.jpg
    ├── photo2.jpg
    └── video1.mp4    # 视频文件
```

### 2. 配置视频元数据（可选）

在 `index.md` front matter 中为视频添加标题、日期、海报图等：

```yaml
---
title: My Album
resources:
  - src: video1.mp4
    title: "这是一段有趣的视频"
    params:
      date: 2024-03-07T10:00:00+08:00
      poster: poster.jpg    # 可选：视频封面图片
      caption: "视频说明文字"
      hidden: false         # false=显示, true=隐藏
---
```

### 3. 启用视频支持

**方案 A：替换默认模板（全局启用）**

```bash
# 备份原文件
cp layouts/partials/gallery.html layouts/partials/gallery-backup.html

# 替换为支持视频的版本
cp layouts/partials/gallery-with-video.html layouts/partials/gallery.html
cp assets/js/lightbox-with-video.js assets/js/lightbox.js
```

**方案 B：仅为特定相册启用**

创建自定义布局 `layouts/video-album/single.html`:

```html
{{ define "main" }}
  {{ partial "title.html" . }}
  {{ partial "gallery-with-video.html" . }}
  {{ partial "related.html" . }}
  {{ with .Content }}
    <section class="prose">
      {{ . }}
    </section>
  {{ end }}
{{ end }}
```

然后在相册 front matter 中指定：

```yaml
---
title: 带视频的相册
type: video-album
---
```

### 4. 添加 CSS 支持

在 `assets/css/custom.css` 中导入视频样式：

```css
@import "video-support.css";
```

或直接复制 `video-support.css` 的内容到 `custom.css`。

## ✨ 功能特性

- **混合展示**：图片和视频在同一个 gallery 中无缝展示
- **轻量级**：基于现有 PhotoSwipe lightbox，无需额外依赖
- **自动排序**：视频和图片一起根据 `sort_by` 参数排序
- **播放图标**：视频缩略图上自动显示播放按钮
- **Lightbox 播放**：点击视频在 lightbox 中以 HTML5 `<video>` 播放
- **支持封面图**：可为视频指定 poster 图片，或自动提取第一帧
- **控制选项**：支持标题、说明、日期、隐藏等所有图片元数据

## 🔧 支持的视频格式

- **MP4** (`.mp4`) - 推荐，兼容性最好
- **WebM** (`.webm`) - 现代浏览器支持
- **OGG** (`.ogv`) - 部分浏览器支持

建议使用 H.264 编码的 MP4 格式以获得最佳兼容性。

## 📝 示例相册配置

```yaml
---
title: 2024 春季旅行
date: 2024-03-07
sort_by: Params.weight
resources:
  - src: sunrise.jpg
    title: 日出
    params:
      weight: 1
  
  - src: walking.mp4
    title: 漫步山间
    params:
      weight: 2
      poster: walking-poster.jpg
      caption: "清晨的徒步之旅"
  
  - src: landscape.jpg
    title: 山景
    params:
      weight: 3
---

这是一次美妙的春季旅行，记录了日出、徒步和美丽的风景。
```

## ⚠️ 注意事项

1. **文件大小**：视频文件较大，建议：
   - 压缩视频到 1080p 以下
   - 使用合适的码率（2-5 Mbps）
   - 考虑使用 CDN 托管大文件

2. **性能优化**：
   - 缩略图使用 `preload="metadata"` 仅加载元数据
   - Lightbox 中才加载完整视频
   - 可为视频指定静态 poster 图片

3. **Hugo 限制**：
   - Hugo 不会自动处理视频（不会压缩/转码）
   - 需要手动准备好合适尺寸的视频文件

4. **浏览器兼容性**：
   - 现代浏览器（Chrome, Firefox, Safari, Edge）均支持
   - 不支持 IE11

## 🚀 进阶优化

### 自动生成视频封面

使用 ffmpeg 提取视频第一帧作为 poster：

```bash
ffmpeg -i video.mp4 -vframes 1 -f image2 video-poster.jpg
```

### 视频压缩

使用 ffmpeg 压缩视频：

```bash
ffmpeg -i input.mp4 -vcodec h264 -acodec aac -b:v 2M -maxrate 2M -bufsize 4M output.mp4
```

## 🐛 故障排除

**视频无法播放？**
- 检查浏览器是否支持该视频格式
- 检查视频文件是否损坏
- 查看浏览器控制台错误信息

**播放按钮不显示？**
- 确认已导入 `video-support.css`
- 检查 CSS 是否正确加载

**视频不在 gallery 中显示？**
- 确认使用了 `gallery-with-video.html` 模板
- 检查 front matter 中是否设置 `hidden: true`

---

✅ 现在你的 blog-gallery 支持视频了！享受更丰富的多媒体相册体验。
