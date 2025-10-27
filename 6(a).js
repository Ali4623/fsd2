6(a)
Program (app.js):

const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World from Express!');
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});

OUTPUT:

Output in Browser:
Hello World from Express!
Terminal Output:
Server running at http://localhost:3000
