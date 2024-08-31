FROM node:14
WORKDIR /app
COPY package*.json ./
#Install Node.js dependencies
RUN npm install
#copy the rest of the application code to contain
COPY . .
#Expose the application port
EXPOSE 3000

CMD ["node", "index.js"]

