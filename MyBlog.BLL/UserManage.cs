using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyBlog.DAL;
using MyBlog.Models;

namespace MyBlog.BLL
{
    public class UserManage
    {
        static Account account;
        public static bool Login(string Aname, string Password, out Account validUser)
        {
            account = UserService.GetUserByName(Aname);
            if(account == null || Password != account.Password)
            {
                validUser = null;
                return false;
            }
            else
            {
                validUser = account;
                return true;
            }
        }
        public static Account GetMyAccount()
        {
            return account;
        }
        public static bool Logout()
        {
            account = null;
            return true;
        }
        public static bool Insert(string nickname, string password, string email,
            string gender, string school, string phone, string moto)
        {
            return UserService.Insert(nickname, password, email, gender, school, phone, moto);
        }
        public static bool Update(string nickname, string password, string email,
            string gender, string school, string phone, string moto)
        {
            return UserService.Update(nickname, password, email, gender, school, phone, moto);
        }
    }
}
