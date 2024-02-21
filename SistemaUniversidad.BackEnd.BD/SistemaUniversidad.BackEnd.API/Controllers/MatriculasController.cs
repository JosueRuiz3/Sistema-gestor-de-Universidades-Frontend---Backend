using Microsoft.AspNetCore.Mvc;
using SistemaUniversidad.BackEnd.API.Models;
using SistemaUniversidad.BackEnd.API.Dtos;
using SistemaUniversidad.BackEnd.API.Services.Interfaces;
using System.Collections.Generic;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SistemaUniversidad.BackEnd.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MatriculasController : ControllerBase
    {
        private readonly IMatriculaService matricula;
        public MatriculasController(IMatriculaService MatriculaService)
        {
            matricula = MatriculaService;
        }

        // GET: api/<AulasController>
        [HttpGet]
        public List<MatriculaDto> Get()
        {
            List<Matricula> ListaTodasLasMatricula = matricula.SeleccionarTodos();

            List<MatriculaDto> ListaTodasLasMatriculaDto = new();

            foreach (var MatriculaSeleccionada in ListaTodasLasMatricula)
            {
                MatriculaDto MatriculaDTO = new();

                MatriculaDTO.NumeroMatricula = MatriculaSeleccionada.NumeroMatricula;
                MatriculaDTO.CodigoUniversidad = MatriculaSeleccionada.CodigoUniversidad;
                MatriculaDTO.CodigoSede = MatriculaSeleccionada.CodigoSede;
                MatriculaDTO.CodigoCarrera = MatriculaSeleccionada.CodigoCarrera;
                MatriculaDTO.CodigoCurso = MatriculaSeleccionada.CodigoCurso;
                MatriculaDTO.NumeroAula = MatriculaSeleccionada.NumeroAula;
                MatriculaDTO.CedulaProfesor = MatriculaSeleccionada.CedulaProfesor;
                MatriculaDTO.CedulaEstudiante = MatriculaSeleccionada.CedulaEstudiante;
                MatriculaDTO.CostoDeMatricula = MatriculaSeleccionada.CostoDeMatricula;
                MatriculaDTO.Activo = MatriculaSeleccionada.Activo;

                ListaTodasLasMatriculaDto.Add(MatriculaDTO);
            }

            return ListaTodasLasMatriculaDto;
        }

        // GET api/<AulasController>/5
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            Matricula MatriculaSeleccionada = new();

            MatriculaSeleccionada = matricula.SeleccionarPorId(id);

            if (MatriculaSeleccionada.NumeroMatricula is 0)
            {
                return NotFound("Matricula no encontrada");
            }

            MatriculaDto MatriculaDTO = new();

            MatriculaDTO.NumeroMatricula = MatriculaSeleccionada.NumeroMatricula;
            MatriculaDTO.CodigoUniversidad = MatriculaSeleccionada.CodigoUniversidad;
            MatriculaDTO.CodigoSede = MatriculaSeleccionada.CodigoSede;
            MatriculaDTO.CodigoCarrera = MatriculaSeleccionada.CodigoCarrera;
            MatriculaDTO.CodigoCurso = MatriculaSeleccionada.CodigoCurso;
            MatriculaDTO.NumeroAula = MatriculaSeleccionada.NumeroAula;
            MatriculaDTO.CedulaProfesor = MatriculaSeleccionada.CedulaProfesor;
            MatriculaDTO.CedulaEstudiante = MatriculaSeleccionada.CedulaEstudiante;
            MatriculaDTO.CostoDeMatricula = MatriculaSeleccionada.CostoDeMatricula;
            MatriculaDTO.Activo = MatriculaSeleccionada.Activo;

            return Ok(MatriculaDTO);
        }

        // POST api/<AulasController>
        [HttpPost]
        public IActionResult Post([FromBody] MatriculaDto MatriculaDTO)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState.Values);
            }

            Matricula MatriculaPorInsertar = new();

            MatriculaPorInsertar.NumeroMatricula = MatriculaDTO.NumeroMatricula;
            MatriculaPorInsertar.CodigoUniversidad = MatriculaDTO.CodigoUniversidad;
            MatriculaPorInsertar.CodigoSede = MatriculaDTO.CodigoSede;
            MatriculaPorInsertar.CodigoCarrera = MatriculaDTO.CodigoCarrera;
            MatriculaPorInsertar.CodigoCurso = MatriculaDTO.CodigoCurso;
            MatriculaPorInsertar.NumeroAula = MatriculaDTO.NumeroAula;
            MatriculaPorInsertar.CedulaProfesor = MatriculaDTO.CedulaProfesor;
            MatriculaPorInsertar.CedulaEstudiante = MatriculaDTO.CedulaEstudiante;
            MatriculaPorInsertar.CostoDeMatricula = MatriculaDTO.CostoDeMatricula;

            MatriculaPorInsertar.CreadoPor = "Ruiz";

            matricula.Insertar(MatriculaPorInsertar);

            return Ok();
        }

        // PUT api/<AulasController>/5
        [HttpPut("{id}")]
        public IActionResult Put(string id, [FromBody] MatriculaDto MatriculaDTO)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState.Values);
            }

            Matricula MatriculaSeleccionada = new();

            MatriculaSeleccionada = matricula.SeleccionarPorId(id);

            if (MatriculaSeleccionada.NumeroMatricula is 0)
            {
                return NotFound("Matricula no encontrada");
            }

            Matricula MatriculaPorActualizar = new();

            MatriculaPorActualizar.NumeroMatricula = MatriculaDTO.NumeroMatricula;
            MatriculaPorActualizar.CodigoUniversidad = MatriculaDTO.CodigoUniversidad;
            MatriculaPorActualizar.CodigoSede = MatriculaDTO.CodigoSede;
            MatriculaPorActualizar.CodigoCarrera = MatriculaDTO.CodigoCarrera;
            MatriculaPorActualizar.CodigoCurso = MatriculaDTO.CodigoCurso;
            MatriculaPorActualizar.NumeroAula = MatriculaDTO.NumeroAula;
            MatriculaPorActualizar.CedulaProfesor = MatriculaDTO.CedulaProfesor;
            MatriculaPorActualizar.CedulaEstudiante = MatriculaDTO.CedulaEstudiante;
            MatriculaPorActualizar.CostoDeMatricula = MatriculaDTO.CostoDeMatricula;
            MatriculaPorActualizar.Activo = MatriculaDTO.Activo;

            MatriculaPorActualizar.FechaModificacion = System.DateTime.Now;
            MatriculaPorActualizar.ModificadoPor = "Ruiz";

            matricula.Actualizar(MatriculaPorActualizar);

            return Ok();
        }

        // DELETE api/<AulasController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(string id)
        {
            Matricula MatriculaSeleccionada = new();

            MatriculaSeleccionada = matricula.SeleccionarPorId(id);

            if (MatriculaSeleccionada.NumeroMatricula is 0)
            {
                return NotFound("Aula no encontrada");
            }

            MatriculaSeleccionada.Activo = false;

            matricula.Actualizar(MatriculaSeleccionada);

            return Ok("Registro eliminado");
        }
    }
}
