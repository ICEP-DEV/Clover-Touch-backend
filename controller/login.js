const express = require('express');
const bodyParser = require('body-parser');
//const session = require('express-session');
const mysql = require('mysql');
const connection = require("../config/configDB");
import axios from 'axios';

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
/* app.use(session({
  secret: 'your-secret-key',
  resave: false,
  saveUninitialized: false,
})); */

/* try {
  const response = await axios.post('/api/login', {
    studentNumber: studentNumber,
    password: password,
  });

  if (response.data.success) {
    // User logged in successfully, you can redirect or perform other actions
    console.log('Login successful');
  } else {
    console.log('Login failed');
  }
} catch (error) {
  console.error('Error during login:', error);
} */


app.post('/login', (req, res) => {
    const  studentNumber = req.body;
    const password =req.body;
  
    // Find the user in the database by studentNumber
    const query = `SELECT * FROM student WHERE stud_Num = '${studentNumber}' and stud_password = '${password}'`;
  
    connection.query(query, [studentNumber], (err, results) => {
      if (err) {
        console.error('Error while querying:', err);
        return res.status(500).json({ success: false, message: 'An error occurred' });
      }
  
      if (results.length === 0) {
        return res.status(401).json({ success: false, message: 'Invalid studentNumber or password' });
      }
  
      const user = results[0];

    // Replace this with secure password hashing and verification logic (e.g., bcrypt)
    if (user.password === password) {
      req.session.isLoggedIn = true;
      res.json({ success: true, message: 'Login successful' });
    } else {
      res.status(401).json({ success: false, message: 'Invalid StudentNum or password' });
    }
  });
});

app.get('/logout', (req, res) => {
  req.session.destroy();
  res.json({ success: true, message: 'Logged out successfully' });
});

app.listen(PORT, () => {
  console.log(`Server started on port ${PORT}`);
});