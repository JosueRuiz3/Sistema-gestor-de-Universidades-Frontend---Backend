#pragma checksum "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Shared\MainLayout.razor" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "dbda06940af8316c85709e7a8211bed31a319504"
// <auto-generated/>
#pragma warning disable 1591
namespace SistemaUniversidad.FrontEnd.Pr0.Shared
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
    public partial class MainLayout : LayoutComponentBase
    {
        #pragma warning disable 1998
        protected override void BuildRenderTree(global::Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder)
        {
            __builder.OpenComponent<global::SistemaUniversidad.FrontEnd.Pr0.Shared.NavMenu>(0);
            __builder.CloseComponent();
            __builder.AddMarkupContent(1, "\r\n\r\n");
            __builder.OpenElement(2, "div");
            __builder.AddAttribute(3, "class", "main-container bgc-white");
            __builder.AddAttribute(4, "b-1gutqtwejw");
            __builder.OpenComponent<global::SistemaUniversidad.FrontEnd.Pr0.Shared.SideBar>(5);
            __builder.CloseComponent();
            __builder.AddMarkupContent(6, "\r\n    \r\n    ");
            __builder.OpenElement(7, "div");
            __builder.AddAttribute(8, "class", "main-content");
            __builder.AddAttribute(9, "b-1gutqtwejw");
            __builder.OpenElement(10, "div");
            __builder.AddAttribute(11, "class", "page-content");
            __builder.AddAttribute(12, "b-1gutqtwejw");
            __builder.OpenElement(13, "div");
            __builder.AddAttribute(14, "class", "card acard");
            __builder.AddAttribute(15, "b-1gutqtwejw");
            __builder.OpenElement(16, "div");
            __builder.AddAttribute(17, "class", "card-body");
            __builder.AddAttribute(18, "b-1gutqtwejw");
#nullable restore
#line 13 "D:\Proyectos IDEs\Git Hub\Universidad Back y Font\Universodad FrontEnd\SistemaUniversidad.FrontEnd.Pr0\Shared\MainLayout.razor"
__builder.AddContent(19, Body);

#line default
#line hidden
#nullable disable
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.CloseElement();
            __builder.CloseElement();
        }
        #pragma warning restore 1998
    }
}
#pragma warning restore 1591