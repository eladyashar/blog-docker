# Use the official Nginx image as a base
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy website files to the Nginx default serving directory
COPY public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]