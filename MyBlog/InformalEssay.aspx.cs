using MyBlog.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlog
{
    public partial class InformalEssay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (UserManage.GetMyAccount() == null)
            {
                SqlDataSource1.DeleteCommand = "DELETE FROM passage WHERE pid = -1";
            }
            else
            {
                SqlDataSource1.DeleteCommand = "DELETE FROM passage WHERE (pid=@pid) and aid = " +
                    UserManage.GetMyAccount().Aid;
            }
        }
        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}