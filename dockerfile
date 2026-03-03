# Use official Apache HTTP Server image
FROM httpd:2.4

# Remove default Apache website
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy custom index.html to Apache web directory
COPY website/ /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80
