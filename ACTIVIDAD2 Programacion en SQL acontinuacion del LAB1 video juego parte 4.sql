-- ACTIVIDAD2 PROGRAMACION CON SQL
USE videojuegos;

-- 1.	Insertar, al menos, cinco filas en cada una de las tablas,
-- de tal forma que haya algunos jugadores que estén inscritos en las
-- competiciones y otros que no lo estén; unos jugadores inscritos en una
-- sola competición y otros inscritos en varias; que haya jueces arbitrando 
-- en las competiciones y otros que no lo hagan; y que haya varias competiciones de cada tipo.

-- insercion de datos a la tabla cp
insert into cp values('0006','venecia','véneto');
insert into cp values('0007','paris','Íle de francia');
insert into cp values('0008','kioto','kansai');
insert into cp values('0009','ciudad del cabo','Cabo Occidental');
insert into cp values('0010','Río de Janeiro','Estado de Río de Janeiro');
insert into cp values('0011','berlín','Berlín');
insert into cp values('0012','nairobi','Nairobi');
insert into cp values('0013','sídney','Nueva Gales del Sur');
insert into cp values('0014','moscú','Óblast de Moscú');
insert into cp values('0015','toronto','Ontario');
insert into cp values('0016','mumbai','Maharashtra');
insert into cp values('0017','estambul','Provincia de Estambul');
insert into cp values('0018','bangkok','Bangkok');
insert into cp values('0019','atenas','Ática');
insert into cp values('0020','lisboa','Lisboa');
insert into cp values('0021','dublín','Leinster');
insert into cp values('0022','praga','Bohemia');
insert into cp values('0023','budapest','Hungría Central');
insert into cp values('0024','varsovia','Mazovia');
insert into cp values('0025','helsinki','Uusimaa');

-- insercion de datos a la tabla 
insert into juez values ('J106','Marcos Andrade');
insert into juez values ('J107','Lucía Torres');
insert into juez values ('J108','Fernando Molina');
insert into juez values ('J109','Patricia Guzmán');
insert into juez values ('J110','Diego Herrera');
insert into juez values ('J111','Andrea Cárdenas');
insert into juez values ('J112','Roberto Salinas');
insert into juez values ('J113','Gabriela Ríos');
insert into juez values ('J114','Héctor Zambrano');
insert into juez values ('J115','Mónica Aguilar');
insert into juez values ('J116','Javier Pjuezaredes');
insert into juez values ('J117','Daniela López');
insert into juez values ('J118','Esteban Castillo');
insert into juez values ('J119','Paola Sánchez');
insert into juez values ('J120','Ricardo Núñez');
insert into juez values ('J121','Valeria Ortiz');
insert into juez values ('J122','Mauricio Delgado');
insert into juez values ('J123','Camila Espinoza');
insert into juez values ('J124','Francisco Medina');
insert into juez values ('J125','Sofía Villalba');

----------------------------------------------------------------------------------------------------
-- Para poder realizar la insercion de datos a esta tabla se debe relizar los siguientes cambios
-- cambio del tipo de dato de una columna en la estructura de la tabla anteriormente solo aceptaba hasta 3 caracteres con esta modificacion admite actualmente hasta 10.
alter table tipocompeticion 
modify nombreTipo CHAR(10) not null;

-- actualizacion de la restriccion check
ALTER TABLE tipoCompeticion 
DROP CHECK nombreTipo_tipoCompeticion_ck;

ALTER TABLE tipoCompeticion 
ADD CONSTRAINT nombreTipo_tipoCompeticion_ck
CHECK (nombreTipo IN (
  'LOC','REG','NAC','MUN','ninguna','INT','LAN','ONL','ESL','PRO','AMA',
  '1VS1','TEAM','COOP','BATTLE','SPEED','STRAT','FPS','MOBA','RPG','FIGHT',
  'SPORT','CARD','PUZZ','SIM','ARCADE'
));
 
