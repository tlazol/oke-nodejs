# 最初に調べたnodeのバージョンを記載
FROM node:20

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/app

# アプリケーションの依存関係をインストールする
# ワイルドカードを使用して、package.json と package-lock.json の両方が確実にコピーされるようにします。
# 可能であれば (npm@5+)
COPY package*.json ./

RUN npm install

# アプリケーションのソースをバンドルする
COPY . .

# 開放するport番号を記載
EXPOSE 8080
CMD [ "npm", "start" ]