FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build    #### comments are added

FROM nginx
EXPOSE 80 
COPY --from=builder /app/build /usr/share/nginx/html


