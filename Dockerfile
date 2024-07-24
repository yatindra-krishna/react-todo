# Use the official Node.js 14 image as the base image
FROM node:20.12.0

WORKDIR /app
COPY . .
RUN npm install
EXPOSE 5173
CMD ["npm","run","dev"]