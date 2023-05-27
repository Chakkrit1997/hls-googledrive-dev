FROM node:14.2.0

RUN mkdir /app
RUN mkdir /webfrontend
WORKDIR /
COPY package*.json .babelrc ./
RUN npm install

COPY ./app ./app
RUN npm run build-backend

COPY ./webfrontend ./webfrontend
RUN npm run build-frontend

# WORKDIR /
