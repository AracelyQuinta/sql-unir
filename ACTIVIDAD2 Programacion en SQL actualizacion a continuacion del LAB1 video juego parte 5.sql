-- ACTIVIDAD2 PROGRAMACION CON SQL parte 2
use videojuego;
-- ACTUALIZACIÓN ---------------------------------------------------------

-- 1.	Actualizar el importe de inscripción de todas las competiciones, 
-- aumentando un 5 %. Lo mejor aquí sería que, además de la captura de la ejecución,
-- muestres un select * de la tabla antes y otro después,
-- para que se pueda comprobar que se ha realizado correctamente.

SELECT * FROM videojuego.competicion;
update competicion set importeIns = importeIns*1.05;
SELECT * FROM videojuego.competicion;