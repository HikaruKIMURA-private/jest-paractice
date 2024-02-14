# ベースイメージの指定
FROM node:18.13.0

# アプリケーションのワークディレクトリを設定
WORKDIR /app

# package.json と package-lock.json (もしあれば) をコピー
COPY package*.json ./

# 依存関係のインストール
RUN npm install

# プロジェクトのソースコードをコピー
COPY . .