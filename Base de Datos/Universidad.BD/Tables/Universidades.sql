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