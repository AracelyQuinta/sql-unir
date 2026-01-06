 -- 3
USE videojuegos;

-- Borra el contenido de la tabla

-- 1. Desactiva temporalmente la revisión de claves foráneas
SET FOREIGN_KEY_CHECKS = 0;

-- 2. Elimina los datos de la tabla "nieta"
DELETE FROM inscripcion;

-- 3. Elimina los datos de la tabla "hija"
DELETE FROM competicion;

-- 4. Elimina los datos de la tabla "padre" original
DELETE FROM tipocompeticion;

-- 5. Vuelve a activar las comprobaciones de claves foráneas (MUY IMPORTANTE)
SET FOREIGN_KEY_CHECKS = 1;

-- 6. Vuelve a activar el modo seguro de Workbench
SET SQL_SAFE_UPDATES = 1;

-------------------------------------------------------------------------------------- 
-- borra algunas de las filas de otra tabla de acuerdo con alguna condición. 
DELETE FROM inscripcion WHERE idCom = 'C001';
DELETE FROM inscripcion WHERE idCom = 'C003';

-- ERROR NO SE PUEDE ELIMINAR UNA TABLA PADRE CON DATOS
DELETE FROM desarrolladora WHERE idDes ='D001';

--- Para poder borrar una fila de una tabla padre
-- 1. Eliminar los videojuegos asociados a 'D001'
DELETE FROM juego WHERE idDes = 'D001';

-- 2. Ahora sí puedes eliminar la desarrolladora 'D001'
DELETE FROM desarrolladora WHERE idDes = 'D001';

--- DUPLICACION DE LA TABLA JUEZ
CREATE TABLE juez_duplicacion LIKE juez;

--- BORRAR TABLA INSCRIPCION
DROP TABLE inscripcion;
 


