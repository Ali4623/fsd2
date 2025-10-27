 6( b). Write a program to develop a small website with multiple routes using Express.js
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => res.send('Home Page'));
app.get('/about', (req, res) => res.send('About Page'));
app.get('/contact', (req, res) => res.send('Contact Page'));

app.listen(port, () => {
  console.log(`Website running at http://localhost:${port}`);
});

Output:

Output in Browser:
•	http://localhost:3000/ → Home Page
•	http://localhost:3000/about → About Page
•	http://localhost:3000/contact → Contact Page
