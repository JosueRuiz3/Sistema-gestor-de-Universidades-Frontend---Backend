﻿--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE FUNCTION[fn_CursosEnAulas_SeleccionarTodos]()
RETURNS TABLE
AS
RETURN
	SELECT * FROM CursosEnAulas A WHERE A.Activo = 1
GO