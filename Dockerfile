FROM node
WORKDIR /app
COPY . . 
RUN npm install
EXPOSE 9981
CMD ["node","app.js"]