-- Posterior a estas modificacion se puede insertar datos a la tabla 
-- Insercion de datos en la tabla tipocompeticion
INSERT INTO tipoCompeticion VALUES ('T000','Ninguna');
INSERT INTO tipocompeticion VALUES ('T006','LAN');   -- Torneo en red local (LAN Party)
INSERT INTO tipoCompeticion VALUES ('T007','ONL');   -- Online
INSERT INTO tipoCompeticion VALUES ('T008','ESL');   -- Liga eSports
INSERT INTO tipoCompeticion VALUES ('T009','PRO');   -- Profesional
INSERT INTO tipoCompeticion VALUES ('T010','AMA');   -- Amateur
INSERT INTO tipoCompeticion VALUES ('T011','1VS1');  -- Duelo individual
INSERT INTO tipoCompeticion VALUES ('T012','TEAM');  -- Competición por equipos
INSERT INTO tipoCompeticion VALUES ('T013','COOP');  -- Cooperativa
INSERT INTO tipoCompeticion VALUES ('T014','BATTLE');-- Battle Royale
INSERT INTO tipoCompeticion VALUES ('T015','SPEED'); -- Speedrun
INSERT INTO tipoCompeticion VALUES ('T016','STRAT'); -- Estrategia
INSERT INTO tipoCompeticion VALUES ('T017','FPS');   -- First Person Shooter
INSERT INTO tipoCompeticion VALUES ('T018','MOBA');  -- Multiplayer Online Battle Arena
INSERT INTO tipoCompeticion VALUES ('T019','RPG');   -- Role Playing Game
INSERT INTO tipoCompeticion VALUES ('T020','FIGHT'); -- Juegos de pelea
INSERT INTO tipoCompeticion VALUES ('T021','SPORT'); -- Deportes electrónicos
INSERT INTO tipoCompeticion VALUES ('T022','CARD');  -- Juegos de cartas digitales
INSERT INTO tipoCompeticion VALUES ('T023','PUZZ');  -- Puzzles competitivos
INSERT INTO tipoCompeticion VALUES ('T024','SIM');   -- Simulación
INSERT INTO tipoCompeticion VALUES ('T025','ARCADE');-- Arcade competitivo

-- Inserción de datos a la tabla desarrolladora
INSERT INTO desarrolladora VALUES ('D006','Capcom','Japón');
INSERT INTO desarrolladora VALUES ('D007','Sega','Japón');
INSERT INTO desarrolladora VALUES ('D008','Bandai Namco','Japón');
INSERT INTO desarrolladora VALUES ('D009','Konami','Japón');
INSERT INTO desarrolladora VALUES ('D010','Electronic Arts','EEUU');
INSERT INTO desarrolladora VALUES ('D011','Activision','EEUU');
INSERT INTO desarrolladora VALUES ('D012','Bethesda','EEUU');
INSERT INTO desarrolladora VALUES ('D013','CD Projekt Red','Polonia');
INSERT INTO desarrolladora VALUES ('D014','Epic Games','EEUU');
INSERT INTO desarrolladora VALUES ('D015','Blizzard Entertainment','EEUU');
INSERT INTO desarrolladora VALUES ('D016','Insomniac Games','EEUU');
INSERT INTO desarrolladora VALUES ('D017','343 Industries','EEUU');
INSERT INTO desarrolladora VALUES ('D018','Guerrilla Games','Países Bajos');
INSERT INTO desarrolladora VALUES ('D019','Remedy Entertainment','Finlandia');
INSERT INTO desarrolladora VALUES ('D020','FromSoftware','Japón');
INSERT INTO desarrolladora VALUES ('D021','Monolith Soft','Japón');
INSERT INTO desarrolladora VALUES ('D022','Naughty Dog','EEUU');
INSERT INTO desarrolladora VALUES ('D023','PlatinumGames','Japón');
INSERT INTO desarrolladora VALUES ('D024','Treyarch','EEUU');
INSERT INTO desarrolladora VALUES ('D025','id Software','EEUU');

