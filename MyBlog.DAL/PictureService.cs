using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.DAL
{
    public class PictureService
    {
        public static bool InsertPathAndID(string path, int aid)
        {
            SqlConnection sqlConn = DBUtils.GetConnection();
            try
            {
                sqlConn.Open();
                String sql = "insert into picture(name, aid, time) " +
                    "values('" + path + "', " + aid + ", getdate())";
                SqlCommand myCmd = new SqlCommand(sql, sqlConn);
                myCmd.ExecuteNonQuery();
                return true;
            } catch (Exception)
            {
                return false;
            }            
        }
    }
}
