FROM node:4.6
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 8091
CMD npm start
