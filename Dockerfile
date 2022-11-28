FROM node:14-alpine

#create dir app and set as workdir
WORKDIR /app
#copy all files in current directory to docker workdir folder /app
COPY . .
#set environment variable
ENV NODE_ENV=production 
ENV DB_HOST=item-db
#run command to install node dependencies for production and build the app
RUN npm install --production --unsafe-perm && npm run build
#expose port 8080 that use for container
EXPOSE 8080
#default command for start container
CMD npm start
