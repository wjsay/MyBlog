using MyBlog.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlog
{
    public partial class PostMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(UserManage.GetMyAccount() == null)
            {
                Response.Write("<script>alert('" + "请先登录" + "')</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Title1.Value == "")
            {
                Response.Write("<script>alert('" + "标题不能为空" + "')</script>");
                return;
            }
            if(TextArea1.Value == "")
            {
                Response.Write("<script>alert('" + "内容不能为空" + "')</script>");
                return;
            }
            int type = 0;
            if (radio1.Checked) type = 1;
            if (radio2.Checked) type = 2;
            if(UserManage.GetMyAccount() == null)
            {
                Response.Write("<script>alert('" + "请先登录" + "')</script>");
                return;
            }
            else
            {
                if(PassageManage.Insert(Title1.Value, TextArea1.Value, 
                    UserManage.GetMyAccount().Aid, type)) {
                    Response.Write("<script>alert('" + "发布成功" + "')</script>");
                }
                else
                {
                    Response.Write("<script>alert('" + "发布失败" + "')</script>");
                }
            }
        }
    }
}