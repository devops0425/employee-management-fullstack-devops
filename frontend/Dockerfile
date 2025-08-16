# # Use an official Node.js image to build the application
# FROM node:18 AS builder

# # Set the working directory
# WORKDIR /app

# # Copy package.json and install dependencies
# COPY package.json package-lock.json ./
# RUN npm install

# # Copy the rest of the application code
# COPY src ./src
# COPY public ./public

# # Build the application
# RUN npm run build

# # Use an official Nginx image to serve the application
# FROM nginx:alpine

# # Copy the build artifacts from the builder stage
# COPY --from=builder /app/build /usr/share/nginx/html

# # Expose the default port for Nginx
# EXPOSE 80

# # Start Nginx
# CMD ["nginx", "-g", "daemon off;"]






# Step 1: Build React app
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Step 2: Serve with Nginx
FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
