using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.Models
{
    class Comment
    {
        public Comment() { }
        private int cid;
        private string ccontent;
        private string name;
        private int type;
        private int pid;
        private string time;
        private int del;
        public int Cid
        {
            get { return cid; }
            set { cid = value; }
        }
        public string Ccontent
        {
            get { return ccontent; }
            set { ccontent = value; }
        }
        public String Name
        {
            get { return name; }
            set { name = value; }
        }
        public int Type
        {
            get { return type; }
            set { type = value; }
        }
        public int Pid
        {
            get { return pid; }
            set { pid = value; }
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
    }
}
