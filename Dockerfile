# Use the official Nginx image as base image
FROM nginx:latest

# Copy the HTML files to the Nginx default html directory
COPY finalpage.html /usr/share/nginx/html/
COPY frontpage.html /usr/share/nginx/html/
COPY nextpage.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Verify file permissions
RUN chmod 644 /usr/share/nginx/html/finalpage.html && \
    chmod 644 /usr/share/nginx/html/frontpage.html && \
    chmod 644 /usr/share/nginx/html/nextpage.html && \
    chmod 644 /usr/share/nginx/html/style.css

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
