﻿--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE FUNCTION[fn_CursosConProfesores_SeleccionarTodos]()
RETURNS TABLE
AS
RETURN 
	SELECT * FROM CursosConProfesores A WHERE A.Activo = 1
GO