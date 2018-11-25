FROM node:7
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 8091
CMD npm start
