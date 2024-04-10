const sqlite3 = require("sqlite3");
const dbname = "main.db";


const connectDB = new sqlite3.Database(dbname, (error) => {
    if (error) throw error;
    console.log("Database started on " + dbname);
});

module.exports = connectDB;