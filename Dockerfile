FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build  ####iiii#33i###3#####33##############  ###3added file

FROM nginx
EXPOSE 80 
COPY --from=builder /app/build /usr/share/nginx/html


