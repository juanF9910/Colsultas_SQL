USE metro_cdmx;

-- Seleccionar todo
SELECT * FROM `lines`;

-- Filtrar por columnas
SELECT id, name, color 
FROM `lines`;


-- Operaciones matemáticas con SELECT

SELECT (2 + 2); --muestra 4 en la consola

SELECT (2 + 2) AS resultado; --muestra resultado: 4 en la consola

SELECT AVG(year) 
FROM `trains`;

SELECT AVG(year) AS year_avg 
FROM `trains`;

-- Juntar tablas

SELECT
`lines`.`name`, --es otra forma de indicar que se quiere seleccionar la columna name de la tabla lines, aunque es màs corto usar el l.name y t.serial_number 
--en lugar de lines.name y trains.serial_number usando el alias l y t son AS l y AS t
`trains`.`serial_number`
FROM `lines`
INNER JOIN `trains`
ON `lines`.`id` = `trains`.`line_id`;
