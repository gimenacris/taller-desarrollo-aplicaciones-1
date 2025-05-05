CREATE DATABASE IF NOT EXISTS gestion_carnets;
USE gestion_carnets;

CREATE TABLE IF NOT EXISTS carnets (
    codigo VARCHAR(10) PRIMARY KEY,
    dni VARCHAR(15) NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    facultad VARCHAR(100) NOT NULL,
    carrera VARCHAR(100) NOT NULL
);
