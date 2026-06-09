FROM node:24-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN addgroup -S innkeeper && adduser -S innkeeper -G innkeeper
USER innkeeper:innkeeper

EXPOSE 4181

CMD ["npm", "run", "start"]