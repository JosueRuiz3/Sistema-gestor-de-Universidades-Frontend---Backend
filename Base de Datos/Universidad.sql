 -- CREACIÓN DE LA BASE DE DATOS
--CREATE DATABASE Universidad;
--GO

--USO DE LA BASE DE DATOS
USE Universidad
GO

--TABLA PARA GUARDAR LISTA DE UNIVERSIDADES
CREATE TABLE Universidades(  
	CodigoUniversidad INT,
	NombreUniversidad VARCHAR(100) NOT NULL,
	CedulaJuridica VARCHAR(25) NOT NULL,
	Activo BIT NOT NULL DEFAULT(1),

	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,

	CONSTRAINT PK_Universidades PRIMARY KEY (CodigoUniversidad)
);
GO

--DOCUMENTACION DE TABLAS Y COLUMNAS
--DOCUMENTACION DE LA TABLA "UNIVERSIDADES"
EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Universidades que el sistema gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Universidades'
GO

--DOCUMENTACION DE LAS COLUMNAS
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Codigo o Identificador de la Universidad',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'CodigoUniversidad'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de la Universidad',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'NombreUniversidad'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Cedula del usuario',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'CedulaJuridica'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condicion en la que se encuentra, sea 0 o 1',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creacion del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificacion del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del autor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del quien modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO

--PROCEDIMIENTO ALMACENADO INSERTAR UNIVERSIDAD
CREATE PROCEDURE SP_Universidades_Insertar
	@CodigoUniversidad INT,
	@NombreUniversidad VARCHAR(100),
	@CedulaJuridica VARCHAR(25),
	@CreadoPor VARCHAR(60)
	AS
	BEGIN
	INSERT INTO Universidades(CodigoUniversidad, NombreUniversidad, CedulaJuridica,CreadoPor)
	VALUES(@CodigoUniversidad, @NombreUniversidad, @CedulaJuridica, @CreadoPor)
END
GO

--PROCEDIMIENTO ALMACENADO ACTUALIZAR UNIVERSIDAD
CREATE PROCEDURE SP_Universidades_Actualizar
	@CodigoUniversidad INT,
	@NombreUniversidad VARCHAR(100),
	@CedulaJuridica VARCHAR(25),
	@Activo BIT,

	@CreadoPor VARCHAR(60),
	@ModificadoPor VARCHAR(60)
	AS
	BEGIN
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Universidades SET
	CodigoUniversidad = @CodigoUniversidad,
	NombreUniversidad = @NombreUniversidad,
	CedulaJuridica = @CedulaJuridica,
	Activo = @Activo,
	FechaModificacion = @FechaModificacion,
	CreadoPor  = @CreadoPor ,
	ModificadoPor = @ModificadoPor
	WHERE CodigoUniversidad = @CodigoUniversidad
END
GO

--PROCEDIMIENTO ALMACENADO ELIMINAR UNIVERSIDAD
CREATE PROCEDURE SP_Universidades_Eliminar
	@CodigoUniversidad INT 
	AS UPDATE Universidades SET
	Activo = 0
	WHERE CodigoUniversidad = @CodigoUniversidad
GO

EXEC SP_Universidades_Insertar
	@CodigoUniversidad = 5,
	@NombreUniversidad = 'ULICORI',
	@CedulaJuridica = '5-5846564',
	@CreadoPor = NULL;
GO

EXEC SP_Universidades_Insertar
	@CodigoUniversidad = 3,
	@NombreUniversidad = 'U LATINA',
	@CedulaJuridica = '6-9123091',
	@CreadoPor = NULL;
GO

EXEC SP_Universidades_Insertar
	@CodigoUniversidad = 2,
	@NombreUniversidad = 'UNA',
	@CedulaJuridica = '2-0912342',
	@CreadoPor = NULL;
GO

EXEC SP_Universidades_Actualizar
	@CodigoUniversidad = 5,
	@NombreUniversidad = 'U LATINA',
	@CedulaJuridica = '5-5846564',
	@Activo = 1,
	@CreadoPor = NULL,
	@ModificadoPor = NULL;
GO

EXEC SP_Universidades_Eliminar
	@CodigoUniversidad = 5;
GO

--SELECT PARA VER LA TABLA "UNIVERSIDADES" CON LOS DATOS INGRESADOS
SELECT * FROM Universidades
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS ACTIVOS DE LA TABLA "UNIVERSIDAD"
CREATE VIEW vw_Universidad_SeleccionarActivos AS SELECT * FROM Universidades WHERE Activo = 1
GO

SELECT * FROM vw_Universidad_SeleccionarActivos
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS LLAMADOS POR EL ID QUE SE ENCUENTRAN ACTIVOS EN LA TABLA "UNIVERSIDAD"
CREATE VIEW vw_Universidad_SeleccionarUnRegistroPorId AS SELECT * FROM Universidades WHERE CodigoUniversidad = 2
and activo =1
GO

SELECT * FROM vw_Universidad_SeleccionarUnregistroPorId
GO

