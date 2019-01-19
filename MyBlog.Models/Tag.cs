using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.Models
{
    class Tag
    {
        public Tag() { }
        private int tagid;
        private string tname;
        private string time;
        private int del;
        public int Tagid
        {
            get { return tagid; }
            set { tagid = value; }
        }
        public string Tname
        {
            get { return tname; }
            set { tname = value; }
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
