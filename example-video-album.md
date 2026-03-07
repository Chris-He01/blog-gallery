---
title: 示例：视频相册
date: 2024-03-07
description: 展示如何在相册中混合图片和视频
resources:
  - src: sample1.jpg
    title: "美丽的风景"
    params:
      weight: 1
  
  - src: sample-video.mp4
    title: "户外活动视频"
    params:
      weight: 2
      caption: "这是一段有趣的户外活动记录"
      # poster: poster.jpg  # 可选：指定封面图
  
  - src: sample2.jpg
    title: "另一张照片"
    params:
      weight: 3
---

## 使用说明

这个相册展示了如何混合图片和视频：

1. 将视频文件（.mp4, .webm 等）放入相册文件夹
2. 在 front matter 中配置视频元数据
3. 视频会自动显示播放图标
4. 点击后在 lightbox 中播放

### 视频参数

- `title`: 视频标题
- `caption`: 说明文字（显示在 lightbox 下方）
- `poster`: 封面图片文件名（可选）
- `weight`: 排序权重
- `hidden`: 是否隐藏（true/false）
