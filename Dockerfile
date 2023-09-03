#################################################################################
# Quotables NodeJS app - requires MongoDB backend with env variable MONGODB_URI #
#################################################################################
FROM node:16
RUN mkdir -p /usr/src/app/dist/
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY dist/ ./dist/
EXPOSE 4000
CMD [ "npm", "start" ]
