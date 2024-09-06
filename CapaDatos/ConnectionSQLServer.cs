using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class ConnectionSQLServer
    {
        const string CONNECTION = "Server=DESKTOP-B5HECAG\\SQLEXPRESS;Database=tienda_bd;User ID=sa;Password=pachan242";
        public  SqlConnection GetConnection()
        {
            return new SqlConnection(CONNECTION);
        }

        public static void OpenConnection(SqlConnection conn) {
            conn.Open();
        }

        public static void CloseConnection(SqlConnection conn)
        {
            conn.Close();
        }
    }
}
