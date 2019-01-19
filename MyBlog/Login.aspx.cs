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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //在加载时，执行的动作
            UserManage.Logout();
        }
        protected void UserLogin(object sender, EventArgs e)
        {
            //Response.Redirect("~/default.aspx");
        }
        protected void Logining(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Login1.UserName.ToString() == "1")
            {
                //Label1.Text = "hell0";

                //Response.Write("<script>alert('1')</script>");
            }

            Account account = new Account();
            //if(true)
            if (UserManage.Login(Login1.UserName.ToString(), Login1.Password.ToString(), out account))
            {
                Login1.Visible = false;
                Response.Redirect("~/default.aspx");
                Label1.Text = account.Aname;
            }
            else
            {
                Label1.Text = "false";
            }

        }

        protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
        {

        }
    }
}