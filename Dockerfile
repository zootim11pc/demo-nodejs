# 使用 Node 的版本
FROM node:lts-alpine

# Node 在容器內的位置
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app


# 開放對外的 port
EXPOSE 3000

# 執行專案
CMD [ "node", "app.js" ]