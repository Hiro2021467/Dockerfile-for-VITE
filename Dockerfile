FROM node:latest

RUN npm create vite@latest my-app -- --template react

# コンテナ内での作業ディレクトリを設定
WORKDIR /my-app

# プロジェクトの依存関係
# COPY my-react-app/package*.json ./
RUN npm install

EXPOSE 5173

CMD npm run dev -- --host

# # プロジェクトファイルをコピー
# COPY my-react-app ./

# # アプリケーションをビルド
# RUN npm run build

# # コンテナを実行
# CMD ["npm", "start"]