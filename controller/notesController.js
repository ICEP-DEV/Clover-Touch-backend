const connection = require("../config/configDB");

const create_notes = (req, res) => {

  //"title", "some description", CURRENT_DATE, 213456789
  let sql = `insert into smartnote(notes_id, notes_title, notes_description, notes_date_stamp, stud_id)
    values(null,?,?,?,?)`;
    var date = new Date();
    const notesBody = [req.body.title, req.body.notes_description, date, req.body.stud_id]
  connection.query(sql,notesBody, (err, results) => {
    if(err) {console.log(err);}
    else{
        res.json({ message: "Successfully saved", results: results, success: true});
    }
    //
  });
};

const retrive_notes = (req, res) => {
    let sql = `select * 
              from smartnote
              where stud_id =?
              `
    connection.query(sql,req.params.stud_id, (err, results) => {
        if(err) {console.log(err);}
        
        if(results.length> 0){
          res.json({ message: "All notes for particular student", results: results, success: true});
        }
        else{
          res.json({ message: "No notes has been found for student",  success: false});
        }


    })
}


module.exports = {
  create_notes,
  retrive_notes
}