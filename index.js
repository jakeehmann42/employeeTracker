const inquirer = require("inquirer");
const mysql = require("mysql");
require("console.table");



const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "GilbertTiger4",
    database: "employees"
});

connection.connect (function(err) {
    if (err) throw err;
    prompt();
});

