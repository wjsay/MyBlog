using MyBlog.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlog
{
    public partial class Liuyan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (UserManage.GetMyAccount() != null)
            {
                isay.InnerText = UserManage.GetMyAccount().Moto;
                SqlDataSource1.SelectCommand = "select * from liuyan where aid = " +
                    UserManage.GetMyAccount().Aid +"order by time desc";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            if(TextArea1.InnerText.Trim() == "")
            {
                Response.Write("<script>alert('留言不能为空哦')</script>");
            }
            else
            {
                if(UserManage.GetMyAccount() == null)
                {
                    Response.Write("<script>alert('请先登录')</script>");
                    return;
                }
                if (TalkingManage.Insert(TextArea1.InnerText.Trim(), UserManage.GetMyAccount().Aid))
                {
                    Response.Write("<script>alert('留言成功')</script>");
                    Response.Redirect("liuyan");
                }
                else {
                    Response.Write("<script>alert('留言失败')</script>");
                }
            }
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("<script>alert('选择改变了')</script>");
            ListViewItem listViewItem = (ListViewItem)sender;
        }
        protected void DelATalking(object sender, EventArgs e)
        {
            if(true)
            {
                
                //Response.Write("<script>alert('删除成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败')</script>");
            }
        }
    }
}