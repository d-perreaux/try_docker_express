FROM node:18
RUN apt-get update
RUN apt-get install -y openssl

WORKDIR /usr/src/app

COPY ./app/package*.json ./
COPY ./app/prisma ./prisma/

RUN npm install
RUN npm i -g prisma

COPY ./app .

EXPOSE 3000

# Copy the entrypoint script into the container
COPY ./app/entrypoint.sh .
RUN chmod +x ./entrypoint.sh

# Run the entrypoint script
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

