FROM node:16-slim
# FROM node:15

WORKDIR /
# WORKDIR /app

COPY ./package*.json ./
# COPY package.json .

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

COPY ./ ./
# COPY . .
# COPY . ./

ENV PORT 5000
EXPOSE $PORT

CMD ["npm", "run", "server"]
# CMD ["node", "backend/server.js"]
