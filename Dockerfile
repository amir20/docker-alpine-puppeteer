FROM alpine:edge


RUN echo @edge http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
  apk add --no-cache \
  chromium \
  nss \
  curl \
  freetype \
  freetype-dev \
  harfbuzz \
  ca-certificates \
  ttf-freefont \
  nodejs \
  npm \
  python3 \
  yarn \
  g++ \
  make \
  bash \
  font-noto-emoji@edge \
  wqy-zenhei@edge

# Tell Puppeteer to skip installing Chrome. We'll be using the installed package.
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV CHROME_EXE_PATH /usr/bin/chromium-browser

RUN  mkdir -p /home/pptruser/Downloads /app

WORKDIR /app
