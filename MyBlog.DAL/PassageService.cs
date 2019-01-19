using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.DAL
{
    public class PassageService
    {
        public static bool Insert(string title, string content, int aid, int type)
        {
            SqlConnection sqlConn = DBUtils.GetConnection();
            try
            {
                sqlConn.Open();
                String sql = "insert into passage(ptitle, pcontent, aid, type, time)" +
                    " values('" + title + "', '" + content + "', " + aid + ", " + type + ", getdate())";
                SqlCommand myCmd = new SqlCommand(sql, sqlConn);
                myCmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
            //其实底层可以分为两类，有无返回集的执行语句
        }
    }
}
