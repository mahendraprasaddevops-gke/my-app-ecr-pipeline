# Use Node LTS slim
FROM node:20-slim

WORKDIR /app
COPY package.json ./
# If you added dependencies, run `npm install`
RUN npm ci --only=prod || true

COPY . .

EXPOSE 8080
CMD ["node", "index.js"]

