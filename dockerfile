FROM node:8
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 8091
CMD npm start
