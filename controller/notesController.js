const connection = require("../config/configDB");

exports.create_notes = (req, res) => {

  //"title", "some description", CURRENT_DATE, 213456789
  let sql = `insert into smartnote(notes_id, notes_title, notes_description, notes_date_stamp, stud_num)
    values(null,?,?,?,?)`;
    var date = new Date();
    const notesBody = [req.body.title, req.body.body_description, date, 213456789]
  connection.query(sql,notesBody, (err, results) => {
    if(err) {console.log(err);}
    else{
        res.json({ message: "Successfully saved", results: results, success: true});
    }
    //
  });
};

exports.retrive_notes = (req, res) => {
    let sql = `select * smartnote`
    connection.query(sql, (err, results) => {
        if(err) {console.log(err);}
        
        res.json({ message: "Successfully saved", results: results, success: true});
    })
}
