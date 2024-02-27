# Use the official Node.js 14 image as base
FROM node:18

# Set the working directory in the container
WORKDIR /server/

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 4000

# Command to run your app using npm
CMD ["npm", "start"]
