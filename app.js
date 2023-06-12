require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const Connection = require('./config/configDB')

const app = express();
app.use(cors());
app.use(express.json());
app.use(bodyParser.json());
const port = 4041
app.use(bodyParser.urlencoded({ extended: false }));


app.use('/', (req, res) =>{
    res.send('Endpoint')
})


app.listen(process.env.PORT, () => {
    console.log('Server started at port ' + process.env.PORT)
})