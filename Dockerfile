# Use an official Nginx base image
FROM nginx:alpine

# Copy the index.html file to the default Nginx location
COPY index.html /usr/share/nginx/html
COPY event.jpg /usr/share/nginx/html
# Expose port 80
EXPOSE 8077

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
