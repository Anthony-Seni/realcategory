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

//app.get("/html/categories.html", (req, res) => {
//let sql = "SELECT * FROM realcategory";
//let query = conn.query(sql, (err, results) => {
// if (err) throw err;
//res.render("categories", {
// results: results,
// });
//});
//});

//app.post("/save", (req, res) => {
//let data = {
//Title: req.body.Title,
//Date: Date.now,
//};
//console.log(data);
//let sql = "INSERT INTO realcategory SET ?";
//let query = conn.query(sql, data, (err, results) => {
//if (err) throw err;
//res.redirect("/html/categories.html");
//});
//});

app.get("/", (req, res) => {
  let sql = "SELECT * FROM addposts";
  let query = conn.query(sql, (err, results) => {
    if (err) throw err;
    res.render("posts", {
      results: results,
    });
  });
});

app.post("/save", (req, res) => {
  let poster = {
    Title: req.body.Title,
    Category: req.body.Category,
    Date: Date.now,
  };
  console.log(poster);
  let sql = "INSERT INTO addposts SET ?";
  let query = conn.query(sql, poster, (err, results) => {
    if (err) throw err;
    res.redirect("/");
  });
});

app.listen(5000, () => {
  console.log("Server is running at port 5000");
});

app.get("/", (req, res) => {
  res.render("blogpost");
});

app.get("/details.html", (req, res) => {
  res.render("details");
});

app.get("/login.html", (req, res) => {
  res.render("login");
});

app.get("/register.hbs", (req, res) => {
  res.render("register");
});

app.get("/posts.html", (req, res) => {
  res.render("posts");
});

app.get("/categories.html", (req, res) => {
  res.render("categories");
});

app.get("/users.html", (req, res) => {
  res.render("users");
});

app.get("/html/Adminindex.html", (req, res) => {
  res.render("Adminindex");
});

app.get("/html/users.html", (req, res) => {
  res.render("users");
});

app.get("/html/categories.html", (req, res) => {
  res.render("categories");
});

app.get("/html/posts.html", (req, res) => {
  res.render("posts");
});

app.get("/html/login.html", (req, res) => {
  res.render("login");
});

app.get("/html/profile.html", (req, res) => {
  res.render("profile");
});

app.get("/html/settings.html", (req, res) => {
  res.render("settings");
});

app.get("/html/blogpost.hbs", (req, res) => {
  res.render("blogpost");
});

app.get("/views/blogpost.hbs", (req, res) => {
  res.render("blogpost");
});

app.get("/views/single.hbs", (req, res) => {
  res.render("single");
});

app.get("/views/Adminindex.html", (req, res) => {
  res.render("Adminindex");
});

app.get("/views/posts.html", (req, res) => {
  res.render("posts");
});

app.get("/views/categories.html", (req, res) => {
  res.render("categories");
});

app.get("/views/users.html", (req, res) => {
  res.render("users");
});

app.get("/views/register.hbs", (req, res) => {
  res.render("register");
});

app.get("/views/login.html", (req, res) => {
  res.render("login");
});

app.get("/html/categories.hbs", (req, res) => {
  res.render("categories");
});

app.get("/html/users.html", (req, res) => {
  res.render("users");
});

app.get("/html/register.hbs", (req, res) => {
  res.render("register");
});
