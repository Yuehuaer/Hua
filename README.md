# Yunx - 多功能下载 Telegram 机器人

Yunx 是一个功能强大的 Telegram 机器人，支持多种下载功能：

1. **视频下载**：从多个平台下载视频，包括 X (Twitter)、YouTube、Bilibili、抖音、Xvideos 和 Pornhub
2. **文件和图片下载**：直接从 Telegram 下载用户发送的文件和图片
3. **种子下载**：支持磁力链接和种子文件，自动推送到 qBittorrent 进行下载

## 功能特点

- 多平台视频下载支持
- 实时下载进度显示
- 自动格式转换（webm → mp4）
- 按平台分类存储
- 支持代理服务器
- 支持 Cookies 认证
- 文件和图片下载
- 种子下载转发到 qBittorrent

## 安装方法

### 使用 Docker Compose（推荐）

1. 克隆仓库：
   ```bash
   git clone https://github.com/yourusername/yunx.git
   cd yunx
   ```

2. 创建必要的目录：
   ```bash
   mkdir -p downloads/x downloads/youtube downloads/bilibili downloads/douyin downloads/xvideos downloads/pornhub downloads/files downloads/images downloads/torrents
   mkdir -p cookies
   ```

3. 编辑 `docker-compose.yml` 文件，设置您的 Telegram Bot Token：
   ```yaml
   environment:
     - TELEGRAM_BOT_TOKEN=your_telegram_bot_token_here
   ```

4. 启动服务：
   ```bash
   docker-compose up -d
   ```

### 手动安装

1. 安装依赖：
   ```bash
   pip install python-telegram-bot yt-dlp requests ffmpeg-python
   ```

2. 安装 FFmpeg：
   ```bash
   # Debian/Ubuntu
   apt-get install ffmpeg
   
   # CentOS/RHEL
   yum install ffmpeg
   
   # macOS
   brew install ffmpeg
   ```

3. 设置环境变量：
   ```bash
   export TELEGRAM_BOT_TOKEN=your_telegram_bot_token_here
   export DOWNLOAD_PATH=/path/to/downloads
   ```

4. 运行机器人：
   ```bash
   python yunx_bot.py
   ```

## 配置选项

### 环境变量

| 变量名 | 描述 | 默认值 |
|--------|------|--------|
| `TELEGRAM_BOT_TOKEN` | Telegram Bot Token | 必填 |
| `DOWNLOAD_PATH` | 下载文件保存路径 | `/downloads` |
| `CONVERT_TO_MP4` | 是否将视频转换为 MP4 格式 | `true` |
| `PROXY_HOST` | 代理服务器地址 | 无 |
| `X_COOKIES` | X (Twitter) Cookies 文件路径 | 无 |
| `B_COOKIES` | Bilibili Cookies 文件路径 | 无 |
| `CUSTOM_DOWNLOAD_PATH` | 是否使用自定义下载路径 | `false` |
| `QBITTORRENT_HOST` | qBittorrent WebUI 地址 | 无 |
| `QBITTORRENT_USERNAME` | qBittorrent 用户名 | 无 |
| `QBITTORRENT_PASSWORD` | qBittorrent 密码 | 无 |
| `QBITTORRENT_DOWNLOAD_PATH` | qBittorrent 下载路径 | 无 |

### 自定义下载路径

如果设置 `CUSTOM_DOWNLOAD_PATH=true`，可以为每个平台设置单独的下载路径：

| 变量名 | 描述 | 默认值 |
|--------|------|--------|
| `X_DOWNLOAD_PATH` | X (Twitter) 下载路径 | `/downloads/x` |
| `YOUTUBE_DOWNLOAD_PATH` | YouTube 下载路径 | `/downloads/youtube` |
| `BILIBILI_DOWNLOAD_PATH` | Bilibili 下载路径 | `/downloads/bilibili` |
| `DOUYIN_DOWNLOAD_PATH` | 抖音下载路径 | `/downloads/douyin` |
| `XVIDEOS_DOWNLOAD_PATH` | Xvideos 下载路径 | `/downloads/xvideos` |
| `PORNHUB_DOWNLOAD_PATH` | Pornhub 下载路径 | `/downloads/pornhub` |
| `FILES_DOWNLOAD_PATH` | 文件下载路径 | `/downloads/files` |
| `IMAGES_DOWNLOAD_PATH` | 图片下载路径 | `/downloads/images` |

## 使用方法

1. 在 Telegram 中搜索您的机器人
2. 发送 `/start` 命令查看帮助信息
3. 直接发送视频链接、文件、图片或磁力链接给机器人
4. 使用 `/status` 命令查看下载统计
5. 使用 `/cleanup` 命令清理重复文件
6. 使用 `/formats <链接>` 命令检查视频格式
7. 使用 `/version` 命令查看版本信息

## 支持的平台

- X (Twitter)
- YouTube
- Bilibili
- 抖音
- Xvideos
- Pornhub

## 许可证

MIT