INSERT INTO TipoContrato(nombreTipo) VALUES
('Planta'),
('Tiempo Completo'),
('Medio Tiempo'),
('Asignatura');

INSERT INTO TipoEstudios(nombreTipo) VALUES
('Licenciatura'),
('Maestría'),
('Doctorado');

INSERT INTO ClaveCarrera(idCarrera, nombreCarrera) VALUES
('IINF', 'Ingenieria Informática'),
('MCTR', 'Ingenieria Mecatrónica'),
('ELEC', 'Ingenieria Eléctrica'),
('ELCO', 'Ingenieria en Electrónica y Comunicaciones'),
('ININ', 'Ingenieria Industrial'),
('NAVA', 'Ingenieria Naval'),
('IME', 'Ingenieria Mecánica'),
('ARQ', 'Arquitectura'),
('IC', 'Ingenieria Civil'),
('ITG', 'Ingenieria Topográfica'),
('IQ', 'Ingenieria Química'),
('IMCM', 'Ingenieria Metalúrgica y Ciencias de los Materiales');

INSERT INTO TipoMateria(nombreTipo) VALUES
('Teórica'),
('Teórico/Práctica'),
('Práctica');

INSERT INTO Meses(nombreMes) VALUES
('Enero'),
('Febrero'),
('Marzo'),
('Abril'),
('Mayo'),
('Junio'),
('Julio'),
('Agosto'),
('Septiembre'),
('Octubre'),
('Noviembre'),
('Diciembre');
 
INSERT INTO Profesores(nombre, apPaterno, apMaterno, tipoContrato, materiaEsp, direccion, telefono, celular, tipoEstudios, email, fechaNac, lugarEstudios) VALUES
('Yuliana', 'Berumen', 'Díaz', 2, 'Diseño Web', ROW('Calle Uno', 10, 'Colonia Uno'), ROW('229', '5556677'), ROW('229', '1234554'), 2, 'yberumen@uv.mx', '1982-06-12', 'Universidad Autónoma de Baja California'),
('Luis Felipe', 'Marín', 'Urías', 2, 'Inteligencia Artificial', ROW('Calle Uno', 10, 'Colonia Uno'), ROW('229', '9998877'), ROW('229', '4561122'), 3, 'luismarin@uv.mx', '1982-09-02', 'Universidad Veracruzana'),
('Diana Ivette', 'Montejo', 'Arroyo', 2, 'Ingeniería de Software', ROW('Calle Dos', 23, 'Colonia Dos'), ROW('229', '1112345'), ROW('229', '2223456'), 2, 'dmontejo@uv.mx', '1982-04-20', 'Instituto Tecnológico de Veracruz'),
('Carlos Arturo', 'Cerón', 'Álvarez', 2, 'Redes de Computadoras', ROW('Calle Tres', 43, 'Colonia Tres'), ROW('229', '1450099'), ROW('229', '1452222'), 3, 'cceron@uv.mx', '1982-11-11', 'Universidad Cristóbal Colón'),
('Gonzalo Antonio', 'Sosa', 'Málaga', 2, 'Aplicaciones Móviles', ROW('Calle Cuatro', 54, 'Colonia Cuatro'), ROW('229', '1112233'), ROW('229', '2233344'), 2, 'gsosa@uv.mx', '1982-01-03', 'Universidad Veracruzana'),
('Abigail', 'Zamora', 'Hernández', 2, 'Bases de Datos', ROW('Calle Cinco', 33, 'Colonia Cinco'), ROW('229', '1233211'), ROW('229', '2345678'), 3, 'azamora@uv.mx', '1982-12-15', 'Universidad Veracruzana'),
('Rosa María', 'Woo', 'García', 1, 'Microprocesadores', ROW('Calle Seis', 10, 'Colonia Seis'), ROW('229', '8499999'), ROW('229', '5463212'), 2, 'rmwoo@uv.mx', '1982-05-17', 'Universidad Veracruzana'),
('Josue Shinoe', 'Munguia', 'Tiburcio', 4, 'Redes de Computadoras', ROW('Calle Siete', 88, 'Colonia Siete'), ROW('229', '1111111'), ROW('229', '3332145'), 2, 'jomunguia@uv.mx', '1982-03-30', 'Universidad Veracruzana'),
('José Manuel', 'Cartas', 'Sánchez', 4, 'Tecnologías Móviles', ROW('Calle Ocho', 33, 'Colonia Ocho'), ROW('229', '2223344'), ROW('229', '1230988'), 3, 'mcartas@uv.mx', '1982-08-16', 'Universidad Veracruzana'),
('Mario', 'Herrera', 'Cortés', 2, 'Control', ROW('Calle Nueve', 9, 'Colonia Nueve'), ROW('229', '1101122'), ROW('229', '3457667'), 2, 'mherrera@uv.mx', '1982-11-03', 'Universidad Veracruzana'),
('Estela del Carmen', 'Fernández', 'Rodríguez', 2, 'Sustentabilidad', ROW('Calle Diez', 99, 'Colonia Diez'), ROW('229', '1110001'), ROW('229', '9991919'), 3, 'esfernandez@uv.mx', '1982-04-24', 'Universidad Veracruzana');

