FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
<<<<<<< HEAD
RUN npm run build  ####
=======
RUN npm run build   #
>>>>>>> ba2bb33aec29f07b44e182e935e5103373c25a64

FROM nginx     #webserver
EXPOSE 80 
COPY --from=builder /app/build /usr/share/nginx/html


