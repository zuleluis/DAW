CREATE TYPE direccion AS(
	calle varchar(30),
	numero int,
	colonia varchar(30)
);

CREATE TYPE numeroTel AS(
	lada varchar(3),
	numTel varchar(8)
);

CREATE TABLE TipoContrato(
	idContrato serial primary key,
	nombreTipo varchar(16)
);

CREATE TABLE TipoEstudios(
	idEstudios serial primary key,
	nombreTipo varchar(15)
);

CREATE TABLE ClaveCarrera(
	idCarrera varchar(6) not null primary key,
	nombreCarrera varchar(60)
);

					
CREATE TABLE TipoMateria(
	idTipoMateria serial primary key,
	nombreTipo varchar(20)
);

CREATE TABLE Meses(
	idMes serial primary key,
	nombreMes varchar(11)
);

CREATE TABLE Profesores(
	numControl serial primary key,
	nombre varchar(35),
	apPaterno varchar(35),
	apMaterno varchar(35),
	tipoContrato int,
	materiaEsp varchar(30),
	direccion direccion,
	telefono numeroTel,
	celular numeroTel,
	tipoEstudios int,
	email varchar(35),
	fechaNac date,
	lugarEstudios varchar(40),
	
	CONSTRAINT fk_TipoContrato
		FOREIGN KEY (tipoContrato)
			REFERENCES TipoContrato(idContrato),
	
	CONSTRAINT fk_TipoEstudios
		FOREIGN KEY (tipoEstudios)
			REFERENCES TipoEstudios(idEstudios)
);

CREATE TABLE Alumnos (
	matricula serial primary key,
	semestre int,
	claveCarrera varchar(6),
	nombre varchar(35),
	apPaterno varchar(35),
	apMaterno varchar(35),
	fechaNac date,
	edad int,
	celular numeroTel,
	telefono numeroTel,
	direccion direccion,
	email varchar(35),
	beca varchar(45),
	
	CONSTRAINT fk_ClaveCarrera
		FOREIGN KEY (claveCarrera)
			REFERENCES ClaveCarrera(idCarrera)
);

CREATE OR REPLACE FUNCTION CalculaEdad() 
	RETURNS TRIGGER AS $$
	BEGIN
		new.edad = date_part('year',AGE(new.fechaNac))::int;
		RETURN NEW;
	END;
	$$
	LANGUAGE plpgsql;

CREATE TRIGGER CalcEdad BEFORE INSERT
	on Alumnos for each row
EXECUTE PROCEDURE CalculaEdad();

CREATE TABLE Materias (
	codigo serial primary key,
	nombre varchar(50),
	creditos int,
	numHoras int,
	tipoMateria int,
	
	CONSTRAINT fk_TipoMateria
		FOREIGN KEY (tipoMateria)
			REFERENCES TipoMateria(idTipoMateria)
);

										
CREATE TABLE Semestres(
	codSemestre varchar(7) primary key,
	numSemestre int
);
					
CREATE TABLE Salones (
	codSalon serial primary key,
	lugar varchar(10),
	pupitres int
);
					
CREATE TABLE Cursos (
	nrc varchar(6) not null primary key,
	horario varchar(12),
	cupo int,
	fkProfesor int,
	fkMateria int,
	fkSemestre varchar(7),
	
	CONSTRAINT fk_Profesor
		FOREIGN KEY (fkProfesor)
			REFERENCES Profesores(numControl),
	
	CONSTRAINT fk_Materia
		FOREIGN KEY (fkMateria)
			REFERENCES Materias(codigo),
	
	CONSTRAINT fk_Semestre
		FOREIGN KEY (fkSemestre)
			REFERENCES Semestres(codSemestre)
	
);
					
CREATE TABLE CursoAlumno (
	fkMatricula int,
	fkCurso varchar(6),
	calificacion int,
	cantIntentos int,
	
	CONSTRAINT fk_Matricula
		FOREIGN KEY (fkMatricula)
			REFERENCES Alumnos(matricula),
	
	CONSTRAINT fk_Curso
		FOREIGN KEY (fkCurso)
			REFERENCES Cursos(nrc)
);
					
CREATE TABLE CursoSalon(
	fkCurso varchar(6),
	fkSalon int,
	dia int,
	hora time,
	mes int,
	
	CONSTRAINT fk_Curso
		FOREIGN KEY (fkCurso)
			REFERENCES Cursos(nrc),
	
	CONSTRAINT fk_Salon
		FOREIGN KEY (fkSalon)
			REFERENCES Salones(codSalon),
	
	CONSTRAINT fk_Mes
		FOREIGN KEY (mes)
			REFERENCES Meses(idMes)
);

