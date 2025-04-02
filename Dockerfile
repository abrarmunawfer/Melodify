# Use an official Nginx image to serve static content
FROM nginx:alpine

# Copy the HTML files into the container's default web directory
WORKDIR . /usr/share/nginx/html

COPY ..

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
