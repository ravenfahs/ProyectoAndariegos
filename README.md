# ProyectoAndariegos
Demo_api_rest:
Es una aplicacion oriendada a personas o empresas que tengan como negocio el ecoturismo, actividades al aire libre como el senderismo, ciclismo, avistamiento de aves, en la que pueden promacionar y caracterizar sus rutas, y mostar sus lugares de visita, en este caso, solo se tomaron las caracteristicas mas relevantes como:  Distancia, Duración del recorrido, Dificultad, Actividades, Ficha técnica, Indumentaria. esta informacion la pueden ver todo publico, solo se desarrallaron la parte de modificar las rutas y mostrarlas, por el momento se cuentra abierta para que se pueda modificar por cualqquier usuario, tambien se encuentra desarrollado la parte hacer reservas. 

EL proyecto esta constituido en tres pastes:
1.  un base de datos Mysql que se puede instanciar de forma local o remota (se configura el servidor).
2.  Un servidor node que contienes estas depencias. "Axios": "^0.24.0", bcryptjs": "^2.4.3", "body-parser": "^1.20.0", "cors": "^2.8.5", "ejs": "^3.1.8",       "express": "^4.18.1", "express-myconnection": "^1.0.4", "express-validator": "^6.14.2", "mysql2": "^2.3.3". ademas cuentas con varios puntos de accesos     en el archivo request.http, en el archivo routes.js se encuntran las acciones CRUD de app, esta implemtado hasta el logeo de usuarios, 
3.  La parte de grafica se desarrallada utilizando React-Native, y la programancion en componentes. las dependencias utilizadas son   "@react-                 navigation/bottom-tabs": "^6.4.0", "@react-navigation/drawer": "^6.1.8", "@react-navigation/native": "^6.0.6", "@react-navigation/native-stack":           "^6.9.0", "@react-navigation/stack": "^6.0.11", "axios": "^0.24.0", "react": "17.0.2", "react-native": "0.66.3", "react-native-drop-shadow": "0.0.2",       "react-native-gesture-handler": "^2.0.0", "react-native-reanimated": "^2.2.4", "react-native-safe-area-context": "^3.3.2", "react-native-screens": "^3.9.0", "react-native-vector-icons": "^9.0.0", "react-native-webview": "^11.15.0", "react-native-youtube-iframe": "^2.2.1" 

funcionalides:
1. Registro de usuarios
2. Restrio de nuevoas rutas.
3. Actualizacionde rutas:
   Se puede cargar una imagen del lugar, se puedo cargar rutas hechas en con google maps, en este caso, se hicieron las rutas se hizo tiempo para la web con google.map y se lenvantaron los puntos,  
Registro de usuarios y algo más, proyecto de OB
La app está construida en un servidor node, una base  de datos muy básica en MySQl
La parte de front está hecha en react native, no la puede desplegar por falta de tiempo
Se pude descargar, pero toca configurar los puntos de acceso, local puede funcionar 
https://drive.google.com/file/d/12E0Fwi5w1nnegu3I83vu6j8h8VLGiIFY/view?usp=drivesdk
