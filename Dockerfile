FROM node:16.17.1-alpine3.15 as base

WORKDIR /usr/app

COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm install

COPY ./ ./
ARG PORT
RUN npm run test && \
    npm run build && \
    npx surge --project ./build --domain available-cord.surge.sh

CMD ["npm", "run", "start"]