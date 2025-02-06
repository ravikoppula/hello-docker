
# FROM node:18-windowsservercore-20H2
# # FROM mcr.microsoft.com/windows/nanoserver:ltsc2022
# COPY . /app
# WORKDIR /app
# CMD node app.js


# Use an official Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy app.js to the container
COPY app.js .

# Define the command to run the script
CMD ["node", "app.js"]
# CMD node app.js

