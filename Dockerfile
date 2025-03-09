# Use the official Nginx Alpine image for a small footprint.
FROM nginx:alpine

# Remove the default Nginx static files.
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html file into Nginx's web root.
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
