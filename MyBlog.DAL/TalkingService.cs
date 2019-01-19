using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.DAL
{
    public class TalkingService
    {
        public static bool InsertIntoTalking(String text, int aid)
        {
            try
            {
                SqlConnection sqlConn = DBUtils.GetConnection();
                sqlConn.Open();
                String sql = "insert into talking(tcontent, aid, time) values('" + text + "', " + 
                   aid +", GETDATE())";
                SqlCommand myCmd = new SqlCommand(sql, sqlConn);
                myCmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {                
                return false;
            }
        }

        public static bool DeleteTalkingByID(int tid)
        {
            try
            {
                SqlConnection sqlConn = DBUtils.GetConnection();
                sqlConn.Open();
                String sql = "delete from talking where tid = " + tid;
                SqlCommand myCmd = new SqlCommand(sql, sqlConn);
                myCmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
