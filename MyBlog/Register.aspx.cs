using MyBlog.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlog
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string nickname = Text1.Value.Trim(),
                password = Text2.Value.Trim(),
                password2 = Text3.Value.Trim(),
                gender = "男",
                email = Text4.Value,
                school = Text5.Value,
                phone = Text6.Value,
                moto = Text7.Value;
            if (radio1.Checked) gender = "女";
            if(nickname == "" || password == "" || password2 == "")
            {
                Response.Write("<script>alert('" + "昵称或密码不能为空" + "')</script>");
                return;
            }
            if(password != password2)
            {
                Response.Write("<script>alert('" + "密码不匹配" + "')</script>");
                return;
            }
            if(UserManage.Insert(nickname, password, email, gender, school, phone, moto))
            {
                Response.Write("<script>alert('" + "注册成功" + "')</script>");
            }
            else
            {
                //名字添加有列唯一约束
                Response.Write("<script>alert('" + "注册失败" + "')</script>");
            }
        }
    }
}