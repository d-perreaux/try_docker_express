const express = require("express");
const PORT = 3000;
const connectDB = require("./config/database");
const { PrismaClient } = require('@prisma/client');


// connectDB;

// const prisma = new PrismaClient()

const app = express();

app.get("/", async (req, res) => {
    // const result = await prisma.$queryRaw`
    // SELECT Pseudo FROM users
    // `
    // res.send(result);
    res.send("coucou");
})

app.listen(PORT);