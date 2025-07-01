#!/bin/bash

# Yunx 安装脚本

echo "开始安装 Yunx 多功能下载机器人..."

# 检查 Docker 是否安装
if ! command -v docker &> /dev/null; then
    echo "Docker 未安装，请先安装 Docker"
    exit 1
fi

# 检查 Docker Compose 是否安装
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose 未安装，请先安装 Docker Compose"
    exit 1
fi

# 创建必要的目录
mkdir -p downloads/x downloads/youtube downloads/xvideos downloads/pornhub downloads/bilibili downloads/douyin downloads/files downloads/images
mkdir -p cookies

# 设置权限
chmod +x yunx_bot.py

echo "请在 docker-compose.yml 中设置您的 Telegram Bot Token"
echo "安装完成！使用以下命令启动 Yunx:"
echo "docker-compose up -d"