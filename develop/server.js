// Require the express module and set to variable called "express":
const express = require("express");

const inquirer = require("inquirer");
const utils = require("util");
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

// Main Menu:
const mainMenu = [
  {
    name: "mainMenu",
    type: "list",
    message: "Main menu:",
    choices: [
      "View All Departments",
      "View All Roles",
      "View All Employees",
      "Add a Department",
      "Add a Role",
      "Add an Employee",
      "Update an Employee Role",
      "Delet a Department",
      "Delete a Role",
      "Delete an Employee",
      "Quit",
    ],
  },
];

function init() {
  inquirer.createPromptModule(mainMenu).then((response) => {
    if (response.mainMenu === "View All Departments") {
      viewDepartments();
    } else if (response.mainMenu === "View All Roles") {
      viewRoles();
    } else if (response.mainMenu === "View All Employees") {
      viewEmployees();
    } else if (response.mainMenu === "Add a Department") {
      createDepartment();
    } else if (response.mainMenu === "Add a Role") {
      createRole();
    } else if (response.mainMenu === "Add an Employee") {
      createEmployee();
    } else if (response.mainMenu === "Update an Employee Role") {
      updateRole();
    } else if (response.mainMenu === "Delete a Department") {
      deleteDepartment();
    } else if (response.mainMenu === "Delete a Role") {
      deleteRole();
    } else if (response.mainMenu === "Delete an Employee") {
      deleteEmployee();
    }
  });
}
// Query database:
db.query("SELECT * FROM departments", function (err, results) {
  console.log(results);
});
