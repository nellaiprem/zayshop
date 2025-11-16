FROM nginx
RUN chown -R nginx:nginx /usr/share/nginx/html
USER nginx
COPY . /usr/share/nginx/html/
EXPOSE 80
