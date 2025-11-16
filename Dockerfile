FROM nginx

# Create non-root user (already exists in nginx image)
USER root
RUN chown -R nginx:nginx /usr/share/nginx/html

# Switch to nginx user
USER nginx

# Copy only necessary files
COPY . /usr/share/nginx/html/

EXPOSE 80
