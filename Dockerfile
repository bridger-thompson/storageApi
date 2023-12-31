FROM node:18

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .
RUN npx tsc

CMD ["node", "src/index.js"]