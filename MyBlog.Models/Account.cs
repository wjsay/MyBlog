using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.Models
{
    public class Account
    {
        public Account() { }
        private int aid;
        private string aname;
        private string email;
        private string gender;
        private string photo;
        private string time;
        private int del;
        private string password;
        private string phone;
        private string school;
        private string moto;

        public int Aid
        {
            get { return aid; }
            set { aid = value; }
        }
        public string Aname
        {
            get { return aname; }
            set { aname = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }
        public string Photo
        {
            get { return photo; }
            set { photo = value; }
        }
        public string Time
        {
            get { return time; }
            set { time = value; }
        }
        public int Del
        {
            get { return del; }
            set { del = value; }
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }
        public string School
        {
            get { return school; }
            set { school = value; }
        }
        public string Moto
        {
            get { return moto; }
            set { moto = value; }

        }

    }
}
