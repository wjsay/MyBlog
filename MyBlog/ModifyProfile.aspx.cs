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
    public partial class ModifyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (UserManage.GetMyAccount() == null)
            {
                Response.Write("<script>alert('" + "未登录，可以先登录" + "')</script>");
                return;
            }
            else if(Text0.Value == "") //小心此句
            {
                //update account set aname = '2' where aid = 5;
                Account account = UserManage.GetMyAccount();
                //Text0.Value = account.Password;
                Text1.Value = account.Aname;
                Text0.Value = Text2.Value = Text3.Value = account.Password;
                Text4.Value = account.Email;
                Text5.Value = account.School;
                Text6.Value = account.Phone;
                Text7.Value = account.Moto;
                if (account.Gender == "女")  radio1.Checked = true;
                else radio0.Checked = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(UserManage.GetMyAccount() == null)
            {
                Response.Write("<script>alert('" + "未登录，请先登录" + "')</script>");
                return;
            }
            string nickname = Text1.Value.Trim(),
                password0 = Text0.Value,
                password = Text2.Value.Trim(),
                password2 = Text3.Value.Trim(),
                gender = "男",
                email = Text4.Value,
                school = Text5.Value,
                phone = Text6.Value,
                moto = Text7.Value;
            if (radio1.Checked) gender = "女";
            if (nickname == "" || password == "" || password2 == "")
            {
                Response.Write("<script>alert('" + "昵称或密码不能为空" + "')</script>");
                return;
            }
            if (password != password2)
            {
                Response.Write("<script>alert('" + "密码不匹配" + "')</script>");
                return;
            }
            if (UserManage.Update(nickname, password, email, gender, school, phone, moto))
            {
                Response.Write("<script>alert('" + "修改成功，请重新登录" + "')</script>");
                UserManage.Logout();
            }
            else
            {
                Response.Write("<script>alert('" + "修改失败" + "')</script>");
            }
        }
    }
}