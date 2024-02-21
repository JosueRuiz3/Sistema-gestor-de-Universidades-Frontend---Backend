using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SistemaUniversidad.BackEnd.API.Dtos
{
    public class MatriculaDto
    {
        public int NumeroMatricula { get; set; }

        [Required(ErrorMessage = "{0} es un campo obligatorio")]
        public int CodigoUniversidad { get; set; }

        public int CodigoSede { get; set; }
        public int CodigoCarrera { get; set; }
        public string CodigoCurso { get; set; }
        public string NumeroAula { get; set; }
        public string CedulaProfesor { get; set; }

        [Required(ErrorMessage = "{0} es un campo obligatorio")]
        public string CedulaEstudiante { get; set; }

        [Required(ErrorMessage = "{0} es un campo obligatorio")]
        public decimal CostoDeMatricula { get; set; }

        [Required(ErrorMessage = "{0} es un campo obligatorio")]
        public decimal? MontoCursos { get; set; }

        public decimal? MontoTotal { get; set; }
        public bool? Activo { get; set; }
    }
}
