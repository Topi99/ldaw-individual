FROM mhart/alpine-node:11 AS builder
WORKDIR /app
COPY . .
RUN npm install react-scripts -g --silent
RUN yarn install

WORKDIR /app
EXPOSE 80
CMD yarn run start
