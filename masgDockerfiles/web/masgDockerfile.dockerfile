FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    git \
    curl

RUN npm install -g yarn

RUN git clone https://github.com/morgadodesarrollador/ApiJardineriaNest.git /app

WORKDIR /app

RUN yarn install

EXPOSE 3009

CMD ["yarn", "run", "start:dev"]