FROM node:16-alpine

RUN apk --no-cache add ca-certificates

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD [ "node", "app.js" ]
