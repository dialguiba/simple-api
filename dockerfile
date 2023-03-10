FROM node:14
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build
EXPOSE 3333
CMD ["node", "./dist/server.js"]