const path = require("path");

const express = require("express");

const hbs = require("hbs");

const bodyParser = require("body-parser");

const mysql = require("mysql");

const app = express();

const conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "nodejs-login",
});

conn.connect((err) => {
  if (err) throw err;
  console.log("Mysql Connected...");
});

app.set("views", path.join(__dirname, "views"));

app.set("view engine", "hbs");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use("/assets", express.static(__dirname + "/public"));

app.get("/", (req, res) => {
  let sql = "SELECT * FROM realcategory";
  let query = conn.query(sql, (err, results) => {
    if (err) throw err;
    res.render("categories", {
      results: results,
    });
  });
});

app.post("/save", (req, res) => {
  let data = { Title: req.body.Title, Date: req.body.Date };
  console.log(data);
  let sql = "INSERT INTO realcategory (Title, Date) VALUES(Nokia, 2021-01-25)";
  let query = conn.query(sql, data, (err, results) => {
    if (err) throw err;
  });
  console.log(query);
});

app.listen(5000, () => {
  console.log("Server is running at port 5000");
});
