FROM node:14.15.0 as node 

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

RUN npm install -g @angular/cli@1.7.1

COPY . /usr/src/app

CMD ng serve --host 0.0.0.0 --port 4200

#RUN yarn global add @angular/cli@latest

#RUN ng build --prod

#FROM nginx:alpine 
#COPY --from=node /app/dist/GestionContactFront /usr/share/nginx/html
#COPY --from=node /app/.docker/nginx.conf /etc/nginx/conf.d/default.conf
#COPY --from=build /app/dist/gestioncontactfront /usr/share/nginx/html
#WORKDIR /usr/share/nginx/html
#RUN rm -rf ./*
#COPY --from=build /app/dist/gestioncontactfront .
#ENTRYPOINT ["nginx", "-g", "daemon off;"]
#RUN npm install 
#RUN npm run build --prod