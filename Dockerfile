FROM node:16-alpine

RUN mkdir -p /user/app/

WORKDIR /user/app/

COPY package.json .

COPY yarn.lock .

RUN yarn install

COPY ./ ./

EXPOSE 3000

CMD ["yarn", "start"]