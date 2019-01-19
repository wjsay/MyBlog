using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.DAL
{
    class DBUtils
    {
        public static SqlConnection GetConnection()
        {
            String connectstring = "Data Source=.\\SQLEXPRESS;" 
                + "Initial Catalog=myblog;"
                + "Integrated Security=True";
            SqlConnection sqlConn = new SqlConnection(connectstring);
            return sqlConn;
        }
    }
}
