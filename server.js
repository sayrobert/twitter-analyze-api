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

    let hostname = req.protocol + '://' + req.get('host') + req.originalUrl;
    
    let results = {
        "Affichage de toutes les personnalités politiques" : hostname + "users",
        "Affichage des informations d’une personnalité politique" : hostname + "user/:id",
        "Affichage des tweets pour une personnalité donnée" : hostname + "user/:id/tweets",
        "Affichage des 10 tweets les plus utilisés dans le mois par l’ensemble des personnalités politiques" : hostname + "popularhashtags",
        "Affichage du nombre de fois où le hashtag populaire a été utilisé ans le mois par une personnalité politique": hostname + ":hashtag/:pseudo",
        "Affichage du nombre de fois où le hashtag populaire avec tous les mois/années": hostname + "historytags",
        "Affichage du nombre de fois où le hashtag populaire par mois/année": hostname + "historytags/:month",
    };

    return res.send({ data: results, message: 'Get all routes' })
});
 
app.get('/users', function (req, res) {
    sql_connect.query('SELECT * FROM user', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get all users.' });
    });
});
 
app.get('/user/:id', function (req, res) {
    let hostname = req.protocol + '://' + req.get('host');
    let user_id = req.params.id;
    let exemple_id = 1976143068;

    sql_connect.query('SELECT * FROM user where id=?', user_id, function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results[0], message: 'Get one user information.', example: hostname + "/user/" + exemple_id });
    });
});

app.get('/user/:id/tweets', function (req, res) {
    let hostname = req.protocol + '://' + req.get('host');
    let user_id = req.params.id;
    let exemple_id = 1976143068;

    sql_connect.query('SELECT * FROM tweets INNER JOIN user ON tweets.id_user = user.id AND user.id=?', user_id, function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get tweets of one user.' , example: hostname + "/user/" + exemple_id + "/tweets/" });
    });
});

app.get('/popularhashtags', function (req, res) {
    sql_connect.query('SELECT content, COUNT(*) count FROM `hashtags` GROUP BY content ORDER BY count DESC LIMIT 10', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get 10 more popular hashtags.' });
    });
});

app.get('/historytags', function (req, res) {
    sql_connect.query('SELECT hashtag_content, month FROM hashtags_history', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get history hashtags.'});
    });
});

app.get('/historytags/:month', function (req, res) {
    let hostname = req.protocol + '://' + req.get('host');
    let month_exemple = "052018";
    let hashtag_month = req.params.month;

    sql_connect.query('SELECT hashtag_content, month FROM hashtags_history WHERE month=?', hashtag_month, function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get history tags.', example: hostname + "/historytags/" + month_exemple });
    });
});

app.get('/:hashtag/:pseudo', function (req, res) {
    let hostname = req.protocol + '://' + req.get('host');
    let hashtag = req.params.hashtag;
    let pseudo = req.params.pseudo;

    let hashtag_exemple = "Karlspreis";
    let pseudo_exemple = "emmanuelmacron"; 

    sql_connect.query('SELECT COUNT(*) AS nombredetweets, h.content, u.pseudo FROM tweets t INNER JOIN hashtags h ON t.id = h.id_tweet INNER JOIN user u ON t.id_user = u.id WHERE h.content = ? AND u.pseudo = ?', [hashtag, pseudo], function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'Get count hashtag by person', example: hostname + "/" + hashtag_exemple + "/" + pseudo_exemple });
    });
});

app.on('error', function(err) {
    console.log("[mysql error]", err);
});

app.all("*", function (req, res) {
    return res.status(404).send('page not found')
});

app.listen(8080, function () {
	console.log('Node app is running on port 8080');
});