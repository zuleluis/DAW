-- 1. Listar matrícula, nombre, carrera y semestre de TODOS los alumnos que están en la universidad
SELECT matricula, concat(nombre,' ', apPaterno,' ', apMaterno) as nombre, ClaveCarrera.nombreCarrera, semestre FROM Alumnos
JOIN ClaveCarrera on Alumnos.claveCarrera = ClaveCarrera.idCarrera;


-- 2. Concatenar nombre y apelidos de la tabla PROFESORES y ordenar por apellido paterno
SELECT concat(nombre, ' ', apPaterno, ' ', apMaterno) as Nombre FROM Profesores
ORDER BY apPaterno


-- 3. Listar matrícula y nombre de los alumnos de las carreras de 'IINF' y 'MCTR'
SELECT matricula, concat(nombre, ' ', apPaterno, ' ', apMaterno) AS Nombre FROM Alumnos
WHERE claveCarrera = 'IINF' OR claveCarrera = 'MCTR'


-- 4. Ver todos los datos de los alumnos cuya edad sea de 22 años
SELECT * FROM Alumnos
WHERE edad = 22


-- 5. Ver los distintos turnos en los que se imparten los cursos
SELECT nrc, Materias.nombre, horario FROM Cursos
JOIN Materias on Cursos.fkMateria = Materias.codigo


-- 6. Ver los cursos donde los maestros sean 'Yuliana Berumen Díaz' y 'Luis Felipe Marín Urías'
SELECT nrc, Materias.nombre, concat(profesores.nombre, ' ', profesores.apPaterno, ' ', profesores.apMaterno) as Profesor FROM Cursos
JOIN Materias on Cursos.fkMateria = Materias.codigo
JOIN Profesores on Cursos.fkProfesor = Profesores.numControl
WHERE concat(profesores.nombre, ' ', profesores.apPaterno, ' ', profesores.apMaterno) LIKE 'Yuliana Berumen Díaz'
OR concat(profesores.nombre, ' ', profesores.apPaterno, ' ', profesores.apMaterno) LIKE 'Luis Felipe Marín Urías'


-- 7. Ver las matrículas de los alumnos cuyas calificaciones no están entre 10, 9 y 8
SELECT fkMatricula as Matricula, calificacion FROM CursoAlumno
WHERE calificacion < 8



-- 8. Describir los datos de la tabla Alumnos
SELECT column_name, data_type FROM information_schema.columns
WHERE table_name = 'alumnos'



-- 9. Ver toda la información de los profesores cuya materia sea diferente de "Diseño de Aplicaciones Web"
SELECT Profesores.* FROM Cursos
JOIN Materias on Cursos.fkMateria = Materias.codigo
JOIN Profesores on Cursos.fkProfesor = Profesores.numControl
WHERE Materias.nombre NOT LIKE 'Diseño de Aplicaciones Web'
GROUP BY numControl


-- 10. Listar código de curso, nombre materia, hora y salón de todas las materias que se están impartiendo
SELECT Cursos.nrc, Materias.nombre, Cursos.horario, Salones.lugar FROM CursoSalon
JOIN Cursos on CursoSalon.fkCurso = Cursos.nrc
JOIN Salones on CursoSalon.fkSalon = Salones.codSalon
JOIN Materias on Cursos.fkMateria = Materias.codigo
GROUP BY Cursos.nrc, Salones.lugar, Materias.nombre


-- 11. Ver nombre y edad de los alumnos cuya edad sea mayor a 18 años
SELECT concat(nombre, ' ', apPaterno, ' ', apMaterno) as Nombre, edad FROM Alumnos
WHERE edad > 18


-- 12. Listar matrícula y nombre de los alumnos que están con la profesora 'Rosa María Woo' en la materia de 'Microprocesadores y Microcontroladores'
SELECT Alumnos.matricula, concat(Alumnos.nombre,' ', Alumnos.apPaterno,' ', Alumnos.apMaterno) as nombre FROM CursoAlumno
JOIN Alumnos on CursoAlumno.fkMatricula = Alumnos.matricula
JOIN Cursos on CursoAlumno.fkCurso = Cursos.nrc
JOIN Profesores on Cursos.fkProfesor = Profesores.numControl
JOIN Materias on Cursos.fkMateria = Materias.codigo
WHERE concat(Profesores.nombre, ' ', Profesores.apPaterno) LIKE 'Rosa María Woo'
AND Materias.nombre = 'Microprocesadores y Microcontroladores'


