const express = require('express');
const app = express();
const port = 8080; // Port identique à l'exercice Spring Boot [cite: 28]

app.get('/', (req, res) => {
  res.send('Hello, World! (from Node 18)');
});

app.listen(port, () => {
  console.log(`Application Node démarrée sur le port ${port}`);
});