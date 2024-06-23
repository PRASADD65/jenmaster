# Use the latest Ubuntu image as the base
FROM ubuntu:latest

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y apache2 curl

# Expose port 80 for the web server
EXPOSE 80

# Set the working directory
WORKDIR /usr/share/doc/info/html/workspace/project1

# Copy the index.html file into the working directory
COPY index.html /usr/share/doc/info/html/workspace/project1/index.html

# Define the command to run Apache in the foreground
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

