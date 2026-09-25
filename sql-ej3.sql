
-- 1. Crear la base de datos de la facultad
CREATE DATABASE SUI;

-- 2. Decirle a MySQL que use esta base de datos
USE SUI;

-- 1. Tabla ALUMNOS
CREATE TABLE ALUMNOS (
    NroA INT NOT NULL PRIMARY KEY,
    NbreA VARCHAR(50) NOT NULL,
    DirA VARCHAR(50) 
);

-- 2. Tabla MATERIAS
CREATE TABLE MATERIAS (
    MCod INT NOT NULL PRIMARY KEY,
    MNbre VARCHAR(50) NOT NULL,
    MCHs INT NOT NULL,
    MCuat INT NOT NULL
);

-- 3. Tabla REGULARES (con clave compuesta y Foreign Keys)
CREATE TABLE REGULARES (
    MCod INT NOT NULL,
    NroA INT NOT NULL,
    Fecha DATE NOT NULL,
    PRIMARY KEY (MCod, NroA),
    FOREIGN KEY (MCod) REFERENCES MATERIAS(MCod),
    FOREIGN KEY (NroA) REFERENCES ALUMNOS(NroA)
);
-- INSERTO LOS ALUMNOS
INSERT INTO ALUMNOS (NroA, NbreA, DirA) 
VALUES ('100', 'María Celi,', 'sucre 100'),
('200','Juan Páez','España 200'),
('300','Ana Mica','Junin 123'),
('400','Juana Nohe','Caseros 345');
-- inserto las MATERIAS
INSERT INTO MATERIAS(MCod,MNbre,MCHs,MCuat)
VALUES ('10','Base de datos','5','2'),
('20','Programación 1','6','1'),
('30','Lógica','2','3'),
('40','Programación 2','4','2'),
('50','Álgebra','6','1');
-- inserto REGULARES
INSERT INTO REGULARES (MCod, NroA, Fecha) 
VALUES (10, 100, '2021-07-01'), 
    (20, 100, '2022-11-30'), 
    (10, 300, '2021-07-10');

-- 5. Ver visualmente los datos guardados
SELECT *FROM ALUMNOS;
select * from MATERIAS;
select *FROM REGULARES;

