FROM nginx:alpine

# Copies the compiled production assets into Nginx
COPY ./webApp/build/dist/wasmJs/productionExecutable /usr/share/nginx/html

# Copies our custom network configuration
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
