# 多功能下载 Telegram 机器人

这是一个功能强大的 Telegram 机器人，支持多种下载功能：

1. **视频下载**：从多个平台下载视频，包括 X (Twitter)、YouTube、Bilibili、抖音、Xvideos 和 Pornhub
2. **文件和图片下载**：直接从 Telegram 下载用户发送的文件和图片
3. **种子下载**：支持磁力链接和种子文件，自动推送到 qBittorrent 进行下载

## 功能特点

### 视频下载
- 支持多个视频平台
- 实时下载进度显示
- 智能格式选择和备用方案
- 自动格式转换 (webm → mp4)
- 按平台分类存储
- 支持 NSFW 内容下载
- 唯一文件名，避免覆盖
- 支持代理设置
- 支持 cookies 认证

### 文件和图片下载
- 直接下载用户发送的文件和图片
- 自动分类存储
- 唯一文件名，避免覆盖

### 种子下载
- 支持磁力链接和种子文件
- 自动推送到 qBittorrent 进行下载
- 支持自定义下载路径
- 支持查看下载状态

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
| QBITTORRENT_HOST | qBittorrent WebUI 地址 | 无 |
| QBITTORRENT_USERNAME | qBittorrent 用户名 | 无 |
| QBITTORRENT_PASSWORD | qBittorrent 密码 | 无 |
| QBITTORRENT_DOWNLOAD_PATH | qBittorrent 下载路径 | 无 |

## 安装依赖

```bash
pip install python-telegram-bot yt-dlp requests
```

## 使用方法

1. 设置环境变量
2. 运行脚本：`python video_downloader_bot.py`
3. 在 Telegram 中使用机器人：
   - 发送视频链接下载视频
   - 发送文件或图片进行下载
   - 发送磁力链接或种子文件推送到 qBittorrent

## 机器人命令

- `/start` - 显示帮助信息
- `/status` - 查看下载统计
- `/cleanup` - 清理重复文件
- `/formats <链接>` - 检查视频格式

## 注意事项

- 请确保您有权下载和使用这些视频和文件
- 某些平台可能需要 cookies 才能下载高质量视频或私有内容
- 代理设置对于某些地区访问特定平台可能是必要的
- 使用种子下载功能需要有可访问的 qBittorrent 服务器
- qBittorrent 需要启用 WebUI 功能并设置正确的权限

## qBittorrent 设置

1. 在 qBittorrent 中启用 WebUI：
   - 工具 -> 选项 -> Web UI
   - 勾选"启用 Web 用户界面"
   - 设置端口（默认为 8080）
   - 设置用户名和密码

2. 在 docker-compose.yml 中配置 qBittorrent 连接信息：
   ```yaml
   environment:
     - QBITTORRENT_HOST=http://qbittorrent:8080
     - QBITTORRENT_USERNAME=admin
     - QBITTORRENT_PASSWORD=adminadmin
     - QBITTORRENT_DOWNLOAD_PATH=/downloads/torrents
   ```

3. 如果 qBittorrent 和机器人在同一个 Docker 网络中，可以使用服务名作为主机名