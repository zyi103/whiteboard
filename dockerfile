# ---- Build Stage ----
FROM node:20 AS build

# Set the working directory
WORKDIR /app

# Copy project file
COPY package*.json ./

# Install all dependencies
RUN npm install

# Copy all files
COPY . .

# Build application
RUN npm run build

# ---- Run Stage ----
FROM nginx:1.19-alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy build output from Build stage
COPY --from=build /app/build .

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80
