# 多平台视频下载 Telegram 机器人

这是一个功能强大的 Telegram 机器人，可以从多个平台下载视频，包括 X (Twitter)、YouTube、Bilibili、抖音、Xvideos 和 Pornhub。

## 功能特点

- 支持多个视频平台
- 实时下载进度显示
- 智能格式选择和备用方案
- 自动格式转换 (webm → mp4)
- 按平台分类存储
- 支持 NSFW 内容下载
- 唯一文件名，避免覆盖
- 支持代理设置
- 支持 cookies 认证

## 环境变量配置

| 环境变量 | 描述 | 默认值 |
|---------|------|-------|
| TELEGRAM_BOT_TOKEN | Telegram 机器人 token | 必填 |
| DOWNLOAD_PATH | 下载根目录 | /downloads |
| PROXY_HOST | 代理服务器地址 | 无 |
| X_COOKIES | X (Twitter) cookies 文件路径 | 无 |
| B_COOKIES | Bilibili cookies 文件路径 | 无 |
| CONVERT_TO_MP4 | 是否转换为 MP4 格式 | true |
| CUSTOM_DOWNLOAD_PATH | 是否使用自定义下载路径 | false |
| X_DOWNLOAD_PATH | X 视频下载路径 | /downloads/x |
| YOUTUBE_DOWNLOAD_PATH | YouTube 视频下载路径 | /downloads/youtube |
| XVIDEOS_DOWNLOAD_PATH | Xvideos 视频下载路径 | /downloads/xvideos |
| PORNHUB_DOWNLOAD_PATH | Pornhub 视频下载路径 | /downloads/pornhub |
| BILIBILI_DOWNLOAD_PATH | Bilibili 视频下载路径 | /downloads/bilibili |
| DOUYIN_DOWNLOAD_PATH | 抖音视频下载路径 | /downloads/douyin |

## 安装依赖

```bash
pip install python-telegram-bot yt-dlp requests
```

## 使用方法

1. 设置环境变量
2. 运行脚本：`python video_downloader_bot.py`
3. 在 Telegram 中向机器人发送视频链接

## 机器人命令

- `/start` - 显示帮助信息
- `/status` - 查看下载统计
- `/cleanup` - 清理重复文件
- `/formats <链接>` - 检查视频格式

## 注意事项

- 请确保您有权下载和使用这些视频
- 某些平台可能需要 cookies 才能下载高质量视频或私有内容
- 代理设置对于某些地区访问特定平台可能是必要的