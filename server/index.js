const express = require('express');
const path = require('path');
const app = express();
const DIR = path.join(__dirname,'../client/build');
const PORT = process.env.PORT || 8080;

app.use(express.static(DIR));

app.get('/', (req, res) => {
  return res.sendFile(path.join(DIR, 'index.html'));
});
app.get('/api', (req, res) => {
  return res.send("Welcome to Bookmarkify's API!");
});

app.listen(PORT);
