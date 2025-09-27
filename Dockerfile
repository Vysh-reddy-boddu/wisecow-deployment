# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies inside container
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (same as app)
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]

