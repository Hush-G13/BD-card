FROM node:18-alpine

WORKDIR /src

COPY package.json package-lock.json ./

RUN npm ci --silent  # Use npm ci for consistent installs
COPY . .

RUN npm run build  # Build the application

EXPOSE 80
CMD ["serve", "-s", "build"]  # Serve the built React app