USE metro_cdmx;

-- Modo DELETE FROM

DELETE FROM `stations_delete`;

-- Esto es para que vean cómo un delete from NO reestablece los id, 
-- sino que los sigue incrementando desde el último valor que tenía la tabla antes de hacer el delete
INSERT INTO `stations_delete` (name) VALUES
("Lázaro Cárdens"), -- Lázaro Cárdenas
("Ferería"), -- Ferrería 
("Pnttlán"), -- Pantitlán
("Tauga"), -- Tacuba
("MartínCrrera"); -- Martín Carrera  