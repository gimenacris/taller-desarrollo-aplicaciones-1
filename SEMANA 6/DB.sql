CREATE DATABASE gestion_carnets;
USE gestion_carnets;

-- Tabla de facultades
CREATE TABLE facultades (
    codigofacultad CHAR(8) PRIMARY KEY,
    nombrefacultad VARCHAR(100) NOT NULL
);

-- Tabla de carreras
CREATE TABLE carreras (
    codigocarrera CHAR(8) PRIMARY KEY,
    nombrecarrera VARCHAR(100) NOT NULL,
    codigofacultad CHAR(8) NOT NULL,
    FOREIGN KEY (codigofacultad) REFERENCES facultades(codigofacultad)
);

-- Tabla de carnets (estudiantes)
CREATE TABLE carnets (
    codigo VARCHAR(10) PRIMARY KEY,
    dni VARCHAR(15) NOT NULL UNIQUE,
    nombre_completo VARCHAR(100) NOT NULL,
    codigocarrera CHAR(8) NOT NULL,
    FOREIGN KEY (codigocarrera) REFERENCES carreras(codigocarrera)
);

INSERT INTO facultades (codigofacultad, nombrefacultad) VALUES 
('FAC001', 'Ciencias administrativas y contables'),
('FAC002', 'Derecho y ciencias políticas'),
('FAC003', 'Ingeniería'),
('FAC004', 'Ciencias de la Salud'),
('FAC005', 'Medicina Humana');

-- FACULTAD: Ciencias administrativas y contables
INSERT INTO carreras (codigocarrera, nombrecarrera, codigofacultad) VALUES
('CAR001', 'Administración', 'FAC001'),
('CAR002', 'Administración e Inteligencia de Negocios', 'FAC001'),
('CAR003', 'Administración y Negocios Globales', 'FAC001'),
('CAR004', 'Administración y Gestión del Talento Humano', 'FAC001'),
('CAR005', 'Contabilidad y Finanzas', 'FAC001');

-- FACULTAD: Derecho y ciencias políticas
INSERT INTO carreras (codigocarrera, nombrecarrera, codigofacultad) VALUES
('CAR006', 'Derecho', 'FAC002'),
('CAR007', 'Educación Inicial', 'FAC002'),
('CAR008', 'Educación Primaria', 'FAC002');

-- FACULTAD: Ingeniería
INSERT INTO carreras (codigocarrera, nombrecarrera, codigofacultad) VALUES
('CAR009', 'Arquitectura', 'FAC003'),
('CAR010', 'Ingeniería Civil', 'FAC003'),
('CAR011', 'Ingeniería Industrial', 'FAC003'),
('CAR012', 'Ingeniería del Medio Ambiente y Desarrollo', 'FAC003'),
('CAR013', 'Ingeniería de Sistemas y Computación', 'FAC003');

-- FACULTAD: Ciencias de la Salud
INSERT INTO carreras (codigocarrera, nombrecarrera, codigofacultad) VALUES
('CAR014', 'Enfermería', 'FAC004'),
('CAR015', 'Farmacia y Bioquímica', 'FAC004'),
('CAR016', 'Medicina Veterinaria y Zootecnia', 'FAC004'),
('CAR017', 'Nutrición Humana', 'FAC004'),
('CAR018', 'Obstetricia', 'FAC004'),
('CAR019', 'Odontología', 'FAC004'),
('CAR020', 'Psicología', 'FAC004'),
('CAR021', 'Tecnología Médica', 'FAC004');

-- FACULTAD: Medicina Humana
INSERT INTO carreras (codigocarrera, nombrecarrera, codigofacultad) VALUES
('CAR022', 'Medicina Humana', 'FAC005');
