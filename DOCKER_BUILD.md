# Docker 构建记录

## 构建信息

- 构建日期: 2025-07-01
- Docker 版本: 28.3.0
- 镜像大小: 773MB
- 基础镜像: python:3.10-slim

## 构建步骤

1. 安装系统依赖 (ffmpeg)
2. 安装 Python 依赖
3. 复制应用代码
4. 创建下载目录
5. 设置环境变量

## 使用说明

### 直接运行

```bash
docker run -d \
  --name yunx-bot \
  -e TELEGRAM_BOT_TOKEN=您的Telegram机器人令牌 \
  -v /path/to/downloads:/downloads \
  yunx:latest
```

### 使用 Docker Compose

```bash
docker-compose up -d
```

## 推送到 Docker Hub

```bash
docker login
docker tag yunx:latest 您的用户名/yunx:latest
docker push 您的用户名/yunx:latest
```