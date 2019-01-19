using MyBlog.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlog
{
    public partial class Friend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (UserManage.GetMyAccount() == null)
            //{
            //    string msg = "尚未登录或登录授权过期，请登录";
            //    Response.Write("<script>alert('" + msg + "')" +
            //        ";window.location.href='Login.aspx'</script>");
            //}
        }
    }
}