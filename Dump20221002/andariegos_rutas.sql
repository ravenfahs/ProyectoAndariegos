-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: andariegos
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `rutas`
--

DROP TABLE IF EXISTS `rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutas` (
  `idrutas` int NOT NULL AUTO_INCREMENT,
  `nombre_ruta` varchar(45) DEFAULT NULL,
  `descripcion` text,
  `urlmapa` varchar(400) DEFAULT NULL,
  `distancia` varchar(45) DEFAULT NULL,
  `duracionrecorrido` varchar(45) DEFAULT NULL,
  `actividades` varchar(100) DEFAULT NULL,
  `fichatecnica` text,
  `indumentaria` varchar(400) DEFAULT NULL,
  `urlfotos` varchar(400) DEFAULT NULL,
  `dificultad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrutas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutas`
--

LOCK TABLES `rutas` WRITE;
/*!40000 ALTER TABLE `rutas` DISABLE KEYS */;
INSERT INTO `rutas` VALUES (1,'Recorrido la chorrera','Se encuentra a 8.4 k','https://www.google.com/maps/d/viewer?mid=1GEEcpdvrYTJqNzE54r_pZQ1AhX1925Jq&ll=1.0751910100129853%2C-77.57867650000001&z=15','1.3 kilómetros.','2 horas.','Avistamiento de aves, Senderismo.','Inclinación max: 27.3%, -19.%. Inclinación prom: 7%, -6.6%.','hidratación. Ropa cómoda','https://andariegos.com.co/wp-content/uploads/2019/07/IMG_20190630_113452si-1024x768.jpg','Media.'),(2,'Recorrido la chorrera','Se encuentra a 8.4 kilómetros del municipio de Túquerres, vía a Imues, en el centro poblado los Arrayanes, se toma el punto A como está en el mapa para llegar al punto al punto B que es una distancia de 2.5 km. Desde este punto encontramos una variada vegetación, flora y fauna, sus principales atractivos son las lagunas, las cuales están cubiertas por algas (Totora), que le dan el color característico rojo y además hay una laguna de color verde. Recorrido que se lo realiza en los alrededores de la Laguna incluido la cascada. Los sitios más interesantes la Laguna roja coloración por sus algas abundante vegetación con diferentes especies de Aves. Y una corriente de agua que termina en una hermosa cascada. Desde este sendero se puede observar el municipio de opina, y su geografía montañosa con espectaculares paisajes. Se encuentra a 8.4 kilómetros del municipio de Túquerres, vía a Imues, en el centro poblado los Arrayanes, se toma el punto A como está en el mapa para llegar al punto al punto B que es una distancia de 2.5 km.Desde este punto encontramos una variada vegetación, flora y fauna, sus principales atractivos son las lagunas, las cuales están cubiertas por algas (Totora), que le dan el color característico rojo y además hay una laguna de color verde. Recorrido que se lo realiza en los alrededores de la Laguna incluido la cascada. Los sitios más interesantes la Laguna roja coloración por sus algas abundante vegetación con diferentes especies de Aves. Y una corriente de agua que termina en una hermosa cascada. Desde este sendero se puede observar el municipio de opina, y su geografía montañosa con espectaculares paisajes.','https://www.google.com/maps/d/viewer?mid=1GEEcpdvrYTJqNzE54r_pZQ1AhX1925Jq&ll=1.0751910100129853%2C-77.57867650000001&z=15','1.3 kilómetros.','2 horas.','Avistamiento de aves, Senderismo.','Inclinación max: 27.3%, -19.%. Inclinación prom: 7%, -6.6%.','hidratación. Ropa cómoda','http://3.bp.blogspot.com/-vGY8EK5zPo8/Ue63qGLfDXI/AAAAAAAABOg/hkRYU4BNeMI/s320/chorrera+tuqueres+narino.jpg','Media.'),(3,'Recorrido la chorrera','Se encuentra a 8.4 kilómetros del municipio de Túquerres, vía a Imues, en el centro poblado los Arrayanes, se toma el punto A como está en el mapa para llegar al punto al punto B que es una distancia de 2.5 km. Desde este punto encontramos una variada vegetación, flora y fauna, sus principales atractivos son las lagunas, las cuales están cubiertas por algas (Totora), que le dan el color característico rojo y además hay una laguna de color verde. Recorrido que se lo realiza en los alrededores de la Laguna incluido la cascada. Los sitios más interesantes la Laguna roja coloración por sus algas abundante vegetación con diferentes especies de Aves. Y una corriente de agua que termina en una hermosa cascada. Desde este sendero se puede observar el municipio de opina, y su geografía montañosa con espectaculares paisajes. Se encuentra a 8.4 kilómetros del municipio de Túquerres, vía a Imues, en el centro poblado los Arrayanes, se toma el punto A como está en el mapa para llegar al punto al punto B que es una distancia de 2.5 km.Desde este punto encontramos una variada vegetación, flora y fauna, sus principales atractivos son las lagunas, las cuales están cubiertas por algas (Totora), que le dan el color característico rojo y además hay una laguna de color verde. Recorrido que se lo realiza en los alrededores de la Laguna incluido la cascada. Los sitios más interesantes la Laguna roja coloración por sus algas abundante vegetación con diferentes especies de Aves. Y una corriente de agua que termina en una hermosa cascada. Desde este sendero se puede observar el municipio de opina, y su geografía montañosa con espectaculares paisajes.','https://www.google.com/maps/d/viewer?mid=1GEEcpdvrYTJqNzE54r_pZQ1AhX1925Jq&ll=1.0751910100129853%2C-77.57867650000001&z=15','1.3 kilómetros.','2 horas.','Avistamiento de aves, Senderismo.','Clima: Templado. Inicio: 2787 msnm. Altura máxima del recorrido: es 2822 msnm a una distancia de recorrido de 531m. Altura fin de la ruta: 2788 msnm. Distancia: 1.30.km. Ganancia/perdida de elevación: 46.3 m. -46.1 m. Inclinación max: 27.3%, -19.%. Inclinación prom: 7%, -6.6%.','hidratación. Ropa cómoda','https://andariegos.com.co/wp-content/uploads/2019/07/IMG_20190630_113452si-1024x768.jpg','Media.'),(5,'Recorrido la chorrera\n','Se encuentra a 8.4 k','https://www.google.com/maps/d/viewer?mid=1GEEcpdvrYTJqNzE54r_pZQ1AhX1925Jq&ll=1.0751910100129853%2C-77.57867650000001&z=15','1.3 kilómetros.','2 horas.','Avistamiento de aves, Senderismo.','Inclinación max: 27.3%, -19.%. Inclinación prom: 7%, -6.6%.','hidratación. Ropa cómoda','https://andariegos.com.co/wp-content/uploads/2019/07/IMG_20190630_113452si-1024x768.jpg','Media.'),(6,'Recorrido uno','R','H','4km','2 horas','Caminata','Hjjjh','Calzado','J','Alta'),(7,'Prueba','Prueba','Prueba','1','1','Prueba','Prueba','Prueba','Prueba','Media');
/*!40000 ALTER TABLE `rutas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-02 10:25:20