-- 13. Ver matrículas de los alumnos cuyas calificaciones estén entre 7 y 8
SELECT fkMatricula as Matricula, calificacion FROM CursoAlumno
WHERE calificacion BETWEEN 7 AND 8


-- 14. Listar matrícula y nombre de los alumnos que estén cursando la materia de "Cálculo de una variable" en el curso con NRC "95040"
SELECT Alumnos.matricula, concat(Alumnos.nombre,' ', Alumnos.apPaterno,' ', Alumnos.apMaterno) as nombre FROM CursoAlumno
JOIN Alumnos on CursoAlumno.fkMatricula = Alumnos.matricula
JOIN Cursos on CursoAlumno.fkCurso = Cursos.nrc
JOIN Materias on Cursos.fkMateria = Materias.codigo
WHERE Materias.nombre = 'Cálculo de una Variable'
AND Cursos.nrc = '95040'


-- 15. Mostrar el nombre completo de los profesores
SELECT concat(nombre, ' ', apPaterno, ' ', apMaterno) as "Nombre Completo" FROM Profesores


-- 16. Mostrar la longitud del nombre completo de los profesores
SELECT length(concat(nombre, ' ', apPaterno, ' ', apMaterno)) as Longitud FROM Profesores


-- 17. Mostrar la lada de los teléfonos de los alumnos
SELECT (telefono).lada as "Lada Alumnos" FROM Alumnos


-- 18. Mostrar la fecha de nacimiento de los alumnos con el siguiente formato: Año - Día - Mes ('yyyy-dd-mm')
SELECT to_char(fechaNac,'YYYY/DD/MM') FROM Alumnos


-- 19. Mostrar la fecha del jueves siguiente de la fecha de nacimiento de los alumnos
SELECT fechaNac, fechaNac + cast(abs(extract(dow FROM fechaNac) - 7) + 4 AS int) AS "Jueves próximo" FROM Alumnos


-- 20. Mostrar la calificación promedio de los alumnos
SELECT avg(calificacion) as Promedio FROM CursoAlumno


-- 21. Mostrar la cantidad de profesores
SELECT count(numControl) as "Cantidad de Profesores" FROM Profesores


-- 22. Mostrar la calificación más alta de los alumnos
SELECT calificacion FROM CursoAlumno
WHERE calificacion is not null
ORDER BY calificacion DESC
LIMIT 1


-- 23. Mostrar la calificación más baja de los alumnos
SELECT calificacion FROM CursoAlumno
WHERE calificacion is not null
ORDER BY calificacion
LIMIT 1


-- 24. Mostrar a los alumnos cuya calificación es superior al promedio
SELECT concat(Alumnos.nombre,' ', Alumnos.apPaterno,' ', Alumnos.apMaterno) as nombre, calificacion FROM CursoAlumno
JOIN Alumnos on CursoAlumno.fkMatricula = Alumnos.matricula
WHERE calificacion > (SELECT avg(calificacion) FROM CursoAlumno)


-- 25. Mostrar a los alumnos y los cursos que toman
SELECT concat(Alumnos.nombre,' ', Alumnos.apPaterno,' ', Alumnos.apMaterno) as nombre, Materias.nombre, Cursos.horario, concat(Profesores.nombre, ' ', Profesores.apPaterno, ' ', Profesores.apMaterno) as Profesor FROM CursoAlumno
JOIN Alumnos on CursoAlumno.fkMatricula = Alumnos.matricula
JOIN Cursos on CursoAlumno.fkCurso = Cursos.nrc
JOIN Materias on Cursos.fkMateria = Materias.codigo
JOIN Profesores on Cursos.fkProfesor = Profesores.numControl
ORDER BY Alumnos.matricula


-- 26. Mostrar los alumnos cuyo nombre empiece con "E"
SELECT concat(nombre,' ', apPaterno,' ', apMaterno) as Nombre FROM Alumnos
WHERE nombre LIKE 'E%'


-- 27. Mostrar todos los alumnos tengan o no curso asignado
SELECT concat(nombre,' ', apPaterno,' ', apMaterno) as Nombre FROM Alumnos


-- 28. Mostrar todos los cursos tengan o no alumnos asignados
SELECT nrc, Materias.nombre, concat(Profesores.nombre, ' ', Profesores.apPaterno, ' ', Profesores.apMaterno) as Profesor FROM Cursos
JOIN Materias on Cursos.fkMateria = Materias.codigo
JOIN Profesores on Cursos.fkProfesor = Profesores.numControl