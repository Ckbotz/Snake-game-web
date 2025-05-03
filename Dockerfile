# Use official Nginx base image
FROM nginx:alpine

# Remove default config and HTML
RUN rm -rf /etc/nginx/conf.d/* /usr/share/nginx/html/*

# Copy custom Nginx config and HTML file
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8000
EXPOSE 8000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