INSERT INTO Alumnos(semestre, claveCarrera, nombre, apPaterno, apMaterno, fechaNac, celular, telefono, direccion, email, beca) VALUES
(10, 'IINF', 'Olga Guadalupe', 'Alarcón', 'Montero', '1999-02-24', ROW('229', '2222222'), ROW('229', '2322323'), ROW('Calle Primero', 1, 'Colonia Primero'),'olalarcon@uv.mx','Jóvenes Escribiendo el Futuro'),
(8, 'MCTR', 'Lorenzo Antonio', 'Alcocer', 'Bautista', '2001-11-11', ROW('229', '3334444'), ROW('229', '3334343'), ROW('Calle Segundo', 2, 'Colonia Segundo'), 'loalcocer@uv.mx','Manutención SUBES'),
(10, 'ELCO', 'Eduardo', 'Cervantes', 'Saavedra', '1999-10-08', ROW('229', '4445555'), ROW('229', '4444545'), ROW('Calle Tercero', 3, 'Colonia Tercero'), 'edcervantes@uv.mx','Manutención SUBES'),
(6, 'IINF', 'Edith', 'Colorado', 'Morales', '2001-09-02', ROW('229', '5556666'), ROW('229', '5556656'), ROW('Calle Cuarto', 4, 'Colonia Cuarto'), 'ecolorado@uv.mx','Jóvenes Escribiendo el Futuro'),
(8, 'IINF', 'José Pablo', 'Cortés', 'Riera', '1999-12-10', ROW('229', '6667777'), ROW('229', '6667676'), ROW('Calle Quinto', 5, 'Colonia Quinto'), 'jpcortes@uv.mx','Manutención SUBES'),
(6, 'ININ', 'Julio César', 'Cortéz', 'Moreno', '2001-04-13', ROW('229', '7778888'), ROW('229', '7778787'), ROW('Calle Sexto', 6, 'Colonia Sexto'), 'jccortez@uv.mx','Manutención SUBES'),
(6, 'MCTR', 'Carlos Eduardo', 'Espinoza', 'Chapa', '2001-02-14', ROW('229', '8889999'), ROW('229', '8889898'), ROW('Calle Septimo', 7, 'Colonia Septimo'), 'cespinoza@uv.mx','Estímulo Reconocimiento Artístico'),
(8, 'MCTR', 'Jonathan', 'Ferto', 'de los Ríos', '2000-10-15', ROW('229', '9990000'), ROW('229', '9990909'), ROW('Calle Octavo', 8, 'Colonia Octavo'), 'joferto@uv.mx','Manutención SUBES'),
(8, 'IQ', 'Alfredo Jesús', 'Herrera', 'Acevedo', '2000-08-24', ROW('229', '0001111'), ROW('229', '0001010'), ROW('Calle Noveno', 9, 'Colonia Noveno'), 'alherrera@uv.mx','Estimulo Reconocimiento Académico'), 
(6, 'ININ', 'Damara Elizabeth', 'Herrera', 'Sánchez', '2001-05-30', ROW('229', '1110000'), ROW('229', '1110101'), ROW('Calle Décimo', 10, 'Colonia Décimo'), 'damherrera@uv.mx','Manutención SUBES'), 
(8, 'NAVA', 'Joel', 'Jácome', 'Pioquinto', '2000-05-23', ROW('229', '2229999'), ROW('229', '2229292'), ROW('Calle Primero', 11, 'Colonia Primero'), 'jojacome@uv.mx','Manutención SUBES'), 
(6, 'MCTR', 'Roberto', 'Lagunes', 'Álvarez', '2001-06-02', ROW('229', '3338888'), ROW('229', '3338383'), ROW('Calle Segundo', 12, 'Colonia Segundo'), 'rlagunes@uv.mx','Manutención SUBES'), 
(8, 'IINF', 'Zulema Concepción', 'Luis', 'Cruz', '2000-11-01', ROW('229', '4613993'), ROW('281', '8722207'), ROW('Calle Tercero', 13, 'Colonia Tercero'), 'zcluis@uv.mx','Estimulo Alto Rendimiento Académico'), 
(8, 'MCTR', 'Félix Daniel', 'Martínez', 'Barradas', '2000-02-01', ROW('229', '4447474'), ROW('229', '2222727'), ROW('Calle Cuarto', 14, 'Colonia Cuarto'), 'fmartinez@uv.mx','Jóvenes Escribiendo el Futuro'), 
(8, 'MCTR', 'Jair Enrique', 'Moreno', 'Nazario', '1999-04-03', ROW('229', '5556565'), ROW('229', '3333838'), ROW('Calle Quinto', 15, 'Colonia Quinto'), 'jmoreno@uv.mx','Manutención SUBES'), 
(8, 'IINF', 'Oscar', 'Mota', 'García', '1998-06-05', ROW('229', '6666565'), ROW('229', '4444949'), ROW('Calle Sexto', 16, 'Colonia Sexto'), 'osmota@uv.mx','Estimulo Alto Rendimiento Académico'), 
(6, 'IMCM', 'Daniel de Jesús', 'Murguía', 'Pavan', '1999-08-07', ROW('229', '7777474'), ROW('229', '5550505'), ROW('Calle Septimo', 17, 'Colonia Septimo'), 'danmurguia@uv.mx','Jóvenes Escribiendo el Futuro'), 
(8, 'ELEC', 'Edgar Moisés', 'Quenel', 'Vázquez', '2000-10-09', ROW('229', '8888383'), ROW('229', '2222020'), ROW('Calle Octavo', 18, 'Colonia Octavo'), 'mquenel@uv.mx','Jóvenes Escribiendo el Futuro'), 
(6, 'ELCO', 'Eduardo', 'Ruíz', 'Ríos', '2001-12-11', ROW('229', '9999292'), ROW('229', '3933939'), ROW('Calle Noveno', 19, 'Colonia Noveno'), 'edruiz@uv.mx','Estimulo Alto Rendimiento Académico'), 
(8, 'ELCO', 'Josué Cristofer', 'Téllez', 'Huerta', '1999-11-13', ROW('229', '0000101'), ROW('229', '4848484'), ROW('Calle Decimo', 20, 'Colonia Decimo'), 'jctellez@uv.mx','Manutención SUBES'), 
(6, 'ININ', 'Luis David', 'Valenzuela', 'García', '2001-09-15', ROW('229', '1116161'), ROW('229', '5151515'), ROW('Calle Primero', 21, 'Colonia Primero'), 'lvalenzuela@uv.mx','Manutención SUBES'),
(8, 'IINF', 'Aldous', 'Huxley', '', '2000-11-25', ROW('229', '9911222'), ROW('229', '1371232'), ROW('Calle Segundo', 22, 'Colonia Segundo'), 'ahuxley@uv.mx','Estimulo Alto Rendimiento Académico');
 
