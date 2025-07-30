FROM node:18-alpine

WORKDIR  /src

COPY package.json package-lock.json ./

RUN npm install --silent
COPY . .

EXPOSE 80
CMD ["npm","run","build"]