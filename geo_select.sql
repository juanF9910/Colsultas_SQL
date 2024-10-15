USE metro_cdmx;

-- Calculamos en metros con datos quemados
--ST_Distance_Sphere es una función que calcula la distancia entre dos puntos en metros.
SELECT ST_Distance_Sphere( 
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) AS distance;


-- Calculamos en kilometros con datos quemados
SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) / 1000 AS distance;


--calculamos en kimometros con consultas anidadas

SELECT ST_Distance_Sphere(
    
    (SELECT location 
        FROM locations
        INNER JOIN stations 
            ON stations.id = locations.station_id
        WHERE stations.name = 'Balderas'),
    (
        SELECT location 
        FROM locations
        INNER JOIN stations 
            ON stations.id = locations.station_id
        WHERE stations.name = 'Pino Suarez'
    )
) /1000 AS distacia_anidada; 