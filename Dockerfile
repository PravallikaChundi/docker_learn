FROM node:22-alpine

ENV MONGO-DB-USERNAME=admin\
    MONGO-DB-PWD=password

RUN mkdir -p /home/frst_webapp:1.0

COPY . /home/frst_webapp:1.0

WORKDIR /home/frst_webapp

RUN npm install

CMD ["node", "serve.js"]