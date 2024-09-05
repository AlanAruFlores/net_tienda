using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using Tienda.CapaPresentacion.Models;

namespace Tienda.CapaPresentacion.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }


        /* Ejemplo de mandar argumentos a un get sin view bag
        [HttpGet]
        [Route("/test/page/{value}")]
        public IActionResult Test(String value)
        {
            return View("Test", value);
        }
        */

        /*Con view bag*/
        [HttpGet]
        [Route("/test/page/{value}")]
        public IActionResult Test(String value)
        {
            ViewBag.Value = value;
            return View("Test");
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
