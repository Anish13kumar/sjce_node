# Use the official Node.js 14 image as base
FROM node:18

# Install Git
RUN apt-get update && apt-get install -y git

# Set the working directory in the container
WORKDIR /app

# Clone your Git repository
RUN git clone https://github.com/Varunpro16/leave-form-Revised.git .

# Install dependencies for backend
RUN npm install --prefix server

# Build the frontend
RUN npm install --prefix client

# WORKDIR /app/server

# RUN cd /app/leave-form-Revised/server && npm start > /dev/null 2>& 1 &


# WORKDIR /app/client
# Expose ports for frontend and backend
# RUN cd /app/leave-form-Revised/client && npm start > /dev/null 2>& 1 &
EXPOSE 3000
EXPOSE 4000

# Command to run both frontend and backend
# CMD ["npm", "start"]

CMD ["bash", "-c", "cd /app/server && npm start & cd /app/client && npm start"]

