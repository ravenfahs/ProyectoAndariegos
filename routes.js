const { request, response } = require('express');
const express = require('express');
const bcrypt = require('bcryptjs');
const { check, validationResult, Result} = require('express-validator');

const routes = express.Router();

///////////////////////////////////////////
/////////////usuario///////////////////////
///////////////////////////////////////////

//rutas para obtener datos desde mysql
routes.get('/listausuario',(request,response)=>{
    console.log("lista usuarios..");
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('select * from usuario', (error, filas)=>{
            if(error) return response.send(error);
            response.json(filas);
            console.log(filas);	
        });
    });
});

//para enviar datos a mysql
routes.post('/insertarusuario',[
    check('nombre', 'Debe digitar su Nombre, es obliglatorio...').not().isEmpty(),
    check('telefono', 'Debe digitar su Telefono, es obliglatorio...').not().isEmpty(),
    check('correo', 'Debe digitar su Correo de forma correcta, es obliglatorio...').isEmail(),
    check('password','Debe digitar su Password, es obliglatorio...').not().isEmpty()
    ],(request,response)=>{
    const errVali = validationResult(request);
        if (!errVali.isEmpty()){
            return response.status(422).json({errores: errVali.array()});
        }
    console.log(request.body);
    request.body.password = bcrypt.hashSync(request.body.password,2);
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('select correo from usuario where correo =?',[request.body.correo],(error,filas)=>{
            if(error){
                return response.send(error);
            }
            console.log(filas);
            if(filas=='') conn.query('insert into usuario set ?',[request.body],(error, filas)=>{
                if(error) return response.send(error);
                    response.json("Usuario registrado...");
                    console.log("Usuario registrado...");
            })    
            else {
                    response.json('Hoops. Su correo ya esta registrado...');
                    console.log('Hoops. Su correo ya esta registrado...');     
                }              
        });                
    }); 
});
    
//actualizar datos en mysqk
routes.put('/actualizarusuario/:idusuario',(request,response)=>{
    //response.send("home de usuario");
    console.log(request.body);
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('update usuario set ? where idusuario=?',[request.body,request.params.idusuario],(error, filas)=>{
            if(error) return response.send(error);
            response.send("Usuario actualizado...")
        });
    });
});

//borrar un dato de la base de datos
routes.delete('/borrarusuario/:idusuario',(request,response)=>{
    console.log("borrar");
    //response.send("home de usuario");
    console.log(request.body);
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('delete from usuario where idusuario=?',[request.params.idusuario],(error, filas)=>{
            if(error) return response.send(error);
            response.send("Usuario borrado...")
        });
    });
});
///////////////////////////////////////////
/////////////rutas///////////////////////
///////////////////////////////////////////

routes.get('/listaruta',(request,response)=>{
    console.log("lista rutas..");
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('select * from rutas', (error, filas)=>{
            if(error) return response.send(error);
            response.json(filas);
            console.log(filas);	
        });
    });
});

//para enviar datos a mysql
routes.post('/insertaruta',(request,response)=>{
    console.log(request.body);
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('insert into rutas set ?',[request.body],(error, filas)=>{
            if(error) return response.send(error);
            response.send("Ruta Registrada...")
        });
    });
});

//actualizar datos en mysqk
routes.put('/actualizaruta/:idrutas',(request,response)=>{
    //response.send("home de usuario");
    console.log(request.body);
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('update rutas set ? where idrutas=?',[request.body,request.params.idrutas],(error, filas)=>{
            if(error) return response.send("No se puedo actualizar"+error);
            response.send("Ruta actualizada...")
        });
    });
});

//borrar un dato de la base de datos
routes.delete('/borraruta/:idrutas',(request,response)=>{
    console.log("borrar");
    //response.send("home de usuario");
    console.log(request.body);
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('delete from rutas where idrutas=?',[request.params.idrutas],(error, filas)=>{
            if(error) return response.send(error);
            response.send("Ruta borrada...")
        });
    });
});

///////////////////////////////////////////
/////////////reserva///////////////////////
///////////////////////////////////////////

routes.get('/listareserva',(request,response)=>{
    console.log("lista reservas..");
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('select * from reserva', (error, filas)=>{
            if(error) return response.send(error);
            response.json(filas);
            console.log(filas);	
        });
    });
});

//para enviar datos a mysql
routes.post('/insertareserva',(request,response)=>{
    console.log(request.body);
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('insert into reserva set ?',[request.body],(error, filas)=>{
            if(error) return response.send(error);
            response.send("Reserva registrada...")
        });
    });
});

//actualizar datos en mysqk
routes.put('/actualizareserva/:idreserva',(request,response)=>{
    //response.send("home de usuario");
    console.log(request.body);
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('update reserva set ? where idreserva=?',[request.body,request.params.idreserva],(error, filas)=>{
            if(error) return response.send(error);
            response.send("Reserva actualizada...")
        });
    });
});

//borrar un dato de la base de datos
routes.delete('/borrareserva/:idreserva',(request,response)=>{
    console.log("borrar");
    //response.send("home de usuario");
    console.log(request.body);
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('delete from reserva where idreserva=?',[request.params.idreserva],(error, filas)=>{
            if(error) return response.send(error);
            response.send("Reserva borrada...")
        });
    });
});


///////////////////////////////////////////
/////////////login///////////////////////
///////////////////////////////////////////

routes.post('/login',(request,response)=>{
    request.getConnection((error,conn)=>{
        if(error) return response.send(error);
        conn.query('select * from usuario where correo =?',[request.body.correo],(error,filas)=>{
            if(error) return response.send(error);
            if (filas==""){
                console.log("El usuario no existe...");
                response.send("El usuario no existe...");
            }
            else {
                const entrar = bcrypt.compareSync(request.body.password, filas[0].password);
                if (entrar){
                    
                    console.log("Bienvenido...");
                    response.send("Bienvenido...");
                }
                else{
                    console.log("El password esta errrado...");
                response.send("El password esta errrado...");
                }
            }
        });                    
    }); 
});

module.exports=routes;
