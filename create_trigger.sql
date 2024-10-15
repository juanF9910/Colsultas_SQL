USE metro_cdmx;

--el trigger se activa antes de que se inserte un nuevo registro
--en la tabla lines y actualiza el campo updated_at con la fecha y hora actual
CREATE TRIGGER update_updated_at_field
BEFORE UPDATE
ON `lines`
FOR EACH ROW
SET NEW.updated_at = NOW();