--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Universidad_SeleccionarsPorId
(
	@CodigoUniversidad INT
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Universidades
WHERE CodigoUniversidad = @CodigoUniversidad
AND Activo = 1
GO

--SE BUSCA UNO POR UNO LOS ID
SELECT * FROM fn_Universidad_SeleccionarsPorId(1)
GO
SELECT * FROM fn_Universidad_SeleccionarsPorId(2)
GO

--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE OR ALTER FUNCTION[fn_Universidad_SeleccionarTodos]()
RETURNS TABLE
AS
RETURN SELECT * FROM Universidades A WHERE A.Activo = 1
GO

SELECT * FROM [fn_Universidad_SeleccionarTodos]();
GO


--TABLA PARA ALMACENAR INFORMACIÓN DE LAS SEDES
CREATE TABLE Sedes(
	CodigoSede INT,
	NombreSede VARCHAR(30) NOT NULL,
	Telefono VARCHAR(12) NOT NULL,
	CorreoElectronico VARCHAR(50) NOT NULL,
	Direccion VARCHAR(50) NOT NULL,
	Activo BIT NOT NULL DEFAULT(1),

	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,

	CONSTRAINT PK_Sedes PRIMARY KEY(CodigoSede)
);
GO

--DOCUMENTACION DE LA TABLA "SEDES"
EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Sedes que el sistema gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Sedes'
GO

--DOCUMENTACION DE LAS COLUMNAS 
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'CodigoSede'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'NombreSede'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Teléfono de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'Telefono'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Correo electrónico de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'CorreoElectronico'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Dirección de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'Direccion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra, sea 0 o 1',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del autor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de quien modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO

--PROCEDIMIENTO ALMACENADO INSERTAR SEDES
CREATE PROCEDURE SP_Sedes_Insertar
	@CodigoSede INT,
	@NombreSede VARCHAR(30),
	@Telefono VARCHAR(12),
	@CorreoElectronico VARCHAR(50),
	@Direccion VARCHAR(50),
	@CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Sedes(CodigoSede, NombreSede, Telefono, CorreoElectronico, Direccion, CreadoPor )
	VALUES (@CodigoSede, @NombreSede, @Telefono, @CorreoElectronico, @Direccion, @CreadoPor)
END
GO

--PROCEDIMIENTO ALMACENADO ACTUALIZAR SEDE
CREATE OR ALTER PROCEDURE SP_Sedes_Actualizar
	@CodigoSede INT,
	@NombreSede VARCHAR(30),
	@Telefono VARCHAR(12),
	@CorreoElectronico VARCHAR(50),
	@Direccion VARCHAR(50),
	@Activo BIT,

	@ModificadoPor VARCHAR(60)
	AS
	BEGIN 
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE()) 
	UPDATE Sedes SET
	CodigoSede = @CodigoSede,
	NombreSede = @NombreSede,
	Telefono = @Telefono,
	CorreoElectronico = @CorreoElectronico,
	Direccion = @Direccion,
	Activo = @Activo,
	FechaModificacion = @FechaModificacion,
	ModificadoPor = @ModificadoPor
	WHERE CodigoSede = @CodigoSede
END
GO

--PROCEDIMIENTO ALMACENADO ELIMINAR SEDES
CREATE PROCEDURE SP_Sedes_Eliminar
	@CodigoSede INT 
	AS UPDATE Sedes SET
	Activo = 0
	WHERE CodigoSede = @CodigoSede
GO

EXEC SP_Sedes_Insertar
	@CodigoSede = 58, 
	@NombreSede = 'Cañas',
	@Telefono = '2435-6436', 
	@CorreoElectronico = 'cañas@una.cr', 
	@Direccion = 'Contiguo al banco',
	@CreadoPor = NULL;
GO

EXEC SP_Sedes_Insertar
	@CodigoSede = 27, 
	@NombreSede = 'Santa Cruz',
	@Telefono = '2685-6321', 
	@CorreoElectronico = 'stacruz@una.cr', 
	@Direccion = 'Contiguo al parque',
	@CreadoPor = NULL;
GO

EXEC SP_Sedes_Actualizar
	@CodigoSede = 58, 
	@NombreSede = 'Cañas',
	@Telefono = '2435-6436', 
	@CorreoElectronico = 'cañas@ulatina.net', 
	@Direccion = 'Contiguo al banco',
	@Activo = 1,
	@CreadoPor = NULL,
	@ModificadoPor = NULL;
GO

EXEC SP_Sedes_Eliminar
	@CodigoSede = 27;
GO

--SELECT PARA VER LA TABLA "SEDES" CON LOS DATOS INGRESADOS
SELECT * FROM Sedes
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS ACTIVOS DE LA TABLA "SEDES"
CREATE VIEW vw_Sedes_SeleccionarActivos AS SELECT * FROM Sedes WHERE Activo = 1
GO

SELECT * FROM vw_Sedes_SeleccionarActivos
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS LLAMADOS POR EL ID QUE SE ENCUENTRAN ACTIVOS EN LA TABLA "SEDES"
CREATE VIEW vw_Sedes_SeleccionarUnRegistroPorId AS SELECT * FROM Sedes WHERE CodigoSede = 27
and activo =1
GO

SELECT * FROM vw_Sedes_SeleccionarUnregistroPorId
GO

