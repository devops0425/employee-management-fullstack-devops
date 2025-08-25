# Step 1: Build React app
FROM node:18 AS builder
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy source code and build
COPY src ./src
COPY public ./public
RUN npm run build

# Step 2: Serve with nginx
FROM nginx:alpine

# Copy React build
COPY --from=builder /app/build /usr/share/nginx/html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
