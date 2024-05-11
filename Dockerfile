# Builder stage
FROM debian

RUN apt-get update && apt-get install -y zip unzip curl

RUN curl -fsSL https://bun.sh/install | bash

WORKDIR /app

# Final stage
FROM oven/bun:latest

WORKDIR /app

CMD ["bun", "dev"]


#---------------------------------------

# FROM oven/bun:latest

# WORKDIR /app/my_budget

# CMD ["bun", "dev"]



#---------------------------------------

# FROM debian

# RUN apt-get update && apt-get install -y \
#     zip \
#     unzip \
#     curl

# RUN curl -fsSL https://bun.sh/install | bash

# WORKDIR /app



#---------------------------------------

# # Use an official Node.js runtime as a parent image
# FROM node:latest as build

# # Set the working directory
# WORKDIR /app

# # Install Bun
# RUN curl -fsSL https://bun.sh/install | bash

# # Copy package.json and bun.lockb files
# COPY package.json bun.lockb ./

# # Install dependencies with Bun
# RUN /root/.bun/bin/bun install

# # Copy the rest of your application's code
# COPY . .

# # Build your Next.js application with Node.js
# RUN npm run build

# # Start from the official Bun image for the runtime environment
# FROM oven/bun:latest