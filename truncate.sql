USE metro_cdmx;


TRUNCATE TABLE `stations_delete`;

-- Esto es para que vean cómo un delete from NO reestablece los id, 
-- sino que los sigue incrementando desde el último valor que tenía la tabla antes de hacer el delete
--mientras que TRUNCATE FROM reestablece los id a 1 y sigue incrementando desde ahí 
INSERT INTO `stations_delete` (name) VALUES
("Lázaro Cárdens"), -- Lázaro Cárdenas
("Ferería"), -- Ferrería 
("Pnttlán"), -- Pantitlán
("Tauga"), -- Tacuba
("MartínCrrera"); -- Martín Carrera  