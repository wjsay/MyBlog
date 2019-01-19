using MyBlog.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.BLL
{
    public class PassageManage
    {
        public static bool Insert(string title, string content, int aid,int type)
        {
            return PassageService.Insert(title, content, aid, type);
        }
    }
}
