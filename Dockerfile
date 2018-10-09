ARG NODE_IMAGE=node:10.1-alpine

FROM ${NODE_IMAGE} as nodebuild

WORKDIR /usr/src/app

# Generate node_modules
COPY package.json ./package.json
COPY *.js   ./
COPY config/config.example.js ./config/config.js
RUN apk add --no-cache --virtual=build-dependencies \
    build-base && \
    npm install && \
    apk del --purge build-dependencies

VOLUME /usr/src/app/config

CMD [ "npm", "start" ]    