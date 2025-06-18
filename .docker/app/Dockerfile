FROM node:22

WORKDIR /var/www/html/

COPY ./app/package.json ./package.json
COPY ./app/package-lock.json ./package-lock.json

RUN npm install

CMD ["npm", "start"]

EXPOSE 4200
