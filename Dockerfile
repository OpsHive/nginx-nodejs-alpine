FROM alpine:latest
 
LABEL maintainer=opshive

# Install nvm with node and npm
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/main libuv \
    && apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/main nodejs npm \
    && apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community yarn \
    && echo "NodeJS Version:" "$(node -v)" \
    && echo "NPM Version:" "$(npm -v)" \
    && echo "Yarn Version:" "$(yarn -v)"