INSERT INTO Materias (nombre, creditos, numHoras, tipoMateria) VALUES
('Diseño de Aplicaciones Web', 6, 4, 2),
('Microprocesadores y Microcontroladores', 8, 5, 3),
('Diseño de Programas', 8, 5, 2),
('Evaluación de Proyectos', 6, 4, 1),
('Redes de Computadoras', 8, 5, 2),
('Estructura de Datos', 8, 5, 2),
('Control Lineal', 8, 5, 2),
('Cálculo de una Variable', 8, 5, 1), 
('Diseño Mecánico', 8, 5, 2), 
('Dinámica', 8, 5, 1), 
('Análisis de Algoritmos', 6, 4, 1),
('Tecnologías y Aplicaciones Móviles', 6, 4, 2),
('Sistemas Operativos', 6, 4, 2), 
('Arquitectura Computacional', 8, 5, 2), 
('Cálculo Multivariable', 8, 5, 1), 
('Geometría Analítica', 6, 4, 1);
 
INSERT INTO Semestres(codSemestre, numSemestre) VALUES
('2019A',1), 
('2019B',2), 
('2020A',3), 
('2020B',4), 
('2021A',5), 
('2021B',6), 
('2022A',7), 
('2022B',8), 
('2023A',9), 
('2023B',10);
 
