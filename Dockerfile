FROM python:3.10-slim

WORKDIR /app

# 安装依赖
RUN apt-get update && apt-get install -y \
    ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 复制 Yunx 代码
COPY yunx_bot.py /app/

# 安装 Python 依赖
RUN pip install --no-cache-dir python-telegram-bot yt-dlp requests ffmpeg-python

# 创建下载目录
RUN mkdir -p /downloads/x /downloads/youtube /downloads/xvideos /downloads/pornhub /downloads/bilibili /downloads/douyin /downloads/files /downloads/images /downloads/torrents

# 设置环境变量
ENV DOWNLOAD_PATH=/downloads
ENV CONVERT_TO_MP4=true

# 运行 Yunx 机器人
CMD ["python", "yunx_bot.py"]