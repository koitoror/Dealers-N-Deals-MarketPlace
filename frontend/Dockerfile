FROM node:16-slim
# FROM node:15

WORKDIR /

COPY ./package*.json ./
# COPY ./package*.json ./
# COPY package.json .

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

COPY ./ ./
# COPY . .
# COPY . ./

# PORT=8080
ENV PORT 3000
EXPOSE $PORT

CMD ["npm", "start"]
# CMD ["node", "index.js"]
