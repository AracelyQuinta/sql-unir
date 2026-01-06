
-- 1/  --
USE videojuego;

-- Tabla cp
CREATE TABLE cp (
  idcp CHAR(4) NOT NULL PRIMARY KEY,
  ciudad VARCHAR(50) NOT NULL,
  provincia VARCHAR(30) NOT NULL
);

-- Tabla juez
CREATE TABLE juez(
  idJuez CHAR(4) NOT NULL PRIMARY KEY,
  nombreJue VARCHAR(20) NOT NULL
);

-- Tabla tipoCompeticion
CREATE TABLE tipoCompeticion (
  idTipo CHAR(4) NOT NULL PRIMARY KEY,
  nombreTipo CHAR(3) NOT NULL,
  CONSTRAINT nombreTipo_tipoCompeticion_ck
    CHECK (nombreTipo IN ('LOC','REG','NAC','MUN'))
);

-- Tabla desarrolladora
CREATE TABLE desarrolladora (
  idDes CHAR(4) NOT NULL PRIMARY KEY,
  nombreDes VARCHAR(30) NOT NULL,
  pais VARCHAR(30) NOT NULL
);

-- Tabla jugador
CREATE TABLE jugador (
  idJug CHAR(4) NOT NULL PRIMARY KEY,
  nombreJug VARCHAR(20) NOT NULL,
  direccionJug VARCHAR(30) NOT NULL,
  cp CHAR(4) NOT NULL,
  tlfJug CHAR(10) NOT NULL,
  CONSTRAINT cp_jugador_fk
    FOREIGN KEY (cp) REFERENCES cp(idcp)
);

-- Tabla juego
CREATE TABLE juego (
  idJue CHAR(4) NOT NULL PRIMARY KEY,
  nombreJue VARCHAR(20) NOT NULL,
  pegi VARCHAR(20) NOT NULL,
  idDes CHAR(4) NOT NULL,
  CONSTRAINT idDes_juego_fk
    FOREIGN KEY (idDes) REFERENCES desarrolladora(idDes)
);

-- Tabla competicion
CREATE TABLE competicion(
  idCom CHAR(4) NOT NULL PRIMARY KEY,
  nombreCom VARCHAR(20) NOT NULL,
  idTipo CHAR(4) NOT NULL,
  cp CHAR(4) NOT NULL,
  fecha DATE NOT NULL,
  importeIns DECIMAL(6,2) NOT NULL,
  idJuez CHAR(4) NOT NULL,
  CONSTRAINT importeIns_ck CHECK (importeIns >= 0),
  CONSTRAINT idTipo_competicion_fk
    FOREIGN KEY (idTipo) REFERENCES tipoCompeticion(idTipo),
  CONSTRAINT cp_competicion_fk
    FOREIGN KEY (cp) REFERENCES cp(idcp),
  CONSTRAINT idJuez_juez_fk
    FOREIGN KEY (idJuez) REFERENCES juez(idJuez)
);

-- Tabla inscripcion
CREATE TABLE inscripcion (
  idCom CHAR(4) NOT NULL,
  idJug CHAR(4) NOT NULL,
  fechaInsc DATE NOT NULL,
  PRIMARY KEY (idCom, idJug),
  CONSTRAINT idComp_inscripcion_fk
    FOREIGN KEY (idCom) REFERENCES competicion(idCom),
  CONSTRAINT idJug_juez_fk
    FOREIGN KEY (idJug) REFERENCES jugador(idJug)
);