--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Sedes_SeleccionarsPorId
(
	@CodigoSede INT
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Sedes
WHERE CodigoSede = @CodigoSede
AND Activo = 1
GO

SELECT * FROM fn_Sedes_SeleccionarsPorId(27)
GO

--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE OR ALTER FUNCTION[fn_Sedes_SeleccionarTodos]()
RETURNS TABLE
AS
RETURN SELECT * FROM Sedes A WHERE A.Activo = 1
GO

SELECT * FROM [fn_Sedes_SeleccionarTodos]();
GO


--TABLA PARA GUARDAR LAS CARRERAS DISPONIBLES
CREATE TABLE Carreras ( 
	CodigoCarrera INT,  
	NombreCarrera VARCHAR (100) NOT NULL,
	Acreditada BIT NOT NULL DEFAULT(1),
	Activo BIT NOT NULL DEFAULT(1),

	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,

	CONSTRAINT PK_Carreras PRIMARY KEY(CodigoCarrera)
);
GO

--DOCUMENTACION DE LA TABLA CARRERAS
EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Carreras que el sistema de U gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Carreras'
GO

--DOCUMENTACION DE LAS COLUMNAS
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de la carrera',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'CodigoCarrera'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de la carrera',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'NombreCarrera'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra, sea 1 acreditada o 0 no acreditada',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'Acreditada'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra, sea 0 o 1',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras',
   	@level2type = N'Column',	@level2name = 'Activo'
GO


EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificacion del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del autor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de quien modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO

--PROCEDIMIENTO ALMACENADO INSERTAR CARRERAS
CREATE PROCEDURE SP_Carrera_Insertar
	@CodigoCarrera INT,
	@NombreCarrera VARCHAR(100),
	@CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Carreras(CodigoCarrera, NombreCarrera, CreadoPor)
	VALUES (@CodigoCarrera, @NombreCarrera, @CreadoPor)
END
GO

--PROCEDIMIENTO ALMACENADO ACTUALIZAR CARRERA
CREATE OR ALTER PROCEDURE SP_Carrera_Actualizar
	@CodigoCarrera INT,
	@NombreCarrera VARCHAR(100),
	@Activo BIT,

	@ModificadoPor VARCHAR(60)
	AS
	BEGIN DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Carreras SET
	CodigoCarrera = @CodigoCarrera,
	NombreCarrera = @NombreCarrera,
	Activo = @Activo,
	FechaModificacion = @FechaModificacion,
	ModificadoPor = @ModificadoPor
	WHERE CodigoCarrera = @CodigoCarrera
END
GO

--PROCEDIMIENTO ALMACENADO ELIMINAR CARRERAS
CREATE PROCEDURE SP_Carreras_Eliminar
	@CodigoCarrera INT 
	AS UPDATE Carreras SET
	Activo = 0
	WHERE CodigoCarrera = @CodigoCarrera
GO

EXEC SP_Carrera_Insertar
	@CodigoCarrera = 255,
	@NombreCarrera = 'Ingeniería En Sistemas',
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "CARRERAS" CON LOS DATOS INGRESADOS
SELECT * FROM Carreras
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS ACTIVOS DE LA TABLA "CARRERAS"
CREATE VIEW vw_Carreras_SeleccionarActivos AS SELECT * FROM Carreras WHERE Activo = 1
GO

SELECT * FROM vw_Carreras_SeleccionarActivos
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS LLAMADOS POR EL ID QUE SE ENCUENTRAN ACTIVOS EN LA TABLA "CARRERAS"
CREATE VIEW vw_Carreras_SeleccionarUnRegistroPorId AS SELECT * FROM Carreras WHERE CodigoCarrera = 255
and activo =1
GO

SELECT * FROM vw_Carreras_SeleccionarUnregistroPorId
GO

--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Carreras_SeleccionarsPorId
(
	@CodigoCarrera INT
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Carreras
WHERE CodigoCarrera = @CodigoCarrera
AND Activo = 1
GO

SELECT * FROM fn_Carreras_SeleccionarsPorId(255)
GO

--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE OR ALTER FUNCTION[fn_Carreras_SeleccionarTodos]()
RETURNS TABLE
AS
RETURN SELECT * FROM Carreras A WHERE A.Activo = 1
GO

SELECT * FROM [fn_Carreras_SeleccionarTodos]();
GO


--TABLA PARA GUARDAR LOS CURSOS
CREATE TABLE Cursos( 
	CodigoCurso  VARCHAR(10),
	NombreCurso VARCHAR(30) NOT NULL,
	Precio DECIMAL(18,3),
	Activo BIT NOT NULL DEFAULT(1),

	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,

	CONSTRAINT PK_Cursos PRIMARY KEY(CodigoCurso)
);
GO

--DOCUMENTACION DE LA TABLA CURSOS
EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Cursos que el sistema de U gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Cursos'
GO

--DOCUMENTACION DE LAS COLUMNAS
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código del curso',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Cursos', 
   	@level2type = N'Column',	@level2name = 'CodigoCurso'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del curso',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Cursos', 
   	@level2type = N'Column',	@level2name = 'NombreCurso'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Precio del curso',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Cursos',
   	@level2type = N'Column',	@level2name = 'Precio'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra, sea 0 o 1',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Cursos',
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Cursos', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Cursos', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del autor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Cursos', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del quien modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Cursos', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO

--PROCEDIMIENTO ALMACENADO INSERTAR CURSOS
CREATE PROCEDURE SP_Curso_Insertar
	@CodigoCurso VARCHAR(10),
	@NombreCurso VARCHAR(30),
	@Precio DECIMAL(18,3),
	@CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Cursos(CodigoCurso, NombreCurso, Precio, CreadoPor)
	VALUES (@CodigoCurso, @NombreCurso, @Precio, @CreadoPor)
END
GO

--PROCEDIMIENTO ALMACENADO ACTUALIZAR CURSOS
CREATE or alter PROCEDURE SP_Curso_Actualizar
	@CodigoCurso VARCHAR(10),
	@NombreCurso VARCHAR(30),
	@Precio DECIMAL(18,3),
	@Activo BIT,

	@ModificadoPor VARCHAR(60)
	AS
	BEGIN 
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Cursos SET
	NombreCurso = @NombreCurso,
	FechaModificacion = @FechaModificacion,
	Precio  = @Precio,
	Activo  = @Activo,
	ModificadoPor = @ModificadoPor
	WHERE CodigoCurso = @CodigoCurso
END
GO

CREATE PROCEDURE SP_Curso_Eliminar
	@CodigoCurso VARCHAR(10)
    AS UPDATE Cursos SET
	Activo = 0
	WHERE CodigoCurso = @CodigoCurso
GO

EXEC SP_Curso_Insertar
	@CodigoCurso = 'A4352',	
	@NombreCurso = 'Bases de datos', 
	@Precio = 125000.0,
	@CreadoPor = NULL;
GO

EXEC SP_Curso_Insertar
	@CodigoCurso = 'B6138',	
	@NombreCurso = 'Programacion III', 
	@Precio = 155000.0,
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "CURSOS" CON LOS DATOS INGRESADOS
SELECT * FROM Cursos
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS ACTIVOS DE LA TABLA "CURSOS"
CREATE VIEW vw_Cursos_SeleccionarActivos AS SELECT * FROM Cursos WHERE Activo = 1
GO

SELECT * FROM vw_Cursos_SeleccionarActivos
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS LLAMADOS POR EL ID QUE SE ENCUENTRAN ACTIVOS EN LA TABLA "CURSOS"
CREATE VIEW vw_Cursos_SeleccionarUnRegistroPorId AS SELECT * FROM Cursos WHERE CodigoCurso = 'A4352'
and activo =1
GO

SELECT * FROM vw_Cursos_SeleccionarUnregistroPorId
GO

--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Curso_SeleccionarsPorId
(
		@CodigoCurso VARCHAR(10)
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Cursos
WHERE CodigoCurso = @CodigoCurso
AND Activo = 1
GO

SELECT * FROM fn_Curso_SeleccionarsPorId('B6138')
GO

--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE OR ALTER FUNCTION[fn_Cursos_SeleccionarTodos]()
RETURNS TABLE
AS
RETURN SELECT * FROM Cursos A WHERE A.Activo = 1
GO

SELECT * FROM [fn_Cursos_SeleccionarTodos]();
GO



--TABLA PARA GUARDAR EL AULA
CREATE TABLE Aula(
	NumeroAula VARCHAR(10),
	Horario VARCHAR(30),
	Activo BIT NOT NULL DEFAULT(1),
	CodigoCurso VARCHAR(10),

	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,

	CONSTRAINT PK_Aula PRIMARY KEY(NumeroAula),

	CONSTRAINT FK_Curso FOREIGN KEY(CodigoCurso) REFERENCES Cursos(CodigoCurso),
);
GO

--DOCUMENTACION DE LA TABLA "AULA"
EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Aulas que el sistema de U gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Aula'
GO

--DOCUMENTACION DE LAS COLUMNAS
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Número de la aula',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'NumeroAula'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Horario',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'Horario'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra, sea 0 o 1',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de curso',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'CodigoCurso'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del autor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de quien modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO

--PROCEDIMIENTO ALMACENADO PARA INSERTAR AULAS
CREATE PROCEDURE SP_Aula_Insertar
	@NumeroAula VARCHAR(10),
	@Horario VARCHAR(30),
	@CodigoCurso VARCHAR(10),
	@CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Aula(NumeroAula, Horario, CodigoCurso, CreadoPor)
	VALUES(@NumeroAula, @Horario, @CodigoCurso, @CreadoPor)
END
GO

--PROCEDIMIENTO ALMACENADO PARA ACTUALIZAR AULAS
CREATE OR ALTER PROCEDURE SP_Aula_Actualizar
	@NumeroAula VARCHAR(10),
	@Horario VARCHAR(30),
	@CodigoCurso VARCHAR(10),
	@ModificadoPor VARCHAR(50),
	@Activo BIT

	AS
	BEGIN 
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Aula SET
	Horario = @Horario,
	CodigoCurso  = @CodigoCurso,
	ModificadoPor = @ModificadoPor,
	Activo  = @Activo ,
	FechaModificacion = @FechaModificacion
	WHERE NumeroAula = @NumeroAula
END
GO

--PROCEDIMIENTO ALMACENADO PARA ELIMINAR AULAS
CREATE PROCEDURE SP_Aula_Eliminar
	@NumeroAula VARCHAR(10)
	AS UPDATE Aula SET
	Activo = 0
	WHERE NumeroAula = @NumeroAula
GO

EXEC SP_Aula_Insertar
	@NumeroAula = '4_2', 
	@Horario = 'S 10:30 am / 1:20pm',
	@CodigoCurso = 'A4352',
	@CreadoPor = NULL;
GO	

EXEC SP_Aula_Insertar
	@NumeroAula = '3_2', 
	@Horario = 'L 8:00 am / 12:00pm',
	@CodigoCurso = 'B6138',
	@CreadoPor = NULL;
GO	

--SELECT PARA VER LA TABLA "AULA" CON LOS DATOS INGRESADOS
SELECT * FROM Aula;
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS ACTIVOS DE LA TABLA "AULA"
CREATE VIEW vw_Aula_SeleccionarActivos AS SELECT * FROM Aula WHERE Activo = 1
GO

SELECT * FROM vw_Aula_SeleccionarActivos
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS LLAMADOS POR EL ID QUE SE ENCUENTRAN ACTIVOS EN LA TABLA "AULA"
CREATE VIEW vw_Aula_SeleccionarUnRegistroPorId AS SELECT * FROM Aula WHERE NumeroAula = '3_2'
and activo =1
GO

SELECT * FROM vw_Aula_SeleccionarUnregistroPorId
GO

--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Aula_SeleccionarsPorId
(
	@NumeroAula VARCHAR(10)
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Aula
WHERE NumeroAula = @NumeroAula
AND Activo = 1
GO

SELECT * FROM fn_Aula_SeleccionarsPorId('3_2')
GO

--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE OR ALTER FUNCTION[fn_Aula_SeleccionarTodos]()
RETURNS TABLE
AS
RETURN SELECT * FROM Aula A WHERE A.Activo = 1
GO

SELECT * FROM [fn_Aula_SeleccionarTodos]();
GO


--TABLA PARA GUARDAR INFORMACIÓN DE LOS PROFESORES
CREATE TABLE Profesor(
	CedulaProfesor VARCHAR(15),
	NombreProfesor VARCHAR(30) NOT NULL,
	Apellidos VARCHAR(50) NOT NULL,
	Telefono VARCHAR(12),
	Profesion VARCHAR(30) NOT NULL,
	CorreoElectronico VARCHAR(50) NOT NULL,
	Edad INT NOT NULL,
	Activo BIT NOT NULL DEFAULT(1),

	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,

	CONSTRAINT PK_Profesor PRIMARY KEY(CedulaProfesor)
);
GO

--DOCUMENTACION DE LA TABLA PROFESOR
EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Profesores que el sistema de U gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Profesor'
GO

--DOCUMENTACION DE LAS COLUMNAS
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Cédula del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'CedulaProfesor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Nombreprofesor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Apellidos del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Apellidos'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Número de teléfono del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Telefono'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Profesion',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Profesion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Correo electrónico del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'CorreoElectronico'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Edad',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Edad'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra, sea 0 o 1',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del autor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de quien modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO

--PROCEDIMIENTO ALMACENADO INSERTAR PROFESOR
CREATE PROCEDURE SP_Profesor_Insertar
	@CedulaProfesor VARCHAR(15),
	@NombreProfesor VARCHAR(30),
	@Apellidos VARCHAR(25),
	@Telefono VARCHAR (12),
	@Profesion VARCHAR(30),
	@CorreoElectronico VARCHAR(50),
	@Edad INT,
	@CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Profesor(CedulaProfesor, NombreProfesor, Apellidos, Telefono, Profesion, CorreoElectronico, Edad, CreadoPor)
	VALUES (@CedulaProfesor, @NombreProfesor, @Apellidos, @Telefono, @Profesion, @CorreoElectronico, @Edad, @CreadoPor)
END
GO

--PROCEDIMIENTO ALMACENADO PARA ACTUALIZAR PROFESOR 
CREATE OR ALTER PROCEDURE SP_Profesor_Actualizar
    @CedulaProfesor VARCHAR(15),
	@NombreProfesor VARCHAR(30),
	@Apellidos VARCHAR(25),
	@Telefono VARCHAR (12),
	@Profesion VARCHAR(30),
	@CorreoElectronico VARCHAR(50),
	@Edad INT,
	@ModificadoPor VARCHAR(60),
	@Activo BIT

	AS
	BEGIN 
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Profesor SET
	NombreProfesor = @NombreProfesor,
	Apellidos=@Apellidos,
	Telefono=@Telefono,
	Profesion=@Profesion,
	CorreoElectronico=@CorreoElectronico,
	Edad=@Edad,
	Activo=@Activo,
	FechaModificacion = @FechaModificacion,
	ModificadoPor = @ModificadoPor
	WHERE CedulaProfesor = @CedulaProfesor
END
GO

--PROCEDIMIENTO ALMACENADO ELIMINAR PROFESOR
CREATE PROCEDURE SP_Profesor_Eliminar
	@CedulaProfesor VARCHAR(15) 
	AS UPDATE Profesor SET
	Activo = 0
	WHERE CedulaProfesor = @CedulaProfesor
GO

EXEC SP_Profesor_Insertar
	@CedulaProfesor = '1-0625-0789',
	@NombreProfesor = 'Jirafales',
	@Apellidos = 'Perez Jimenez',
	@Telefono = '5667-8789',
	@Profesion = 'Docente',
	@CorreoElectronico = 'jirafales@gmail.com',
	@Edad = 31, 
	@CreadoPor = NULL;
GO

EXEC SP_Profesor_Insertar
	@CedulaProfesor = '5-8932-5634',
	@NombreProfesor = 'Elba',
	@Apellidos = 'Surero',
	@Telefono = '9812-5409',
	@Profesion = 'Docente',
	@CorreoElectronico = 'surero@gmail.com',
	@Edad = 45, 
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "PROFESOR" CON LOS DATOS INGRESADOS
SELECT * FROM Profesor
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS ACTIVOS DE LA TABLA "PROFESOR"
CREATE VIEW vw_Profesor_SeleccionarActivos AS SELECT * FROM Profesor WHERE Activo = 1
GO 

SELECT * FROM vw_Profesor_SeleccionarActivos
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS LLAMADOS POR EL ID QUE SE ENCUENTRAN ACTIVOS EN LA TABLA "PROFESOR"
CREATE VIEW vw_Profesor_SeleccionarUnRegistroPorId AS SELECT * FROM Profesor WHERE CedulaProfesor = '5-8932-5634'
and activo =1
GO

SELECT * FROM vw_Profesor_SeleccionarUnregistroPorId
GO

--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Profesor_SeleccionarsPorId
(
	@CedulaProfesor VARCHAR(15)
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Profesor
WHERE CedulaProfesor = @CedulaProfesor
AND Activo = 1
GO

SELECT * FROM fn_Profesor_SeleccionarsPorId('5-8932-5634')
GO

--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE OR ALTER FUNCTION[fn_Profesor_SeleccionarTodos]()
RETURNS TABLE
AS
RETURN SELECT * FROM Profesor A WHERE A.Activo = 1
GO

SELECT * FROM [fn_Profesor_SeleccionarTodos]();
GO


--TABLA QUE GUARDA LA INFORMACIÓN DE LOS ESTUDIANTES
CREATE TABLE Estudiantes (
	CedulaEstudiante VARCHAR(15),
	Nombre VARCHAR(30) NOT NULL,
	Apellidos VARCHAR(50) NOT NULL,
	Telefono VARCHAR(12),
	Direccion VARCHAR(50) NOT NULL,
	CorreoElectronico VARCHAR(50) NOT NULL,
	Edad INT NOT NULL,
	Activo BIT NOT NULL DEFAULT(1),

	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,

	CONSTRAINT PK_Estudiantes PRIMARY KEY(CedulaEstudiante)
);
GO

--DOCUMENTACION DE LA TABLA ESTUDIANTES
EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Estudiantes que el sistema de U gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Estudiantes'
GO

--DOCUMENTACION DE LAS COLUMNAS
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Cédula del estudiante',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'CedulaEstudiante'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del estudiante',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'Nombre'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Apellidos del estudiante',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'Apellidos'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Número de teléfono del estudiante',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'Telefono'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Dirección del estudiante',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'Direccion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Correo electrónico del estudiante',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'CorreoElectronico'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Edad',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'Edad'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra, sea 0 o 1',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del autor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del quien modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Estudiantes', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO

--PROCEDIMIENTO ALMACENADO INSERTAR ESTUDIANTE
CREATE PROCEDURE SP_Estudiantes_Insertar
	@CedulaEstudiante VARCHAR(15),
	@Nombre VARCHAR(30),
	@Apellidos VARCHAR(50),
	@Telefono VARCHAR (12),
	@Direccion VARCHAR(50),
	@CorreoElectronico VARCHAR(50),
	@Edad INT,
	@CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Estudiantes(CedulaEstudiante, Nombre, Apellidos, Telefono, Direccion, CorreoElectronico, Edad, CreadoPor)
	VALUES (@CedulaEstudiante, @Nombre, @Apellidos, @Telefono, @Direccion, @CorreoElectronico, @Edad, @CreadoPor)
END
GO

---PROCEDIMIENTO ALMACENADO PARA ACTUALIZAR ESTUDIANTES
CREATE OR ALTER PROCEDURE SP_Estudiantes_Actualizar
    @CedulaEstudiante VARCHAR(15),
	@Nombre VARCHAR(30),
	@Apellidos VARCHAR(50),
	@Telefono VARCHAR (12),
	@Direccion VARCHAR(50),
	@CorreoElectronico VARCHAR(50),
	@Edad INT,
	@ModificadoPor VARCHAR(60),
	@Activo BIT

	AS
	BEGIN 
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Estudiantes SET
	Nombre = @Nombre,
	Apellidos=@Apellidos,
	Telefono=@Telefono,
	Direccion=@Direccion,
	CorreoElectronico=@CorreoElectronico,
	Edad=@Edad,
	FechaModificacion = @FechaModificacion,
	Activo = @Activo,
	ModificadoPor = @ModificadoPor
	WHERE CedulaEstudiante = @CedulaEstudiante
END
GO

--PROCEDIMIENTO ALMACENADO ELIMINAR ESTUDIANTE
CREATE PROCEDURE SP_Estudiantes_Eliminar
	@CedulaEstudiante VARCHAR(15)
	AS UPDATE Estudiantes SET
	Activo = 0
	WHERE CedulaEstudiante = @CedulaEstudiante
GO

EXEC SP_Estudiantes_Insertar
	@CedulaEstudiante = '5-09480567', 
	@Nombre = 'Luis',
	@Apellidos = 'Rosales Espinoza',
	@Telefono = '8372-5362', 
	@Direccion = 'Santorini', 
	@CorreoElectronico = 'luis@gmail.com', 
	@Edad = 19, 
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "ESTUDIANTES" CON LOS DATOS INGRESADOS
SELECT * FROM Estudiantes;
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS ACTIVOS DE LA TABLA "ESTUDIANTES"
CREATE VIEW vw_Estudiantes_SeleccionarActivos AS SELECT * FROM Estudiantes WHERE Activo = 1
GO

SELECT * FROM vw_Estudiantes_SeleccionarActivos
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS LLAMADOS POR EL ID QUE SE ENCUENTRAN ACTIVOS EN LA TABLA "ESTUDIANTES"
CREATE VIEW vw_Estudiantes_SeleccionarUnRegistroPorId AS SELECT * FROM Estudiantes WHERE CedulaEstudiante = '5-09480567'
and activo =1
GO

SELECT * FROM vw_Estudiantes_SeleccionarUnregistroPorId
GO

--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Estudiantes_SeleccionarsPorId
(
	@CedulaEstudiante VARCHAR(15)
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Estudiantes
WHERE CedulaEstudiante = @CedulaEstudiante
AND Activo = 1
GO

SELECT * FROM fn_Estudiantes_SeleccionarsPorId('5-09480567')
GO

--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE OR ALTER FUNCTION[fn_Estudiantes_SeleccionarsPorId]()
RETURNS TABLE
AS
RETURN SELECT * FROM Estudiantes A WHERE A.Activo = 1
GO

SELECT * FROM [fn_Estudiantes_SeleccionarsPorId]();
GO


--TABLA PARA GUARDAR LA INFORMACIÓN DE MATRÍCULA
CREATE TABLE Matricula( 
	NumeroMatricula INT IDENTITY(1,1),
    CodigoUniversidad INT NOT NULL,
    CodigoSede INT NOT NULL,
    CodigoCarrera INT NOT NULL,
    CodigoCurso VARCHAR(10) NOT NULL,
	NumeroAula VARCHAR(10) NOT NULL,
    CedulaProfesor VARCHAR(15) NOT NULL, 
    CedulaEstudiante VARCHAR(15)NOT NULL, 
  	CostoDeMatricula DECIMAL(18,3), 
    Activo BIT NOT NULL DEFAULT(1),

	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,
	
	CONSTRAINT PK_Matricula PRIMARY KEY(NumeroMatricula),

   	CONSTRAINT FK_Universidades FOREIGN KEY(CodigoUniversidad) REFERENCES Universidades(CodigoUniversidad),

    CONSTRAINT FK_Sedes FOREIGN KEY(CodigoSede) REFERENCES Sedes(CodigoSede),

    CONSTRAINT FK_Carreras FOREIGN KEY(CodigoCarrera) REFERENCES Carreras(CodigoCarrera),

   	CONSTRAINT FK_Cursos FOREIGN KEY(CodigoCurso) REFERENCES Cursos(CodigoCurso),

    CONSTRAINT FK_Profesor FOREIGN KEY(CedulaProfesor) REFERENCES Profesor(CedulaProfesor),

    CONSTRAINT FK_Estudiantes FOREIGN KEY(CedulaEstudiante) REFERENCES Estudiantes(CedulaEstudiante),

	CONSTRAINT FK_Aula FOREIGN KEY(NumeroAula) REFERENCES Aula(NumeroAula) 
);
GO

--DOCUMENTACION DE LA TABLA PROFESOR
EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Matriculas que el sistema de U gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Matricula'
GO

--DOCUMENTACION DE LAS COLUMNAS
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Número de matrícula',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'NumeroMatricula'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de universidad',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CodigoUniversidad'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CodigoSede'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de carrera',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CodigoCarrera'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código Curso',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CodigoCurso'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Número de Aula',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'NumeroAula'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Cédula del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CedulaProfesor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Cédula del estudiante',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CedulaEstudiante'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Costo de la matrícula',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CostoDeMatricula'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en que se encuentra, sea 0 o 1',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del autor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de quien modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO

--PROCEDIMIENTO ALMACENADO INSERTAR MATRICULA
CREATE PROCEDURE SP_Matricula_Insertar
    @CodigoUniversidad INT,
    @CodigoSede INT,
    @CodigoCarrera INT,
    @CodigoCurso VARCHAR(10),
	@NumeroAula VARCHAR(10),
    @CedulaProfesor VARCHAR(15), 
    @CedulaEstudiante VARCHAR(15), 
    @CostoDeMatricula DECIMAL(18,3), 
    @CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Matricula(CodigoUniversidad, CodigoSede, CodigoCarrera, CodigoCurso, NumeroAula, CedulaProfesor,CedulaEstudiante, CostoDeMatricula, CreadoPor )
	VALUES( @CodigoUniversidad, @CodigoSede, @CodigoCarrera, @CodigoCurso, @NumeroAula, @CedulaProfesor, @CedulaEstudiante, @CostoDeMatricula, @CreadoPor )
END
GO

--PROCEDIMIENTO ALMACENADO ACTUALIZAR MATRICULA
CREATE PROCEDURE SP_Matricula_Actualizar
	@NumeroMatricula INT,
    @CodigoUniversidad INT,
    @CodigoSede INT,
    @CodigoCarrera INT,
    @CodigoCurso VARCHAR(10),
	@NumeroAula VARCHAR(10),
    @CedulaProfesor VARCHAR(15), 
    @CedulaEstudiante VARCHAR(15), 
    @CostoDeMatricula DECIMAL(18,3), 
    @CreadoPor VARCHAR(50),
	@ModificadoPor VARCHAR(60)
	AS
	BEGIN 
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Matricula SET
	CodigoUniversidad = @CodigoUniversidad,
	CodigoSede = @CodigoSede,
	CodigoCarrera = @CodigoCarrera,
	CodigoCurso = @CodigoCurso, 
	NumeroAula = @NumeroAula, 
	CedulaProfesor = @CedulaProfesor,
	CedulaEstudiante = @CedulaEstudiante, 
	CostoDeMatricula = @CostoDeMatricula, 
	CreadoPor = @CreadoPor,
	ModificadoPor = @ModificadoPor
	WHERE NumeroMatricula = @NumeroMatricula
END
GO

--PROCEDIMIENTO ALMACENADO ELIMINAR MATRICULA
CREATE PROCEDURE SP_Matricula_Eliminar
	@NumeroMatricula INT
	AS UPDATE Matricula SET
	Activo = 0
	WHERE NumeroMatricula = @NumeroMatricula
GO

EXEC SP_Matricula_Insertar
	@CodigoUniversidad = 5, 
	@CodigoSede = 58, 
	@CodigoCarrera = 255, 
	@CodigoCurso = 'A4352',
	@NumeroAula = '4_2',
	@CedulaProfesor = '1-0625-0789', 
	@CedulaEstudiante = '5-09480567',
	@CostoDeMatricula = 50000,
	@CreadoPor = NULL;
GO

EXEC SP_Matricula_Insertar
	@CodigoUniversidad = 5, 
	@CodigoSede = 58, 
	@CodigoCarrera = 255, 
	@CodigoCurso = 'B6138',
	@NumeroAula = '3_2',
	@CedulaProfesor = '5-8932-5634', 
	@CedulaEstudiante = '5-09480567',
	@CostoDeMatricula = 50000,
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "MATRICULA" CON LOS DATOS INGRESADOS
SELECT * FROM Matricula; 
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS ACTIVOS DE LA TABLA "MATRICULA"
CREATE VIEW vw_Matricula_SeleccionarActivos AS SELECT * FROM Matricula WHERE Activo = 1
GO

SELECT * FROM vw_Matricula_SeleccionarActivos
GO

--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS LLAMADOS POR EL ID QUE SE ENCUENTRAN ACTIVOS EN LA TABLA "MATRICULA"
CREATE VIEW vw_Matricula_SeleccionarUnRegistroPorId AS SELECT * FROM Matricula WHERE CedulaEstudiante = '5-09480567'
and activo =1
GO

SELECT * FROM vw_Estudiantes_SeleccionarUnregistroPorId
GO

--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Matricula_SeleccionarsPorId
(
	@NumeroMatricula INT
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Matricula
WHERE NumeroMatricula = @NumeroMatricula
AND Activo = 1
GO

SELECT * FROM fn_Matricula_SeleccionarsPorId(2)
GO

--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE OR ALTER FUNCTION[fn_Matricula_SeleccionarTodos]()
RETURNS TABLE
AS
RETURN SELECT * FROM Matricula A WHERE A.Activo = 1
GO

SELECT * FROM [fn_Matricula_SeleccionarTodos]();
GO

--VISTA EN DONDE SE MUESTRA UNA MATRICULA COMPLETA
CREATE VIEW vw_Matriculas_SeleccionarTodos AS
	SELECT Matri.NumeroMatricula, 
	Uni.CodigoUniversidad, 
	Uni.NombreUniversidad AS Universidad,
	Sed.NombreSede,
	Carre.NombreCarrera,
	Curs.NombreCurso,
	Aul.NumeroAula,
	Aul.Horario,
	Prof.NombreProfesor,
	Prof.Apellidos AS 'Apellidos Profesor',
	Est.Nombre AS 'Nombre Estudiante',
	Est.Apellidos AS 'Apellidos Estudiante',
	Curs.Precio AS 'Costo del Curso',
	Matri.CostoDeMatricula,
	Matri.CostoDeMatricula + Curs.Precio AS 'Total A Pagar',
	Matri.FechaCreacion AS 'Fecha De Matrícula'
	FROM Matricula AS Matri 

	INNER JOIN Universidades AS Uni ON Matri.CodigoUniversidad = Uni.CodigoUniversidad
	INNER JOIN Sedes AS Sed ON Matri.CodigoSede = Sed.CodigoSede
	INNER JOIN Carreras AS Carre ON Matri.CodigoCarrera = Carre.CodigoCarrera
	INNER JOIN Aula As Aul ON Matri.NumeroAula = Aul.NumeroAula
	INNER JOIN Cursos AS Curs ON Matri.CodigoCurso = Curs.CodigoCurso
	INNER JOIN Profesor AS Prof ON Matri.CedulaProfesor = Prof.CedulaProfesor
	INNER JOIN Estudiantes AS Est ON Matri.CedulaEstudiante = Est.CedulaEstudiante
GO
--DROP VIEW vw_Matriculas_SeleccionarTodos;

SELECT * FROM vw_Matriculas_SeleccionarTodos
GO

--CREACIÓN DE UN PROCEDIMIENTO ALMACENADO PARA OBTENER DATOS DE LA MATRÍCULA
CREATE PROCEDURE ObtenerDatosMatriculaPorId1 @NumeroMatricula INT AS
SELECT Matri.NumeroMatricula, 
	Uni.CodigoUniversidad, 
	Uni.NombreUniversidad AS Universidad,
	Sed.NombreSede,
	Carre.NombreCarrera,
	Curs.NombreCurso,
	Aul.NumeroAula,
	Aul.Horario,
	Prof.NombreProfesor,
	Prof.Apellidos AS 'Apellidos Profesor',
	Est.Nombre AS 'Nombre Estudiante',
	Est.Apellidos AS 'Apellidos Estudiante',
	Curs.Precio AS 'Costo del Curso',
	Matri.CostoDeMatricula,
	Matri.CostoDeMatricula + Curs.Precio AS 'Total A Pagar',
	Matri.FechaCreacion AS 'Fecha De Matrícula'
	FROM Matricula AS Matri 

	INNER JOIN Universidades AS Uni ON Matri.CodigoUniversidad = Uni.CodigoUniversidad
	INNER JOIN Sedes AS Sed ON Matri.CodigoSede = Sed.CodigoSede
	INNER JOIN Carreras AS Carre ON Matri.CodigoCarrera = Carre.CodigoCarrera
	INNER JOIN Aula As Aul ON Matri.NumeroAula = Aul.NumeroAula
	INNER JOIN Cursos AS Curs ON Matri.CodigoCurso = Curs.CodigoCurso
	INNER JOIN Profesor AS Prof ON Matri.CedulaProfesor = Prof.CedulaProfesor
	INNER JOIN Estudiantes AS Est ON Matri.CedulaEstudiante = Est.CedulaEstudiante
GO

--SE PUEDE HACER UN "SELECT" DEL PROCESO ALMACENADO
EXEC ObtenerDatosMatriculaPorId1 2
GO
