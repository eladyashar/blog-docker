# Use the official Nginx image
FROM nginx:alpine

# Copy your HTML and CSS files to the Nginx web root
#In a Dockerfile, the COPY instruction is used to copy files and directories from your local machine (host) into the Docker image.
COPY public /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
