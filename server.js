const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const mysql = require('mysql');
const Sequelize = require('sequelize');
const http = require('http');
/*
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: true
});
*/

const PORT = process.env.PORT || 5000;
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World\n');
});
server.listen(PORT, () => {
  console.log(`Server running on ${PORT}/`);
});

/*
 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

app.set('view engine', 'pug');
 
const sql_connect = mysql.createConnection({
    host: 'localhost',
    user: 'user_api',
    password: 'apitwitter',
    database: 'twittanalyze'
});

sql_connect.connect();

const sequelize = new Sequelize('twittanalyze', 'root', 'root', {
  host: 'localhost',
  dialect: 'mysql',
  operatorsAliases: false,
  define: {
    timestamps: false,
    freezeTableName: true
  },
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  },
});

const User = sequelize.define('user', {
  name: {
    type: Sequelize.STRING
  },
  pseudo: {
    type: Sequelize.STRING
  },
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true

  }
});

const Tweet = sequelize.define('tweets', {
  id_user: {
    type: Sequelize.INTEGER
  },
  text: {
    type: Sequelize.TEXT
  },
  created_at: {
    type: Sequelize.DATE
  },
  date_ajout: {
    type: Sequelize.DATE
  },
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true

  }
});

const Wordcloud = sequelize.define('wordcloud', {
  weight: {
    type: Sequelize.STRING
  },
  word: {
    type: Sequelize.STRING
  },
  id_user: {
    type: Sequelize.INTEGER,
    primaryKey: true

  }
});

const HistoryTags = sequelize.define('hashtags_history', {
  month: {
    type: Sequelize.STRING
  },
  hashtag_content: {
    type: Sequelize.STRING
  },
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true

  }
});

// All routes
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
        "Affichage du nuage de mots d'une personnalité politique": hostname + "wordcloud/:id",
    };

    return res.send({ data: results, message: 'Get all routes' })
});

// Get all users
app.get('/front/users', function (req, res) {
    var personList = [];

    User.findAll().then(function(results) {
        for (var i = 0; i < results.length; i++) {

            var person = {
                'name':results[i].name,
                'pseudo':results[i].pseudo,
                'id':results[i].id
            }

            personList.push(person);
        }
        res.header('Cache-Control', 'public, max-age=3600');
        res.render('users', {"personList": personList});
    });
});

// Get wordcloud of one user
app.get('/front/wordcloud/:id', function (req, res) {

    var wordList = [];
    let user_id = req.params.id;

    if (user_id != ':id') {
        Wordcloud.findAll({ where: { id_user: user_id } }).then(function(results) {
            for (var i = 0; i < results.length; i++) {

                var word = {
                    'text':results[i].word,
                    'weight':results[i].weight
                }

                wordList.push(word);
            }
            res.header('Cache-Control', 'public, max-age=3600');
            res.render('wordcloud', {"wordList": wordList});
        });
    }
});

Tweet.belongsTo(User, {foreignKey: 'id_user'})

// Get user tweets
app.get('/front/user/:id/tweets', function (req, res) {

    var tweetList = [];
    let hostname = req.protocol + '://' + req.get('host');
    let user_id = req.params.id;
    let exemple_id = 1976143068;

    if (user_id != ':id') {
        Tweet.findAll({ where: { id_user: user_id } }).then(function(results) {
            for (var i = 0; i < results.length; i++) {

                // Create an object to save current row's data
                var tweets = {
                    'text':results[i].text
                }
                // Add object into array
                tweetList.push(tweets);
            }
            res.header('Cache-Control', 'public, max-age=3600');
            res.render('user-tweets', {"tweetList": tweetList});
        });
    }
});

// Get popular hashtags of the month
app.get('/front/popularhashtags', function (req, res) {

    var hashtagsList = [];
    
    sql_connect.query('SELECT content, COUNT(*) count FROM `hashtags` GROUP BY content ORDER BY count DESC LIMIT 10', function (error, results, fields) {
        if (error) { throw error; }
        else {
            for (var i = 0; i < results.length; i++) {

                // Create an object to save current row's data
                var hashtag = {
                    'content':results[i].content,
                    'count':results[i].count
                }
                // Add object into array
                hashtagsList.push(hashtag);
            }
            res.header('Cache-Control', 'public, max-age=3600');
            res.render('hashtags', {"hashtagsList": hashtagsList});
        }
    });
});

// Get all history hashtags
app.get('/front/historytags', function (req, res) {

    var hashtagsList = [];

    HistoryTags.findAll().then(function(results) {
        for (var i = 0; i < results.length; i++) {

            // Create an object to save current row's data
            var hashtag = {
                'content':results[i].hashtag_content,
                'month':results[i].month
            }
            // Add object into array
            hashtagsList.push(hashtag);
        }
        res.header('Cache-Control', 'public, max-age=3600');
        res.render('history-hashtags', {"hashtagsList": hashtagsList});
    });
});

// Get history hashtags per month
app.get('/front/historytags/:month', function (req, res) {

    var hashtagsList = [];

    let hostname = req.protocol + '://' + req.get('host');
    let month_exemple = "052018";
    let hashtag_month = req.params.month;

    if (hashtag_month != ':month') {
        HistoryTags.findAll({ where: { month: hashtag_month } }).then(function(results) {
            for (var i = 0; i < results.length; i++) {

                // Create an object to save current row's data
                var hashtag = {
                    'content':results[i].hashtag_content,
                    'month':results[i].month
                }
                // Add object into array
                hashtagsList.push(hashtag);
            }
            res.header('Cache-Control', 'public, max-age=3600');
            res.render('history-hashtags-month', {"hashtagsList": hashtagsList});
        });
    }
});

// Get count of using one hashtag by user
app.get('/front/:hashtag/:pseudo', function (req, res) {

    let hostname = req.protocol + '://' + req.get('host');
    let hashtag = req.params.hashtag;
    let pseudo = req.params.pseudo;

    let hashtag_exemple = "Karlspreis";
    let pseudo_exemple = "emmanuelmacron"; 

    if (hashtag != ':hashtag' && pseudo != ':pseudo')
    {
        sql_connect.query('SELECT COUNT(*) AS nombredetweets, h.content, u.pseudo FROM tweets t INNER JOIN hashtags h ON t.id = h.id_tweet INNER JOIN user u ON t.id_user = u.id WHERE h.content = ? AND u.pseudo = ?', [hashtag, pseudo], function (error, results, fields) {
            if (error) { throw error; }
            else {
                if(results.length==1) {
                    // Create the object to save the data.
                    var count = {
                        'count':results[0].nombredetweets,
                        'content':results[0].content,
                        'pseudo':results[0].pseudo
                    }
                    // render the details.plug page.
                    res.header('Cache-Control', 'public, max-age=3600');
                    res.render('hashtag-user', {"count": count});
                } else {
                    // render not found page
                    res.status(404).json({"status_code":404, "status_message": "Not found"});
                }
            }
        });
    }
});

// Get all users
app.get('/users', function (req, res) {
    User.findAll().then(function(results) 
    {
        res.header('Cache-Control', 'public, max-age=3600');
        res.send({ error: false, data: results, message: 'Get all users.' });
    });
});
 
// Get one user information
app.get('/user/:id', function (req, res) {
    let hostname = req.protocol + '://' + req.get('host');
    let user_id = req.params.id;
    let exemple_id = 1976143068;

    if (user_id != ':id') {
        User.findById(user_id).then(function(results) {
            res.header('Cache-Control', 'public, max-age=3600');
            res.send({ error: false, data: results, message: 'Get one user information.', example: hostname + "/user/" + exemple_id });
        });
    }
    else {
        res.send({ error: true, message: 'Get one user information.', example: hostname + "/user/" + exemple_id });
    }
});

// Get wordcloud of one user
app.get('/wordcloud/:id', function (req, res) {
    let hostname = req.protocol + '://' + req.get('host');
    let user_id = req.params.id;
    let exemple_id = 1976143068;

    if (user_id != ':id') {
        Wordcloud.findAll({ where: { id_user: user_id } }).then(function(results) {
            res.header('Cache-Control', 'public, max-age=3600');
            res.send({ error: false, data: results, message: 'Get word cloud of a user.', example: hostname + "/wordcloud/" + exemple_id });
        });
    }
    else {
        res.send({ error: true, message: 'Get word cloud of one user.', example: hostname + "/wordcloud/" + exemple_id });
    }
});

// Get user tweets
app.get('/user/:id/tweets', function (req, res) {
    let hostname = req.protocol + '://' + req.get('host');
    let user_id = req.params.id;
    let exemple_id = 1976143068;

    if (user_id != ':id') {
        Tweet.findAll({ where: { id_user: user_id } }).then(function(results) {        
            res.header('Cache-Control', 'public, max-age=3600');
            res.send({ error: false, data: results, message: 'Get tweets of one user.' , example: hostname + "/user/" + exemple_id + "/tweets/" });
        });
    }
    else {
        res.send({ error: true, message: 'Get tweets of one user.' , example: hostname + "/user/" + exemple_id + "/tweets/" });
    }
});

// Get popular hashtags of the month
app.get('/popularhashtags', function (req, res) {
    sql_connect.query('SELECT content, COUNT(*) count FROM `hashtags` GROUP BY content ORDER BY count DESC LIMIT 10', function (error, results, fields) {
        if (error) throw error;
        res.header('Cache-Control', 'public, max-age=3600');
        res.send({ error: false, data: results, message: 'Get 10 more popular hashtags.' });
    });
});

// Get all history hashtags
app.get('/historytags', function (req, res) {
    HistoryTags.findAll().then(function(results) {
        res.header('Cache-Control', 'public, max-age=3600');
        res.send({ error: false, data: results, message: 'Get history hashtags.'});
    });
});

// Get history hashtags per month
app.get('/historytags/:month', function (req, res) {
    let hostname = req.protocol + '://' + req.get('host');
    let month_exemple = "052018";
    let hashtag_month = req.params.month;

    if (hashtag_month != ':month') {
        HistoryTags.findAll({ where: { month: hashtag_month } }).then(function(results) {
            res.header('Cache-Control', 'public, max-age=3600');
            res.send({ error: false, data: results, message: 'Get history tags.', example: hostname + "/historytags/" + month_exemple });
        });
    }
    else {
        res.send({ error: true, message: 'Get history tags.', example: hostname + "/historytags/" + month_exemple })
    }
});

// Get count of using one hashtag by user
app.get('/:hashtag/:pseudo', function (req, res) {
    let hostname = req.protocol + '://' + req.get('host');
    let hashtag = req.params.hashtag;
    let pseudo = req.params.pseudo;

    let hashtag_exemple = "Karlspreis";
    let pseudo_exemple = "emmanuelmacron"; 

    if (hashtag != ':hashtag' && pseudo != ':pseudo')
    {
        sql_connect.query('SELECT COUNT(*) AS nombredetweets, h.content, u.pseudo FROM tweets t INNER JOIN hashtags h ON t.id = h.id_tweet INNER JOIN user u ON t.id_user = u.id WHERE h.content = ? AND u.pseudo = ?', [hashtag, pseudo], function (error, results, fields) {
            if (error) throw error;
            res.header('Cache-Control', 'public, max-age=3600');
            res.send({ error: false, data: results, message: 'Get count hashtag by person', example: hostname + "/" + hashtag_exemple + "/" + pseudo_exemple });
        });
    }
    else {
        res.send({ error: true, message: 'Get count hashtag by person', example: hostname + "/" + hashtag_exemple + "/" + pseudo_exemple });
    }
});

app.on('error', function(err) {
    console.log("[mysql error]", err);
});

app.all("*", function (req, res) {
    return res.status(404).send('Page not found')
});

app.listen(8080	, function () {
	console.log('Node app is running on port 8080');
});
*/