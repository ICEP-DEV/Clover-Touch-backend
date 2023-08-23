const express = require('express');
const router = express.Router();
const connection = require("../config/configDB");


router.post('/login',(req, res) => {
    const  studentNumber = req.body.username;
    const password = req.body.password;
    console.log(studentNumber, password)
    
    const query = `SELECT * FROM student WHERE stud_Num = '${studentNumber}' and stud_password = '${password}'`;
  
    connection.query(query, [studentNumber], (err, results) => {
        if (err) throw err
        console.log(results[0])
        if(results.length>0){
            if(results[0].stud_password === password){
                res.send({success:true, results})
            }
        }
    })
})

module.exports = router