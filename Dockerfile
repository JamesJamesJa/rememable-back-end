FROM node:lts-alpine AS builder

WORKDIR /app
COPY ./ ./

RUN yarn && yarn build
EXPOSE 1337

CMD yarn start