-- Inserción de datos a la tabla jugador
INSERT INTO jugador VALUES ('U006','Sofía Ramírez','Av. Quito 789','0006','0941122334');
INSERT INTO jugador VALUES ('U007','Andrés Castillo','Calle Bolívar 12','0007','0935566778');
INSERT INTO jugador VALUES ('U008','Paola Sánchez','Av. Universitaria 321','0008','0929988776');
INSERT INTO jugador VALUES ('U009','Jorge Herrera','Calle Sucre 45','0009','0911234567');
INSERT INTO jugador VALUES ('U010','Gabriela Ríos','Av. Patria 678','0010','0907654321');
INSERT INTO jugador VALUES ('U011','Ricardo Núñez','Barrio Norte','0011','0998765432');
INSERT INTO jugador VALUES ('U012','Daniela López','Av. República 234','0012','0983344556');
INSERT INTO jugador VALUES ('U013','Esteban Castillo','Calle 9 de Octubre','0013','0972233445');
INSERT INTO jugador VALUES ('U014','Mónica Aguilar','Av. América 567','0014','0964455667');
INSERT INTO jugador VALUES ('U015','Héctor Zambrano','Barrio Sur','0015','0956677889');
INSERT INTO jugador VALUES ('U016','Lucía Torres','Av. Gran Colombia','0016','0947788990');
INSERT INTO jugador VALUES ('U017','Fernando Molina','Calle Maldonado 89','0017','0938899001');
INSERT INTO jugador VALUES ('U018','Patricia Guzmán','Av. Mariana de Jesús','0018','0929900112');
INSERT INTO jugador VALUES ('U019','Diego Herrera','Calle Chile 56','0019','0910011223');
INSERT INTO jugador VALUES ('U020','Andrea Cárdenas','Av. Naciones Unidas','0020','0901122334');
INSERT INTO jugador VALUES ('U021','Roberto Salinas','Barrio La Floresta','0021','0992233445');
INSERT INTO jugador VALUES ('U022','Gabriela Ríos','Av. 12 de Octubre','0022','0983344556');
INSERT INTO jugador VALUES ('U023','Javier Piqueredases','Calle Mejía 78','0023','0974455667');
INSERT INTO jugador VALUES ('U024','Esteban Castillo','Av. Shyris 890','0024','0965566778');
INSERT INTO jugador VALUES ('U025','Paola Sánchez','Barrio El Inca','0025','0956677889');

-- Inserción de datos a la tabla juego
INSERT INTO juego VALUES ('G006','Resident Evil','PEGI 18','D006');
INSERT INTO juego VALUES ('G007','Sonic the Hedgehog','PEGI 3','D007');
INSERT INTO juego VALUES ('G008','Tekken','PEGI 16','D008');
INSERT INTO juego VALUES ('G009','Metal Gear Solid','PEGI 18','D009');
INSERT INTO juego VALUES ('G010','FIFA 25','PEGI 3','D010');
INSERT INTO juego VALUES ('G011','Call of Duty','PEGI 18','D011');
INSERT INTO juego VALUES ('G012','Elder Skyrim','PEGI 18','D012');
INSERT INTO juego VALUES ('G013','The Witcher 3','PEGI 18','D013');
INSERT INTO juego VALUES ('G014','Fortnite','PEGI 12','D014');
INSERT INTO juego VALUES ('G015','World of Warcraft','PEGI 12','D015');
INSERT INTO juego VALUES ('G016','Spider-Man','PEGI 16','D016');
INSERT INTO juego VALUES ('G017','Halo Infinite','PEGI 16','D017');
INSERT INTO juego VALUES ('G018','Horizon Zero Dawn','PEGI 16','D018');
INSERT INTO juego VALUES ('G019','Control','PEGI 16','D019');
INSERT INTO juego VALUES ('G020','Dark Souls','PEGI 16','D020');
INSERT INTO juego VALUES ('G021','Xenoblade Chronicles','PEGI 12','D021');
INSERT INTO juego VALUES ('G022','The Last of Us','PEGI 18','D022');
INSERT INTO juego VALUES ('G023','Bayonetta','PEGI 16','D023');
INSERT INTO juego VALUES ('G024','Call of Duty Black','PEGI 18','D024');
INSERT INTO juego VALUES ('G025','DOOM Eternal','PEGI 18','D025');

-- insercion de datos en la tabla
