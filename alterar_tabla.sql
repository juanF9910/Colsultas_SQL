USE metro_cdmx; 

ALTER TABLE `stations`
MODIFY COLUMN `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY(`id`);

--TAMBIÈN SE PUEDEN USAR LOS COMANDOS
--ADD CONSTRAINT `stations_id_primary` PRIMARY KEY (`id`);
--ADD FOREIGN KEY (`line_id`) REFERENCES `linea` (`id`);
--