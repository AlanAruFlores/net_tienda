using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;
using CapaEntidades;

namespace CapaNegocio
{
    public interface IUsuarioService{ 
        public List<Usuario> GetUsuarios();
    }

    public class UsuarioService : IUsuarioService
    {
        public UsuarioDAO _usuarioDao;

        public UsuarioService() {
            _usuarioDao = new UsuarioDAO();
        }

        public List<Usuario> GetUsuarios()
        {
            return _usuarioDao.ListUsers();
        }
    }
}
