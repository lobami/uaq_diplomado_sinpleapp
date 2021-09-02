FROM node:14-alpine

USER node

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY --chown=node . .

ENV HOST:0.0.0 PORT: 3000

EXPOSE ${PORT}

CMD ["node", "app"]