using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.Models
{
    class Record
    {
        public Record() { }
        private int rid;
        private int ip;
        private string ps;
        private string time;
        private int del;
        private int aid;
        public int Rid
        {
            get { return rid; }
            set { rid = value; }
        }
        public string Ps
        {
            get { return ps; }
            set { ps = value; }
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
        public int Aid
        {
            get { return aid; }
            set { aid = value; }
        }
    }
}
