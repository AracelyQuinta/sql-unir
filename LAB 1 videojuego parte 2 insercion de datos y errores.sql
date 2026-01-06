-- 2/
use videojuego;

-- Inserciones de datos a la tabla
-- cp
INSERT INTO cp VALUES ('0001','Nueva Loja','Sucumbios');
INSERT INTO cp VALUES ('0002','Bogotá','Cundinamarca');
INSERT INTO cp VALUES ('0003','Barcelona','Barcelona');
INSERT INTO cp VALUES ('0004','Lumbaqui','Sucumbios');
INSERT INTO cp VALUES ('0005','Quito','Pichincha');

-- ERRORES DE CLAVE(CLAVE PRIMARIA) REPETIDA
insert into cp VALUES ('0001','Nueva Loja','Sucumbios');

-- ERRORES NOT NULL
insert into cp(idcp,ciudad,provincia) values('0006','Cuenca',NULL);

-- juez
INSERT INTO juez VALUES ('J101','Juan Alberto');
INSERT INTO juez VALUES ('J102','Carla Pérez');
INSERT INTO juez VALUES ('J103','Alejandro Vaca');
INSERT INTO juez VALUES ('J104','Jess Pesantes');
INSERT INTO juez VALUES ('J105','Sarai Pedreros');

-- ERRORES DE CLAVE(CLAVE PRIMARIA) REPETIDA
insert into juez VALUES ('J101','Juan Alberto');

-- ERRORES NOT NULL
insert into juez(idjuez,nombreJue) values('J200',NULL);

-- tipoCompeticion
INSERT INTO tipoCompeticion VALUES ('T001','LOC');
INSERT INTO tipoCompeticion VALUES ('T002','REG');
INSERT INTO tipoCompeticion VALUES ('T003','NAC');
INSERT INTO tipoCompeticion VALUES ('T004','MUN');
INSERT INTO tipoCompeticion VALUES ('T005','REG');

-- ERRORES DE CLAVE(CLAVE PRIMARIA) REPETIDA
insert into tipoCompeticion VALUES ('T001','LOC');

-- ERRORES NOT NULL
insert into tipoCompeticion(idTipo,nombreTipo) values('T008',NULL);

-- desarrolladora
INSERT INTO desarrolladora VALUES ('D001','Nintendo','Japón');
INSERT INTO desarrolladora VALUES ('D002','Ubisoft','Francia');
INSERT INTO desarrolladora VALUES ('D003','Rockstar','EEUU');
INSERT INTO desarrolladora VALUES ('D004','SquareEnix','Japón');
INSERT INTO desarrolladora VALUES ('D005','Valve','EEUU');

-- ERRORES DE CLAVE(CLAVE PRIMARIA) REPETIDA
insert into desarrolladora VALUES ('D001','Nintendo','Japón');

-- ERRORES NOT NULL
insert into desarrolladora(idDes,nombreDes,pais) values('D030',NULL ,NULL);

-- jugador (cp debe existir en cp)
INSERT INTO jugador VALUES ('U001','Carlos Pérez','Av. Amazonas 123','0001','0991234567');
INSERT INTO jugador VALUES ('U002','María López','Calle 45 #10','0002','0987654321');
INSERT INTO jugador VALUES ('U003','José Martínez','Diagonal 80','0003','0971122334');
INSERT INTO jugador VALUES ('U004','Ana Torres','Barrio Central','0004','0965566778');
INSERT INTO jugador VALUES ('U005','Luis Gómez','Av. Colón 456','0005','0959988776');

-- ERRORES DE CLAVE(CLAVE PRIMARIA) REPETIDA
insert into jugador VALUES ('U002','María López','Calle 45 #10','0002','0987654321');

-- ERRORES NOT NULL
insert into jugador(idJug,nombreJug,direccionJug,cp,tlfJug) values('U010','Jose Gallegos',NULL,'1001',NULL);

-- juego (idDes debe existir en desarrolladora)
INSERT INTO juego VALUES ('G001','Mario Kart','PEGI 3','D001');
INSERT INTO juego VALUES ('G002','Assassin Creed','PEGI 18','D002');
INSERT INTO juego VALUES ('G003','GTA V','PEGI 18','D003');
INSERT INTO juego VALUES ('G004','Final Fantasy','PEGI 16','D004');
INSERT INTO juego VALUES ('G005','Counter Strike','PEGI 16','D005');

-- ERRORES DE CLAVE(CLAVE PRIMARIA) REPETIDA
insert into juego VALUES ('G004','Final Fantasy','PEGI 16','D004');

-- ERRORES NOT NULL
insert into juego(idJue,nombreJue,pegi,idDes) values('G100','ROLLEL',NULL,'D001');

-- competicion (idTipo, cp, idJuez deben existir; importeIns positivo)
INSERT INTO competicion VALUES ('C001','Copa Local T1','T001','0001','2025-01-10',10.00,'J101');
INSERT INTO competicion VALUES ('C002','Regional Norte','T002','0002','2025-02-15',15.50,'J102');
INSERT INTO competicion VALUES ('C003','Nacional 2025','T003','0003','2025-03-20',25.00,'J103');
INSERT INTO competicion VALUES ('C004','Municipal BCN','T004','0003','2025-04-05',8.00,'J104');
INSERT INTO competicion VALUES ('C005','Copa Quito','T002','0005','2025-05-12',12.75,'J105');

-- ERRORES DE CLAVE(CLAVE PRIMARIA) REPETIDA
INSERT INTO competicion VALUES ('C001','Copa Local T1','T001','0001','2025-01-10',10.00,'J101');

-- ERRORES NOT NULL
insert into competicion(idDes,nombreDes,pais) values('D030',NULL ,NULL);

-- inscripcion (idComp e idJug deben existir; importeIns positivo)
INSERT INTO inscripcion VALUES ('C001','U001','2025-01-05');
INSERT INTO inscripcion VALUES ('C002','U002','2025-01-06');
INSERT INTO inscripcion VALUES ('C003','U003','2025-02-10');
INSERT INTO inscripcion VALUES ('C004','U004','2025-03-18');
INSERT INTO inscripcion VALUES ('C005','U005','2025-04-01');

-- ERRORES DE CLAVE(CLAVE PRIMARIA) REPETIDA
INSERT INTO inscripcion VALUES ('C001','U001','2025-01-05');

-- ERRORES NOT NULL
insert into inscripcion(idCom,idJug,fechaInsc) values('C112','U111',NULL);