INSERT INTO Salones(lugar, pupitres) VALUES
('F-JA', 20), 
('F-01', 20), 
('F-02', 20), 
('F-03', 20), 
('F-04', 20), 
('F-05', 20), 
('I-11', 20), 
('I-12', 20), 
('I-13', 20), 
('I-14', 20),
('I-15', 20), 
('A-21', 20),  
('A-22', 20),  
('B-23', 20),  
('B-24', 20); 
 
INSERT INTO Cursos(nrc, horario, cupo, fkProfesor, fkMateria, fkSemestre) VALUES
('95040', '10:00-10:59', 30, 1, 8, '2022A'),
('91593', '10:00-10:59', 25, 11, 4, '2022A'),
('70351', '16:00-16:59', 20, 2, 3, '2021A'),
('63651', '12:00-12:59', 25, 7, 2, '2021A'),
('72202', '11:00-11:59', 30, 2, 6, '2021B'),
('63650', '17:00-17:59', 35, 1, 1, '2022A'),
('65865', '11:00-11:59', 20, 3, 15, '2021A'),
('62242', '13:00-13:59', 20, 4, 5, '2021A'),
('67737', '19:00-19:59', 35, 3, 8, '2022A'),
('96392', '08:00-08:59', 30, 4, 14, '2021B'),
('90183', '09:00-09:59', 35, 8, 5, '2022A'),
('79184', '07:00-07:59', 30, 8, 13, '2022A'),
('75392', '07:00-07:59', 30, 5, 12, '2021B'),
('85396', '15:00-15:59', 30, 1, 8, '2022A'),
('84582', '16:00-16:59', 20, 7, 10, '2021A');

INSERT INTO CursoAlumno(fkMatricula, fkCurso, calificacion, cantIntentos) VALUES
(1, '91593', null , 2),
(2, '91593', null , 1),
(3, '91593', null , 1),
(6, '95040', 6, 2),
(12, '95040', 7, 2),
(13, '95040', 7, 1),
(14, '95040', 8, 1),
(15, '95040', 9, 2),
(13, '63651', null, 1),
(11, '63651', null, 2),
(6, '63651', null, 1),
(20, '63651', null, 1),
(17, '63651', null, 1),
(16, '63651', null, 2),
(5, '63651', null, 1),
(7, '79184', 10, 2),
(3, '79184', 10, 2),
(8, '79184', 8, 2),
(6, '79184', 7, 2),
(1, '79184', 6, 2);
 
INSERT INTO CursoSalon(fkCurso, fkSalon, dia, hora, mes) VALUES
('63650', 8, 12, '17:02:00', 4),
('63650', 8, 13, '17:01:32', 4),
('63650', 8, 14, '17:06:27', 4),
('63650', 8, 15, '17:00:56', 4),
('95040', 2, 11, '10:02:06', 4),
('91593', 3, 13, '10:03:00', 4),
('70351', 4, 13, '16:04:21', 4),
('63651', 5, 14, '12:05:12', 4),
('72202', 6, 14, '11:02:23', 4),
('63650', 7, 14, '17:06:25', 4),
('65865', 8, 15, '11:02:58', 4),
('62242', 9, 16, '13:05:11', 4),
('67737', 10, 17, '19:10:54', 4),
('96392', 11, 17, '08:12:52', 4),
('90183', 4, 17, '09:01:20', 4),
('79184', 3, 18, '07:23:56', 4),
('75392', 2, 18, '07:16:32', 4),
('85396', 6, 19, '15:05:21', 4),
('84582', 13, 21, '16:08:43', 4);

 


 
 
 