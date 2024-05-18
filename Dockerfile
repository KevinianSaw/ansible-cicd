FROM node:20-alpine

LABEL maintainer="Kevin Saw <kevinsaw@gmail.com>"
LABEL description="Docker image for Next.js app"


# Set working directory
WORKDIR /app

# Copy package, json and package-lack.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy th rest of the application code excluding the file in .dockerignore
COPY . . 

# Build the Next.js app
RUN npm run buil

# Expose port 3000
EXPOSE 3000

# Command to run the Next.js app
CMD [ "npm", "start" ]

# Build the Docker Image
# docker build -t nextjs-app . 
# docker run - p 3000:3000 -d --name nextjs-app nextjs-app





