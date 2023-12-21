# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /_work

# Copy the source code to the container
COPY . .

# Install the dependencies
RUN yarn install

RUN yarn lint

RUN yarn test

RUN yarn build

# Start the server when the container starts
CMD yarn prod
