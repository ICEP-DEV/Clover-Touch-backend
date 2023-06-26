const express = require('express');
const router = express.Router();
const notesController = require("../controller/notesController")


router.post('/postnotes', notesController.create_notes)
router.get('/retrivenotes/:stud_id', notesController.retrive_notes)

module.exports = router