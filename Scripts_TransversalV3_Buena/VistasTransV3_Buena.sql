/*Vista para mostrar la información detallada de eventos:*/

CREATE VIEW vista_detalle_eventos AS
SELECT e.*, l.nombre_lugar, g.nombre_genero, u.nombre as nombre_promotor, u.correo_electronico as correo_promotor
FROM eventos e
JOIN lugares l ON e.id_lugar = l.id_lugar
JOIN generos_musicales g ON e.id_genero = g.id_genero
JOIN usuarios u ON e.promotor = u.id_usuario;

/*Vista para mostrar los eventos futuros y ordenados por fecha:*/

CREATE VIEW vista_eventos_futuros AS
SELECT e.*, l.nombre_lugar, g.nombre_genero
FROM eventos e
JOIN lugares l ON e.id_lugar = l.id_lugar
JOIN generos_musicales g ON e.id_genero = g.id_genero
WHERE e.fecha >= CURDATE()
ORDER BY e.fecha;
