FROM node:12.18

COPY package.json package.json
RUN npm install --production

COPY src/ /app/

WORKDIR /app

EXPOSE 3000

CMD [ "node", "index.js" ]