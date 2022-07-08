FROM node:lts-alpine
RUN npm install -g npm@8.13.2
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node","server.js"] 