﻿namespace SistemaUniversidad.BackEnd.API.Repository.Interfaces.Actions
{
    public interface IEliminarRepository<T>
    {
        void Eliminar(T id);
    }
}
