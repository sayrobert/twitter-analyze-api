const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const mysql = require('mysql');
 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));
 
const sql_connect = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'twittanalyze'
});
 
sql_connect.connect();
 
app.get('/', function (req, res) {
    return res.send({ error: true, message: 'hello' })
});
 
app.get('/users', function (req, res) {
    sql_connect.query('SELECT * FROM user', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get all users.' });
    });
});
 
app.get('/user/:id', function (req, res) { 
    let user_id = req.params.id;

    sql_connect.query('SELECT * FROM user where id=?', user_id, function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results[0], message: 'Get one user information.' });
    });
});

app.get('/user/:id/tweets', function (req, res) { 
    let user_id = req.params.id;

    sql_connect.query('SELECT * FROM tweets INNER JOIN user ON tweets.id_user = user.id AND user.id=?', user_id, function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get tweets of one user.' });
    });
});

app.get('/popularhashtags', function (req, res) {
    sql_connect.query('SELECT content, COUNT(*) count FROM `hashtags` GROUP BY content ORDER BY count DESC LIMIT 5', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get 5 more popular hashtags.' });
    });
});

app.get('/:hashtag/:pseudo', function (req, res) { 
    let hashtag = req.params.hashtag;
    let pseudo = req.params.pseudo;

    sql_connect.query('SELECT COUNT(*) AS nombredetweets, h.content, u.pseudo FROM tweets t INNER JOIN hashtags h ON t.id = h.id_tweet INNER JOIN user u ON t.id_user = u.id WHERE h.content = ? AND u.pseudo = ?', [hashtag, pseudo], function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get count hashtag by person' });
    });
});

app.on('error', function(err) {
    console.log("[mysql error]",err);
});

app.all("*", function (req, res) {
    return res.status(404).send('page not found')
});
 
app.listen(8080, function () {
	console.log('Node app is running on port 8080');
});
