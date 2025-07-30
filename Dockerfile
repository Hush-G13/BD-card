FROM node:18-alpine

EXPOSE 80
CMD ["serve", "-s", "build"]  # Serve the built React app