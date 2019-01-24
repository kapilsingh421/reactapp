FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build  ########################33333333333#########333#33i###3#####33##############  ###3added file

FROM nginx
EXPOSE 80 
COPY --from=builder /app/build /usr/share/nginx/html


