const express = require('express');
const router = express.Router();
const connection = require("../config/configDB");


router.post('/login',(req, res) => {
    const  studentNumber = req.body.stud_Num;
    const password =req.body.stud_password;
    console.log(studentNumber, password)
    const query = `SELECT * FROM student WHERE stud_Num = '${studentNumber}' and stud_password = '${password}'`;
  
    connection.query(query, [studentNumber], (err, results) => {
        if (err) throw err
        console.log(results)
    })
})

module.exports = router