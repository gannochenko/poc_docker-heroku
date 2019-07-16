FROM node:11
RUN apt-get update && apt-get install -y --no-install-recommends vim && apt-get clean

WORKDIR /app

COPY . .
RUN yarn

ENV NODE_ENV=production

CMD [ "yarn", "start" ]
