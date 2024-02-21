// <auto-generated/>
#pragma warning disable 1591
#pragma warning disable 0414
#pragma warning disable 0649
#pragma warning disable 0169

namespace SistemaUniversidad.FrontEnd.Pr0.Pages
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Components;
#nullable restore
#line 1 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using System.Net.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using System.Net.Http.Json;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using Microsoft.AspNetCore.Components.Forms;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using Microsoft.AspNetCore.Components.Routing;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using Microsoft.AspNetCore.Components.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using Microsoft.AspNetCore.Components.Web.Virtualization;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using Microsoft.AspNetCore.Components.WebAssembly.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 8 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using Microsoft.JSInterop;

#line default
#line hidden
#nullable disable
#nullable restore
#line 9 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using SistemaUniversidad.FrontEnd.Pr0;

#line default
#line hidden
#nullable disable
#nullable restore
#line 10 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using SistemaUniversidad.FrontEnd.Pr0.Shared;

#line default
#line hidden
#nullable disable
#nullable restore
#line 11 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\_Imports.razor"
using SistemaUniversidad.FrontEnd.Pr0.Dtos;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Components.RouteAttribute("/Sedes")]
    public partial class Sedes : global::Microsoft.AspNetCore.Components.ComponentBase
    {
        #pragma warning disable 1998
        protected override void BuildRenderTree(global::Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder)
        {
        }
        #pragma warning restore 1998
#nullable restore
#line 255 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\Sedes.razor"
       

    private SedeDto[] ListaDeSedes;

    private SedeDto SedesDtoModel = new();


    private string AccionDeEdicion;

    private string NumeroSedesPorActualizar;

    private string NumeroSedesPorEliminar;

    private string UtlHost = "https://localhost:44365/api";

    protected override async Task OnInitializedAsync()
    {
        await ObtenerSedes();
    }

    private async Task MostrarModalDeAgregar()
    {

        AccionDeEdicion = "Agregar";
        SedesDtoModel = new();

        await JSRuntime.InvokeAsync<object>("global.openModal", "ModalEdicionDeSedes");
    }

    private async Task MostrarModalDeActualizar(string CodigoSede)
    {

        AccionDeEdicion = "Actualizar";

        await ObtenerSedesPorId(CodigoSede);

        NumeroSedesPorActualizar = CodigoSede;

        await JSRuntime.InvokeAsync<object>("global.openModal", "ModalEdicionDeSedes");

    }

    private async Task GuardarAula()
    {
        if (AccionDeEdicion == "Agregar")
        {
            await AgregarSede();
        }
        else
        {
            await ActualizarSedes();
        }
    }


    private async Task MostrarModalDeEliminar(string CodigoSede)
    {

        await ObtenerSedesPorId(CodigoSede);

        NumeroSedesPorEliminar = CodigoSede;

        await JSRuntime.InvokeAsync<object>("global.openModal", "ModalConfirmacionDeEliminacionDeSedes");
    }

    private async Task ConfirmarEliminacionDeAula()
    {

        await EliminarSedes();

    }


    private async Task ObtenerSedes()
    {
        ListaDeSedes = await Http.GetFromJsonAsync<SedeDto[]>($"{UtlHost}/Sedes");
    }

    private async Task ObtenerSedesPorId(string CodigoSede)
    {
        SedesDtoModel = await Http.GetFromJsonAsync<SedeDto>($"{UtlHost}/Sedes/{CodigoSede}");

    }


    private async Task AgregarSede()
    {
        var Sede = SedesDtoModel;

        using var response = await Http.PostAsJsonAsync($"{UtlHost}/Sedes", Sede);

        if (response.IsSuccessStatusCode)
        {
            await JSRuntime.InvokeAsync<object>("global.closeModal", "ModalEdicionDeSedes");

            await ObtenerSedes();

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaExito", "Sedes agregada correctamente");

        }
        else
        {
            string errorMessage = response.ReasonPhrase;
            Console.WriteLine($"Error: {errorMessage}");

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaError", "No se pudo agregar la Sede ");

        }
    }

    private async Task ActualizarSedes()
    {
        var Sede = SedesDtoModel;

        using var response = await Http.PutAsJsonAsync($"{UtlHost}/Sedes/{NumeroSedesPorActualizar}", Sede);

        if (response.IsSuccessStatusCode)
        {
            await JSRuntime.InvokeAsync<object>("global.closeModal", "ModalEdicionDeSedes");

            await ObtenerSedes();

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaExito", "Sede actualizada correctamente");
        }
        else
        {
            string errorMessage = response.ReasonPhrase;
            Console.WriteLine($"Error: {errorMessage}");

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaError", "No se pudo actualizar el aula ");

        }
    }

    private async Task EliminarSedes()
    {
        using var response = await Http.DeleteAsync($"{UtlHost}/Sedes/{NumeroSedesPorEliminar}");

        if (response.IsSuccessStatusCode)
        {
            await JSRuntime.InvokeAsync<object>("global.closeModal", "ModalConfirmacionDeEliminacionDeSedes");

            await ObtenerSedes();

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaExito", "Sedes eliminada correctamente");
        }
        else
        {
            string errorMessage = response.ReasonPhrase;
            Console.WriteLine($"Error: {errorMessage}");

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaError", "Error al eliminar la Sedes");

        }
    }



#line default
#line hidden
#nullable disable
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private IJSRuntime JSRuntime { get; set; }
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private HttpClient Http { get; set; }
    }
}
#pragma warning restore 1591
