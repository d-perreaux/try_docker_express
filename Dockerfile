FROM node:18

WORKDIR /usr/src/app

COPY ./app/package*.json ./

RUN npm install
RUN npm i -g prisma

COPY ./app .

EXPOSE 3000

# Copy the entrypoint script into the container
COPY ./app/entrypoint.sh .
RUN chmod +x ./entrypoint.sh

# Run the entrypoint script
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

