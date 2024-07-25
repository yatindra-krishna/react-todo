FROM node:20-alpine as builder

WORKDIR /app
COPY package*.json .
RUN npm i
COPY . .
FROM node:20-bookworm-slim
WORKDIR /app
COPY --from=builder /app .
EXPOSE 5173
CMD ["npm","run","dev"]