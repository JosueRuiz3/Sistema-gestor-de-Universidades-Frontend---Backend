﻿using System.Collections.Generic;
using SistemaUniversidad.BackEnd.API.Models;

namespace SistemaUniversidad.BackEnd.API.Services.Interfaces
{
    public interface ISedeService
    {
        List<Sede> SeleccionarTodos();
        Sede SeleccionarPorId(string id);
        void Insertar(Sede model);
        void Actualizar(Sede model);
        void Eliminar(string id);
    }
}
