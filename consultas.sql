-- Llenar la tabla alumno_fragmento1 con los registros cuyo código está entre 1 y 1000
INSERT INTO alumno_fragmento1 
SELECT * FROM alumno WHERE codigo <= 1000;

-- Llenar la tabla alumno_fragmento2 con los registros cuyo código está entre 1001 y 2000
INSERT INTO alumno_fragmento2 
SELECT * FROM alumno WHERE codigo > 1000;

-- Crear vista para la fragmentación horizontal
CREATE VIEW alumno_fragmentacion AS
SELECT * FROM alumno_fragmento1
UNION ALL
SELECT * FROM alumno_fragmento2;


-- Consultar la vista para obtener la fragmentación horizontal
SELECT * FROM alumno_fragmentacion;


