# Use nginx to serve static HTML files
FROM nginx:alpine

# Copy HTML files to nginx html directory
COPY host.html /usr/share/nginx/html/
COPY player.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# nginx runs automatically when container starts
CMD ["nginx", "-g", "daemon off;"]

