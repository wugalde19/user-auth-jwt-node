FROM node:16-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . /app
EXPOSE 3000
