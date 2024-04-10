FROM node:18

WORKDIR /usr/src/app

COPY ./app/package*.json ./

RUN npm install

RUN 

COPY ./app .

EXPOSE 3000

CMD ["npx", "prisma", "migrate", "deploy"] && ["npm", "start"]
