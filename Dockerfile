FROM node:alpine as builder

WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
<<<<<<< HEAD
RUN npm run build 


FROM nginx 

COPY --from=builder /app/build /usr/share/nginx/html


=======
RUN npm run build


FROM nginx

COPY --from=builder /app/build /usr/share/nginx/html
>>>>>>> origin/master
