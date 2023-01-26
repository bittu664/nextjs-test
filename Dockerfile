# Dockerfile

# base image
FROM node:alpine

# create & set working directory
#RUN mkdir -p /usr/src
#WORKDIR /usr/src

# copy source files
COPY . .

# install dependencies
RUN npm install
#RUN npx browserslist@latest --update-db

# start app
RUN npm run build
EXPOSE 3000
CMD npm run start     