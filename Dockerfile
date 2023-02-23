# 使用 Node 的版本
#FROM node:lts-alpine
FROM node:12.18.2-alpine

# Node 在容器內的位置
#RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
#COPY package.json /usr/src/app/
COPY package.json ./
RUN npm install --production

# Bundle app source
#COPY . /usr/src/app
COPY app.js ./

# 開放對外的 port
EXPOSE 3000

# 執行專案
CMD [ "node", "app.js" ]