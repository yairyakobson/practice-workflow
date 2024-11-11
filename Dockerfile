FROM node:22

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME test
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
ENV MONGODB_USERNAME Yair
ENV MONGODB_PASSWORD testing123

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]