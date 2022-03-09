const express = require('express');
var app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static('public'));

const getConnection = require('./secret/password.js');
app.post('/url',function(req,res){
    let key = makeid(10);
    let data = req.body.data;
    if(data == []){
        res.sendStatus(400);
        return;
    }
    getConnection((connection)=>{
        connection.query('INSERT INTO url(url, data) VALUES(?,?);',[key,data],function(error, results, fields){
            if(error){
                console.log(error);
                res.sendStatus(500);
            }else{
                res.send(key);
            }
        });
        connection.release();
    })
    
});

app.get('/:id',function(req,res){
    getConnection((connection)=>{
        connection.query('SELECT data FROM url WHERE url = ?;',[req.params.id],function(error, results, fields){
            if(error){
                console.log(error);
                res.sendStatus(500);
            }else{
                if(results.length>0){
                    res.redirect(results[0].data);
                }else{
                    res.sendStatus(404);
                }
            }
        });
        connection.release();
    })
    
})

app.listen(11001);

function makeid(length) {
    var result           = '';
    var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;
    for ( var i = 0; i < length; i++ ) {
       result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result;
 }
 