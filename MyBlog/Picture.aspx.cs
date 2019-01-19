using MyBlog.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlog
{
    public partial class Picture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(UserManage.GetMyAccount() == null)
            //{
            //    string msg = "尚未登录或登录授权过期，请登录";
            //    Response.Write("<script>alert('" + msg + "')" +
            //        ";window.location.href='Login.aspx'</script>");
            //}
            if(UserManage.GetMyAccount() != null)
            {
                SqlDataSource1.SelectCommand = "select * from picture where aid = " + UserManage.GetMyAccount().Aid
                                + " order by time desc";
                SqlDataSource1.DeleteCommand = "DELETE FROM picture WHERE (picid=@picid) and aid = " +
                    UserManage.GetMyAccount().Aid;
            }
            else
            {
                SqlDataSource1.DeleteCommand = "DELETE FROM picture WHERE (picid=-1)";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.FileName == "")
            {
                Response.Write("<script>alert('" + "尚未选择图片" + "')</script>");
                return;
            }
            string picsrc = "img/" + FileUpload1.FileName;
            Image1.ImageUrl = picsrc;
            if (PictureManage.Insert(picsrc))
            {
                string ipath = Server.MapPath("img" + "\\" + FileUpload1.FileName);
                FileUpload1.SaveAs(ipath);
                Response.Write("<script>alert('" + "上传成功" + "')</script>");
                Response.Redirect("Picture");
            }
            else
            {
                Response.Write("<script>alert('" + "上传失败" + "')</script>");
            }
        }
        protected void FileSelected(object sender, EventArgs e)
        {

        }
        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}