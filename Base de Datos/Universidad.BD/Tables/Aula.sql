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