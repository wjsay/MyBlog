using MyBlog.DAL;
using MyBlog.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.BLL
{
    public class PictureManage
    {
        public static bool Insert(String path)
        {
            Account account = UserManage.GetMyAccount();
            if (account == null) return false;
            return PictureService.InsertPathAndID(path, account.Aid);                      
        }
    }
}
