#!/bin/sh
RUN npx prisma generate --schema ./prisma/schema.prisma
npm start
