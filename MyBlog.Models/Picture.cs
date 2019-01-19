using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.Models
{
    class Picture
    {
        public Picture() { }
        private int picid;
        private string piccontent;
        private string name;
        private int type;
        private int aid;
        private string time;
        private int del;
        public int Picid
        {
            get { return picid; }
            set { picid = value; }
        }
        public string Piccontent
        {
            get { return piccontent; }
            set { piccontent = value; }
        }
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public int Type
        {
            get { return type; }
            set { type = value; }
        }
        public int Aid
        {
            get { return aid; }
            set { aid = value; }
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
