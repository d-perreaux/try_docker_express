FROM node:18

WORKDIR /usr/src/app

COPY ./app/package*.json ./

RUN npm install

COPY ./app .

EXPOSE 3000

# Copy the entrypoint script into the container
# COPY ./app/entrypoint.sh .
# RUN chmod +x ./entrypoint.sh
RUN npx prisma generate
RUN npx prisma migrate deploy

# Run the entrypoint script
# ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

CMD ["npm", "start"]

