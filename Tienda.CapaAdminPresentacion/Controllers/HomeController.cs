using CapaEntidades;
using CapaNegocio;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Text.Json.Serialization;
using Tienda.CapaAdminPresentacion.Models;

namespace Tienda.CapaAdminPresentacion.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private IUsuarioService _usuarioService;
        

        public HomeController(ILogger<HomeController> logger, IUsuarioService usuarioService)
        {
            _logger = logger;
            _usuarioService = usuarioService;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public IActionResult Usuarios()
        {
            List<Usuario> usuarios =  _usuarioService.GetUsuarios();
            JsonResult json = Json(usuarios);
            return View(json);

        }

        /* 
         * Devuelve el resultado como json
        */

        [HttpGet]
        public JsonResult UsuariosJson()
        {
            List<Usuario> usuarios = _usuarioService.GetUsuarios();
            JsonResult json = Json(usuarios);
            return json;
        }
        
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
