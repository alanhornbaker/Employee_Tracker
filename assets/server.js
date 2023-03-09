// Require the express module and set to variable called "express":
const express = require("express");
// Import and require mysql2:
const mysql = requrie("mysql2");
// Present data in table format instead of as an array of objects:
const { printTable } = require("console-table-printer");

const PORT = process.env.PORT || 3001;
const app = express();

// Express Middleware:
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to Database:
const db = mysql.createConnection(
  {
    host: "localhost",
    user: "root",
    password: "",
    database: "workforce_db",
  },
  console.log("Connected to the workforce_db database.")
);

// Query database:
db.query("SELECT * FROM departments", function (err, results) {
  console.log(results);
});
