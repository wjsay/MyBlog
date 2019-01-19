using MyBlog.BLL;
using MyBlog.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlog
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('加载数据')</script>");
            Account account = UserManage.GetMyAccount();
            if(account != null)
            {
                phone.InnerText = account.Phone;
                email.InnerText = account.Email;
                school.InnerText = account.School;
                moto.InnerText = account.Moto;
                nickname.InnerText = account.Aname;
            }
            else
            {
                Response.Write("<script>alert('尚未登录')</script>");
            }
        }
    }
}