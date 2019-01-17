FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build  ###########################333###3added file

FROM nginx     #webserver
EXPOSE 80 
COPY --from=builder /app/build /usr/share/nginx/html


