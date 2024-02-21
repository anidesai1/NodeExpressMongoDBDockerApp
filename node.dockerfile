FROM node:alpine

LABEL author="Ani Desai" date="21/02/24"

ENV NODE_ENV=production
ENV PORT=3000

WORKDIR /var/www
COPY package.json packahe-lock.json ./
RUN npm install

COPY . .
EXPOSE $PORT

ENTRYPOINT ["npm", "start"]