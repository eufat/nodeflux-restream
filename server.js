const http = require("http");
const express = require("express");
const app = express();
const server = http.createServer(app);
const path = require("path");

const PORT = 3000;

app.use(express.static(path.join(__dirname, "public")));
app.use("/temp", express.static(path.join(__dirname, "temp")));
app.set("port", PORT);

server.listen(PORT);

server.on("error", function() {
    console.log("Service error on port " + PORT);
});

server.on("listening", function() {
    console.log("Service ready on port " + PORT);
});
