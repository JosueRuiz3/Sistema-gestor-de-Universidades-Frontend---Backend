#pragma checksum "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "6ed2b017f4ebf0d87647fd551f6bcfc8758bea03"
// <auto-generated/>
#pragma warning disable 1591
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
    [global::Microsoft.AspNetCore.Components.RouteAttribute("/CursosConProfesore")]
    public partial class CursosConProfesores : global::Microsoft.AspNetCore.Components.ComponentBase
    {
        #pragma warning disable 1998
        protected override void BuildRenderTree(global::Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder)
        {
            __builder.AddMarkupContent(0, "<h1>\r\n    Lista de Cursos Con Profesores\r\n</h1>\r\n\r\n");
            __builder.OpenElement(1, "div");
            __builder.AddAttribute(2, "class", "card dcard");
            __builder.OpenElement(3, "div");
            __builder.AddAttribute(4, "class", "card-body px-1 px-md-3");
            __builder.OpenElement(5, "form");
            __builder.AddAttribute(6, "autocomplete", "off");
            __builder.OpenElement(7, "div");
            __builder.AddAttribute(8, "class", "d-flex justify-content-between flex-column flex-sm-row mb-3 px-2 px-sm-0");
            __builder.AddMarkupContent(9, "<h3 class=\"text-125 pl-1 mb-3 mb-sm-0 text-secondary-d4\">\r\n                    Listado de Aulas\r\n                </h3>\r\n\r\n                ");
            __builder.OpenElement(10, "div");
            __builder.AddAttribute(11, "class", "mb-2 mb-sm-0");
            __builder.OpenElement(12, "button");
            __builder.AddAttribute(13, "type", "button");
            __builder.AddAttribute(14, "class", "btn btn-blue px-3 d-block w-100 text-95 radius-round border-2 brc-black-tp10");
            __builder.AddAttribute(15, "onclick", global::Microsoft.AspNetCore.Components.EventCallback.Factory.Create<global::Microsoft.AspNetCore.Components.Web.MouseEventArgs>(this, 
#nullable restore
#line 19 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                                                                                         MostrarModalDeAgregar

#line default
#line hidden
#nullable disable
            ));
            __builder.AddMarkupContent(16, "<i class=\"fa fa-plus mr-1\"></i>\r\n                        Agregar ");
            __builder.AddMarkupContent(17, "<span class=\"d-sm-none d-md-inline\">Aula</span>");
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.CloseElement();
#nullable restore
#line 26 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
             if (ListaDeCursosConProfesores == null)
            {

#line default
#line hidden
#nullable disable
            __builder.AddMarkupContent(18, "<p><em>Cargando Listado De Cursos Con Profesores...</em></p>");
#nullable restore
#line 28 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                             }
            else
            {

#line default
#line hidden
#nullable disable
            __builder.OpenElement(19, "table");
            __builder.AddAttribute(20, "id", "simple-table");
            __builder.AddAttribute(21, "class", "mb-0 table table-borderless table-bordered-x brc-secondary-l3 text-dark-m2 radius-1 overflow-hidden");
            __builder.AddMarkupContent(22, @"<thead class=""text-dark-tp3 bgc-grey-l4 text-90 border-b-1 brc-transparent""><tr><th>Codigo Curso</th>
                            <th>Cedula Profesor</th>
                            <th>Numero Ciclo</th>
                            <th>Acciones</th></tr></thead>

                    ");
            __builder.OpenElement(23, "tbody");
            __builder.AddAttribute(24, "class", "mt-1");
#nullable restore
#line 43 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                         foreach (var cursosConProfesore in ListaDeCursosConProfesores)
                        {

#line default
#line hidden
#nullable disable
            __builder.OpenElement(25, "tr");
            __builder.AddAttribute(26, "class", "bgc-h-yellow-l4 d-style");
            __builder.OpenElement(27, "td");
            __builder.AddAttribute(28, "class", "text-600 text-dark");
#nullable restore
#line 46 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
__builder.AddContent(29, cursosConProfesore.CodigoCurso);

#line default
#line hidden
#nullable disable
            __builder.CloseElement();
            __builder.AddMarkupContent(30, "\r\n                                ");
            __builder.OpenElement(31, "td");
            __builder.AddAttribute(32, "class", "text-600 text-orange-d2");
#nullable restore
#line 47 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
__builder.AddContent(33, cursosConProfesore.CedulaProfesor);

#line default
#line hidden
#nullable disable
            __builder.CloseElement();
            __builder.AddMarkupContent(34, "\r\n                                ");
            __builder.OpenElement(35, "td");
            __builder.AddAttribute(36, "class", "text-600 text-orange-d2");
#nullable restore
#line 48 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
__builder.AddContent(37, cursosConProfesore.NumeroCiclo);

#line default
#line hidden
#nullable disable
            __builder.CloseElement();
            __builder.AddMarkupContent(38, "\r\n                                ");
            __builder.OpenElement(39, "td");
            __builder.OpenElement(40, "div");
            __builder.AddAttribute(41, "class", "d-none d-lg-flex");
            __builder.OpenElement(42, "button");
            __builder.AddAttribute(43, "type", "button");
            __builder.AddAttribute(44, "class", "mx-2px btn radius-1 border-2 btn-xs btn-brc-tp btn-light-secondary btn-h-lighter-success btn-a-lighter-success");
            __builder.AddAttribute(45, "onclick", global::Microsoft.AspNetCore.Components.EventCallback.Factory.Create<global::Microsoft.AspNetCore.Components.Web.MouseEventArgs>(this, 
#nullable restore
#line 52 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                                                                                                                                               () => MostrarModalDeActualizar(cursosConProfesore.CodigoCurso)

#line default
#line hidden
#nullable disable
            ));
            __builder.AddMarkupContent(46, "<i class=\"fa fa-pencil-alt\"></i>");
            __builder.CloseElement();
            __builder.AddMarkupContent(47, "\r\n\r\n                                        ");
            __builder.OpenElement(48, "button");
            __builder.AddAttribute(49, "type", "button");
            __builder.AddAttribute(50, "class", "mx-2px btn radius-1 border-2 btn-xs btn-brc-tp btn-light-secondary btn-h-lighter-danger btn-a-lighter-danger");
            __builder.AddAttribute(51, "onclick", global::Microsoft.AspNetCore.Components.EventCallback.Factory.Create<global::Microsoft.AspNetCore.Components.Web.MouseEventArgs>(this, 
#nullable restore
#line 56 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                                                                                                                                             () => MostrarModalDeEliminar(cursosConProfesore.CodigoCurso)

#line default
#line hidden
#nullable disable
            ));
            __builder.AddMarkupContent(52, "<i class=\"fa fa-trash-alt\"></i>");
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.CloseElement();
#nullable restore
#line 64 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                        }

#line default
#line hidden
#nullable disable
            __builder.CloseElement();
            __builder.CloseElement();
#nullable restore
#line 66 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                        }

#line default
#line hidden
#nullable disable
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.AddMarkupContent(53, "\r\n\r\n");
            __builder.OpenElement(54, "div");
            __builder.AddAttribute(55, "class", "modal fade");
            __builder.AddAttribute(56, "id", "ModalEdicionDeCursosConProfesores");
            __builder.AddAttribute(57, "tabindex", "-1");
            __builder.AddAttribute(58, "role", "dialog");
            __builder.AddAttribute(59, "aria-labelledby", "LabelEdicionDeCursosConProfesores");
            __builder.AddAttribute(60, "aria-hidden", "true");
            __builder.OpenElement(61, "div");
            __builder.AddAttribute(62, "class", "modal-dialog");
            __builder.AddAttribute(63, "role", "document");
            __builder.OpenElement(64, "div");
            __builder.AddAttribute(65, "class", "modal-content");
            __builder.OpenElement(66, "div");
            __builder.AddAttribute(67, "class", "modal-header");
            __builder.OpenElement(68, "h5");
            __builder.AddAttribute(69, "class", "modal-title text-primary-d3");
            __builder.AddAttribute(70, "id", "LabelEdicionDeCursosConProfesores");
#nullable restore
#line 77 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
__builder.AddContent(71, AccionDeEdicion + " " + "CursosConProfesores");

#line default
#line hidden
#nullable disable
            __builder.CloseElement();
            __builder.AddMarkupContent(72, "\r\n\r\n                ");
            __builder.AddMarkupContent(73, "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>");
            __builder.CloseElement();
            __builder.AddMarkupContent(74, "\r\n\r\n            ");
            __builder.OpenComponent<global::Microsoft.AspNetCore.Components.Forms.EditForm>(75);
            __builder.AddAttribute(76, "Model", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::System.Object>(
#nullable restore
#line 85 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                              CursosConProfesoreDtoModel

#line default
#line hidden
#nullable disable
            ));
            __builder.AddAttribute(77, "OnValidSubmit", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::Microsoft.AspNetCore.Components.EventCallback<global::Microsoft.AspNetCore.Components.Forms.EditContext>>(global::Microsoft.AspNetCore.Components.EventCallback.Factory.Create<global::Microsoft.AspNetCore.Components.Forms.EditContext>(this, 
#nullable restore
#line 85 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                          GuardarCursosConProfesore

#line default
#line hidden
#nullable disable
            )));
            __builder.AddAttribute(78, "ChildContent", (global::Microsoft.AspNetCore.Components.RenderFragment<Microsoft.AspNetCore.Components.Forms.EditContext>)((context) => (__builder2) => {
                __builder2.OpenComponent<global::Microsoft.AspNetCore.Components.Forms.DataAnnotationsValidator>(79);
                __builder2.CloseComponent();
                __builder2.AddMarkupContent(80, "\r\n\r\n                ");
                __builder2.OpenElement(81, "div");
                __builder2.AddAttribute(82, "class", "modal-body");
                __builder2.OpenElement(83, "div");
                __builder2.AddAttribute(84, "class", "form-group row");
                __builder2.AddMarkupContent(85, "<div class=\"col-sm-4 col-form-label text-sm-right pr-0\"><label for=\"CodigoCurso\" class=\"mb-0\">Codigo de Curso</label></div>\r\n\r\n                        ");
                __builder2.OpenElement(86, "div");
                __builder2.AddAttribute(87, "class", "col-sm-8");
                __builder2.OpenComponent<global::Microsoft.AspNetCore.Components.Forms.InputText>(88);
                __builder2.AddAttribute(89, "id", "CodigoCurso");
                __builder2.AddAttribute(90, "disabled", 
#nullable restore
#line 97 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                                                                          AccionDeEdicion == "Actualizar" ? true : false

#line default
#line hidden
#nullable disable
                );
                __builder2.AddAttribute(91, "class", "form-control col-sm-12 col-md-12");
                __builder2.AddAttribute(92, "placeholder", "Ingrese el Codigo de Curso");
                __builder2.AddAttribute(93, "Value", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::System.String>(
#nullable restore
#line 97 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                      CursosConProfesoreDtoModel.CodigoCurso

#line default
#line hidden
#nullable disable
                ));
                __builder2.AddAttribute(94, "ValueChanged", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::Microsoft.AspNetCore.Components.EventCallback<global::System.String>>(global::Microsoft.AspNetCore.Components.EventCallback.Factory.Create<global::System.String>(this, global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.CreateInferredEventCallback(this, __value => CursosConProfesoreDtoModel.CodigoCurso = __value, CursosConProfesoreDtoModel.CodigoCurso))));
                __builder2.AddAttribute(95, "ValueExpression", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::System.Linq.Expressions.Expression<System.Func<System.String>>>(() => CursosConProfesoreDtoModel.CodigoCurso));
                __builder2.CloseComponent();
                __builder2.AddMarkupContent(96, "\r\n                            ");
                global::__Blazor.SistemaUniversidad.FrontEnd.Pr0.Pages.CursosConProfesores.TypeInference.CreateValidationMessage_0(__builder2, 97, 98, 
#nullable restore
#line 99 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                    () => CursosConProfesoreDtoModel.CodigoCurso

#line default
#line hidden
#nullable disable
                );
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.AddMarkupContent(99, "\r\n\r\n                    ");
                __builder2.OpenElement(100, "div");
                __builder2.AddAttribute(101, "class", "form-group row");
                __builder2.AddMarkupContent(102, "<div class=\"col-sm-4 col-form-label text-sm-right pr-0\"><label for=\"CedulaProfesor\" class=\"mb-0\">Cedula del Profesor</label></div>\r\n\r\n                        ");
                __builder2.OpenElement(103, "div");
                __builder2.AddAttribute(104, "class", "col-sm-8");
                __builder2.OpenComponent<global::Microsoft.AspNetCore.Components.Forms.InputText>(105);
                __builder2.AddAttribute(106, "id", "CedulaProfesor");
                __builder2.AddAttribute(107, "class", "form-control col-sm-12 col-md-12");
                __builder2.AddAttribute(108, "placeholder", "Ingrese la cedula del Profesor");
                __builder2.AddAttribute(109, "Value", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::System.String>(
#nullable restore
#line 109 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                         CursosConProfesoreDtoModel.CedulaProfesor

#line default
#line hidden
#nullable disable
                ));
                __builder2.AddAttribute(110, "ValueChanged", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::Microsoft.AspNetCore.Components.EventCallback<global::System.String>>(global::Microsoft.AspNetCore.Components.EventCallback.Factory.Create<global::System.String>(this, global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.CreateInferredEventCallback(this, __value => CursosConProfesoreDtoModel.CedulaProfesor = __value, CursosConProfesoreDtoModel.CedulaProfesor))));
                __builder2.AddAttribute(111, "ValueExpression", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::System.Linq.Expressions.Expression<System.Func<System.String>>>(() => CursosConProfesoreDtoModel.CedulaProfesor));
                __builder2.CloseComponent();
                __builder2.AddMarkupContent(112, "\r\n                            ");
                global::__Blazor.SistemaUniversidad.FrontEnd.Pr0.Pages.CursosConProfesores.TypeInference.CreateValidationMessage_1(__builder2, 113, 114, 
#nullable restore
#line 111 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                    () => CursosConProfesoreDtoModel.CedulaProfesor

#line default
#line hidden
#nullable disable
                );
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.AddMarkupContent(115, "\r\n\r\n                    ");
                __builder2.OpenElement(116, "div");
                __builder2.AddAttribute(117, "class", "form-group row");
                __builder2.AddMarkupContent(118, "<div class=\"col-sm-4 col-form-label text-sm-right pr-0\"><label for=\"NumeroCiclo\" class=\"mb-0\">Numero de Ciclo</label></div>\r\n\r\n                        ");
                __builder2.OpenElement(119, "div");
                __builder2.AddAttribute(120, "class", "col-sm-8");
                __builder2.OpenComponent<global::Microsoft.AspNetCore.Components.Forms.InputText>(121);
                __builder2.AddAttribute(122, "id", "NumeroCiclo");
                __builder2.AddAttribute(123, "class", "form-control col-sm-12 col-md-12");
                __builder2.AddAttribute(124, "placeholder", "Ingrese el Numero Ciclo");
                __builder2.AddAttribute(125, "Value", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::System.String>(
#nullable restore
#line 121 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                      CursosConProfesoreDtoModel.NumeroCiclo

#line default
#line hidden
#nullable disable
                ));
                __builder2.AddAttribute(126, "ValueChanged", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::Microsoft.AspNetCore.Components.EventCallback<global::System.String>>(global::Microsoft.AspNetCore.Components.EventCallback.Factory.Create<global::System.String>(this, global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.CreateInferredEventCallback(this, __value => CursosConProfesoreDtoModel.NumeroCiclo = __value, CursosConProfesoreDtoModel.NumeroCiclo))));
                __builder2.AddAttribute(127, "ValueExpression", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::System.Linq.Expressions.Expression<System.Func<System.String>>>(() => CursosConProfesoreDtoModel.NumeroCiclo));
                __builder2.CloseComponent();
                __builder2.AddMarkupContent(128, "\r\n                            ");
                global::__Blazor.SistemaUniversidad.FrontEnd.Pr0.Pages.CursosConProfesores.TypeInference.CreateValidationMessage_2(__builder2, 129, 130, 
#nullable restore
#line 123 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                    () => CursosConProfesoreDtoModel.NumeroCiclo

#line default
#line hidden
#nullable disable
                );
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.AddMarkupContent(131, "\r\n\r\n                ");
                __builder2.AddMarkupContent(132, "<div class=\"modal-footer\"><button type=\"button\" class=\"btn btn-secondary px-4\" data-dismiss=\"modal\">Cerrar</button>\r\n                    <button type=\"submit\" class=\"btn btn-primary px-4\">Guardar</button></div>");
            }
            ));
            __builder.CloseComponent();
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.AddMarkupContent(133, "\r\n\r\n");
            __builder.OpenElement(134, "div");
            __builder.AddAttribute(135, "class", "modal fade");
            __builder.AddAttribute(136, "id", "ModalConfirmacionDeEliminacionDeCursos");
            __builder.AddAttribute(137, "tabindex", "-1");
            __builder.AddAttribute(138, "role", "dialog");
            __builder.AddAttribute(139, "aria-labelledby", "LabelConfirmacionDeEliminacionDeCurso");
            __builder.AddAttribute(140, "aria-hidden", "true");
            __builder.OpenElement(141, "div");
            __builder.AddAttribute(142, "class", "modal-dialog");
            __builder.AddAttribute(143, "role", "document");
            __builder.OpenElement(144, "div");
            __builder.AddAttribute(145, "class", "modal-content");
            __builder.AddMarkupContent(146, @"<div class=""modal-header""><h5 class=""modal-title text-primary-d3"" id=""LabelConfirmacionDeEliminacionDeCurso"">
                    Eliminar Cursos Con Profesores
                </h5>

                <button type=""button"" class=""close"" data-dismiss=""modal"" aria-label=""Close""><span aria-hidden=""true"">&times;</span></button></div>

            ");
            __builder.OpenComponent<global::Microsoft.AspNetCore.Components.Forms.EditForm>(147);
            __builder.AddAttribute(148, "Model", global::Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<global::System.Object>(
#nullable restore
#line 152 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                              CursosConProfesoreDtoModel

#line default
#line hidden
#nullable disable
            ));
            __builder.AddAttribute(149, "ChildContent", (global::Microsoft.AspNetCore.Components.RenderFragment<Microsoft.AspNetCore.Components.Forms.EditContext>)((context) => (__builder2) => {
                __builder2.OpenElement(150, "div");
                __builder2.AddAttribute(151, "class", "modal-body");
                __builder2.OpenElement(152, "div");
                __builder2.AddAttribute(153, "class", "form-group row");
                __builder2.AddMarkupContent(154, "<div class=\"col-sm-4 col-form-label text-sm-right pr-0\"><label for=\"CursoPorEliminarCodigoCurso\" class=\"mb-0\">Codigo del curso</label></div>\r\n\r\n                        ");
                __builder2.OpenElement(155, "div");
                __builder2.AddAttribute(156, "class", "col-sm-8");
                __builder2.OpenElement(157, "label");
                __builder2.AddAttribute(158, "for", "CursosConProfesoreConProfesorePorEliminarCodigoCurso");
                __builder2.AddAttribute(159, "class", "form-control col-sm-12 col-md-12");
#nullable restore
#line 163 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
__builder2.AddContent(160, CursosConProfesoreDtoModel.CodigoCurso);

#line default
#line hidden
#nullable disable
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.AddMarkupContent(161, "\r\n\r\n\r\n                    ");
                __builder2.OpenElement(162, "div");
                __builder2.AddAttribute(163, "class", "form-group row");
                __builder2.AddMarkupContent(164, "<div class=\"col-sm-4 col-form-label text-sm-right pr-0\"><label for=\"CursosConProfesorePorEliminarCedulaProfesor\" class=\"mb-0\">Cedula Profesor</label></div>\r\n\r\n                        ");
                __builder2.OpenElement(165, "div");
                __builder2.AddAttribute(166, "class", "col-sm-8");
                __builder2.OpenElement(167, "label");
                __builder2.AddAttribute(168, "for", "CursosConProfesorePorEliminarCedulaProfeso");
                __builder2.AddAttribute(169, "class", "form-control col-sm-12 col-md-12");
#nullable restore
#line 174 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
__builder2.AddContent(170, CursosConProfesoreDtoModel.CedulaProfesor);

#line default
#line hidden
#nullable disable
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.AddMarkupContent(171, "\r\n\r\n                    ");
                __builder2.OpenElement(172, "div");
                __builder2.AddAttribute(173, "class", "form-group row");
                __builder2.AddMarkupContent(174, "<div class=\"col-sm-4 col-form-label text-sm-right pr-0\"><label for=\"CursosConProfesorePorEliminarNumeroCiclo\" class=\"mb-0\">Numero Ciclo</label></div>\r\n\r\n                        ");
                __builder2.OpenElement(175, "div");
                __builder2.AddAttribute(176, "class", "col-sm-8");
                __builder2.OpenElement(177, "label");
                __builder2.AddAttribute(178, "for", "CursosConProfesorePorEliminarNumeroCiclo");
                __builder2.AddAttribute(179, "class", "form-control col-sm-12 col-md-12");
#nullable restore
#line 184 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
__builder2.AddContent(180, CursosConProfesoreDtoModel.NumeroCiclo);

#line default
#line hidden
#nullable disable
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.CloseElement();
                __builder2.AddMarkupContent(181, "\r\n\r\n                    ");
                __builder2.AddMarkupContent(182, @"<div class=""alert bgc-orange-l3 brc-orange-l1 text-dark-tp1"" role=""alert"">
                        Desea
                        <a class=""alert-link text-danger-d1"">
                            Eliminar
                        </a>
                        este registro?
                    </div>");
                __builder2.CloseElement();
                __builder2.AddMarkupContent(183, "\r\n\r\n                ");
                __builder2.OpenElement(184, "div");
                __builder2.AddAttribute(185, "class", "modal-footer");
                __builder2.AddMarkupContent(186, "<button type=\"button\" class=\"btn btn-secondary px-4\" data-dismiss=\"modal\">No</button>\r\n                    ");
                __builder2.OpenElement(187, "button");
                __builder2.AddAttribute(188, "type", "button");
                __builder2.AddAttribute(189, "class", "btn btn-primary px-4");
                __builder2.AddAttribute(190, "onclick", global::Microsoft.AspNetCore.Components.EventCallback.Factory.Create<global::Microsoft.AspNetCore.Components.Web.MouseEventArgs>(this, 
#nullable restore
#line 199 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
                                                                                 ConfirmarEliminacionDeCursosConProfesores

#line default
#line hidden
#nullable disable
                ));
                __builder2.AddMarkupContent(191, "Sí");
                __builder2.CloseElement();
                __builder2.CloseElement();
            }
            ));
            __builder.CloseComponent();
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.CloseElement();
        }
        #pragma warning restore 1998
#nullable restore
#line 207 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Pages\CursosConProfesores.razor"
       
    private CursosConProfesoreDto[] ListaDeCursosConProfesores;

    private CursosConProfesoreDto CursosConProfesoreDtoModel = new();


    private string AccionDeEdicion;

    private string CodigoCursoPorActualizar;

    private string CodigoCursosConProfesorePorEliminar;

    private string UtlHost = "https://localhost:44365/api";

    protected override async Task OnInitializedAsync()
    {
        await ObtenerCursosConProfesores();
    }

    private async Task MostrarModalDeAgregar()
    {

        AccionDeEdicion = "Agregar";
        CursosConProfesoreDtoModel = new();

        await JSRuntime.InvokeAsync<object>("global.openModal", "ModalEdicionDeCursosConProfesores");
    }

    private async Task MostrarModalDeActualizar(string CodigoCurso)
    {

        AccionDeEdicion = "Actualizar";

        await ObtenerCursosConProfesorePorId(CodigoCurso);

        CodigoCursoPorActualizar = CodigoCurso;

        await JSRuntime.InvokeAsync<object>("global.openModal", "ModalEdicionDeCursosConProfesores");

    }

    private async Task GuardarCursosConProfesore()
    {
        if (AccionDeEdicion == "Agregar")
        {
            await AgregarCursosConProfesores();
        }
        else
        {
            await ActualizarCursosConProfesores();
        }
    }

    private async Task MostrarModalDeEliminar(string CodigoCurso)
    {

        await ObtenerCursosConProfesorePorId(CodigoCurso);

        CodigoCursosConProfesorePorEliminar = CodigoCurso;

        await JSRuntime.InvokeAsync<object>("global.openModal", "ModalConfirmacionDeEliminacionDeCursosConProfesore");
    }

    private async Task ConfirmarEliminacionDeCursosConProfesores()
    {

        await EliminarCursosConProfesores();

    }


    private async Task ObtenerCursosConProfesores()
    {
        ListaDeCursosConProfesores = await Http.GetFromJsonAsync<CursosConProfesoreDto[]>($"{UtlHost}/CursosConProfesores");
    }

    private async Task ObtenerCursosConProfesorePorId(string CodigoCurso)
    {
        CursosConProfesoreDtoModel = await Http.GetFromJsonAsync<CursosConProfesoreDto>($"{UtlHost}/CursosConProfesores/{CodigoCurso}");

    }

    private async Task AgregarCursosConProfesores()
    {
        var cursosConProfesore = CursosConProfesoreDtoModel;

        using var response = await Http.PostAsJsonAsync($"{UtlHost}/CursosConProfesores", cursosConProfesore);

        if (response.IsSuccessStatusCode)
        {
            await JSRuntime.InvokeAsync<object>("global.closeModal", "ModalEdicionDeCursosConProfesores");

            await ObtenerCursosConProfesores();

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaExito", "Curso agregada correctamente");

        }
        else
        {
            string errorMessage = response.ReasonPhrase;
            Console.WriteLine($"Error: {errorMessage}");

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaError", "No se pudo agregar el Curso ");

        }
    }

    private async Task ActualizarCursosConProfesores()
    {
        var cursosConProfesore = CursosConProfesoreDtoModel;

        using var response = await Http.PutAsJsonAsync($"{UtlHost}/CursosConProfesores/{CodigoCursoPorActualizar}", cursosConProfesore);

        if (response.IsSuccessStatusCode)
        {
            await JSRuntime.InvokeAsync<object>("global.closeModal", "ModalEdicionDeCursosConProfesores");

            await ObtenerCursosConProfesores();

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaExito", "Curso actualizado correctamente");
        }
        else
        {
            string errorMessage = response.ReasonPhrase;
            Console.WriteLine($"Error: {errorMessage}");

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaError", "No se pudo actualizar la Curso ");

        }
    }

    private async Task EliminarCursosConProfesores()
    {
        using var response = await Http.DeleteAsync($"{UtlHost}/CursosConProfesores/{CodigoCursosConProfesorePorEliminar}");

        if (response.IsSuccessStatusCode)
        {
            await JSRuntime.InvokeAsync<object>("global.closeModal", "ModalConfirmacionDeEliminacionDeCurso");

            await ObtenerCursosConProfesores();

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaExito", "Curso eliminado correctamente");
        }
        else
        {
            string errorMessage = response.ReasonPhrase;
            Console.WriteLine($"Error: {errorMessage}");

            await JSRuntime.InvokeAsync<object>("global.mostrarAlertaError", "Error al eliminar el curso");

        }
    }

#line default
#line hidden
#nullable disable
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private IJSRuntime JSRuntime { get; set; }
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private HttpClient Http { get; set; }
    }
}
namespace __Blazor.SistemaUniversidad.FrontEnd.Pr0.Pages.CursosConProfesores
{
    #line hidden
    internal static class TypeInference
    {
        public static void CreateValidationMessage_0<TValue>(global::Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder, int seq, int __seq0, global::System.Linq.Expressions.Expression<global::System.Func<TValue>> __arg0)
        {
        __builder.OpenComponent<global::Microsoft.AspNetCore.Components.Forms.ValidationMessage<TValue>>(seq);
        __builder.AddAttribute(__seq0, "For", __arg0);
        __builder.CloseComponent();
        }
        public static void CreateValidationMessage_1<TValue>(global::Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder, int seq, int __seq0, global::System.Linq.Expressions.Expression<global::System.Func<TValue>> __arg0)
        {
        __builder.OpenComponent<global::Microsoft.AspNetCore.Components.Forms.ValidationMessage<TValue>>(seq);
        __builder.AddAttribute(__seq0, "For", __arg0);
        __builder.CloseComponent();
        }
        public static void CreateValidationMessage_2<TValue>(global::Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder, int seq, int __seq0, global::System.Linq.Expressions.Expression<global::System.Func<TValue>> __arg0)
        {
        __builder.OpenComponent<global::Microsoft.AspNetCore.Components.Forms.ValidationMessage<TValue>>(seq);
        __builder.AddAttribute(__seq0, "For", __arg0);
        __builder.CloseComponent();
        }
    }
}
#pragma warning restore 1591