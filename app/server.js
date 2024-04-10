const express = require("express");
const PORT = 3000;
const connectDB = require("./config/database");
const { PrismaClient } = require('@prisma/client');


connectDB;

const prisma = new PrismaClient()

const app = express();

app.get("/", async (req, res) => {
    res.send("coucou");
})

app.get("/users", async (req, res) => {
    const createUSer = await prisma.$queryRaw`
    INSERT INTO users (Pseudo, password) VALUES ("michel", "biere")`

    const result = await prisma.$queryRaw`
    SELECT Pseudo FROM users
    `
    res.send(result);
})

app.listen(PORT);