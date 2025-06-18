FROM node:22

WORKDIR /var/www/html/

COPY ./app/package.json ./package.json
COPY ./app/package-lock.json ./package-lock.json

COPY .docker/app/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 4200
