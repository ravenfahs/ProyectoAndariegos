const {response} = require('express');
const express = require('express');
const cors = require('cors');
    
const app = express();
app.use(cors());

//conexion a la base de datos mysql
const mysql = require('mysql2');
const mycon = require('express-myconnection');
const routes = require('./routes.js');

//parametros de la base de datos
const parametrosdb = {
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'XXXXX', //configurar password de base de datos
    database: 'andariegos'
}; 


//conectarse a la base de datos
app.use(mycon(mysql,parametrosdb,'single'));

//recibir el Json
app.use(express.json());

//cargar rutas
app.use('/andariegos',routes);

app.set('port',9000);


//servicio
app.listen(app.get('port'),()=>{
    console.log(`Servidor coriendo por puesto ${app.get('port')}`)
});

