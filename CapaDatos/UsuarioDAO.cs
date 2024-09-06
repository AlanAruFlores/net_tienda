using CapaEntidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class UsuarioDAO
    {
        ConnectionSQLServer _connection;

        public UsuarioDAO()
        {
            _connection = new ConnectionSQLServer();
        }


        public List<Usuario> ListUsers()
        {
            List<Usuario> results = new List<Usuario>();

            try
            {
                using (SqlConnection sqlConnection = _connection.GetConnection())
                {
                    //Guardo la query
                    string query = "select idUsuario,nombres,apellidos,correo,clave,reestablecer,activo from usuario; ";
                    SqlCommand command = new SqlCommand(query, sqlConnection);
                    command.CommandType = CommandType.Text;

                    //Abro la conexion 
                    ConnectionSQLServer.OpenConnection(sqlConnection);

                    //Leo las respuestas
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            //Añado los registros en una lista 
                            results.Add(
                                new Usuario()
                                {
                                    IdUsuario = Convert.ToInt32(reader["idUsuario"]),
                                    Nombres = reader["nombres"].ToString(),
                                    Apellidos = reader["apellidos"].ToString(),
                                    Correo = reader["correo"].ToString(),
                                    Clave = reader["clave"].ToString(),
                                    Reestablecer = Convert.ToBoolean(reader["reestablecer"]),
                                    Activo = Convert.ToBoolean(reader["activo"])
                                }
                            );
                        }

                    }

                    //Cierro la conexion
                    ConnectionSQLServer.CloseConnection(sqlConnection);

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString()); 
            }

            return results;
        }
    }
}
