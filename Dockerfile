FROM node:22

# Define build arguments for sensitive data
ARG MONGODB_DB_NAME
ARG MONGODB_CLUSTER_ADDRESS
ARG MONGODB_USERNAME
ARG MONGODB_PASSWORD

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME=$MONGODB_DB_NAME
ENV MONGODB_CLUSTER_ADDRESS=$MONGODB_CLUSTER_ADDRESS
ENV MONGODB_USERNAME=$MONGODB_USERNAME
ENV MONGODB_PASSWORD=$MONGODB_PASSWORD

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]