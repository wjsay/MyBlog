using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyBlog.Models;
using MyBlog.DAL;

namespace MyBlog.DAL
{
    public class UserService
    {
        public static Account GetUserByID(string Id)
        {
            SqlConnection sqlConn = DBUtils.GetConnection();
            sqlConn.Open();
            String sql = "select * from account where aid = " + Id;
            SqlCommand myCmd = new SqlCommand(sql, sqlConn);
            SqlDataReader myReader = myCmd.ExecuteReader();
            Account account = new Account();
            if (myReader.Read())
            {
                account.Aid = System.Convert.ToInt32(myReader["aid"]);
                account.Aname = (string)myReader["aname"];
                account.Password = (string)myReader["password"];
                account.Email = (string)myReader["email"];
                account.Gender = (string)myReader["gender"];

            }
            myReader.Close();
            sqlConn.Close();
            return account;
        }
        public static Account GetUserByName(string Aname)
        {
            SqlConnection sqlConn = DBUtils.GetConnection();
            //if (sqlConn.AccessToken == true)
            sqlConn.Open();  
            String sql = "select * from account where aname = '" + Aname + "'";
            SqlCommand myCmd = new SqlCommand(sql, sqlConn);
            SqlDataReader myReader = myCmd.ExecuteReader();
            Account account = new Account();
            if (myReader.Read())
            {
                account.Aid = System.Convert.ToInt32(myReader["aid"]);
                account.Aname = (string)myReader["aname"];
                account.Password = (string)myReader["password"];
                account.Email = (string)myReader["email"];
                account.Gender = (string)myReader["gender"];
                account.Phone = (string)myReader["phone"];
                account.Moto = (string)myReader["moto"];
                account.School = (string)myReader["school"];
            }
            myReader.Close();
            sqlConn.Close();
            return account;
        }
        public static bool Insert(string nickname, string password, string email, string gender, string school,
            string phone, string moto)
        {
            SqlConnection sqlConn = DBUtils.GetConnection();
            try
            {
                sqlConn.Open();
                string sql = "insert into account (aname, password, email, gender, school, phone, moto, time)" +
                "values('" + nickname + "', '" + password + "', '" + email + "', '" + gender + "'," +
                " '" + school + "', '" + phone + "', '" + moto + "', GETDATE())";
            SqlCommand myCmd = new SqlCommand(sql, sqlConn);
                myCmd.ExecuteNonQuery();
                return true;
            } catch (Exception)
            {
                return false;
            }
        }
        public static bool Update(string nickname, string password, string email, string gender, string school,
            string phone, string moto)
        {
            SqlConnection sqlConn = DBUtils.GetConnection();
            try
            {
                sqlConn.Open();
                string sql = "update account set password = '" 
                    + password + "', gender ='"+ gender + "', aname = '"
                    + nickname + "', email = '" + email + "', school = '" 
                    + school +"', phone = '"+ phone +"', moto = '"
                    + moto + "' where aname = 'Bill'";
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
