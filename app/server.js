const express = require("express");
const PORT = 3000;
const connectDB = require("./config/database");

connectDB;

const app = express();

app.get("/", (req, res) => {
    res.send("bonjour github actions mspr");
})

app.listen(PORT);