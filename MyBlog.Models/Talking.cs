using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.Models
{
    class Talking
    {
        public Talking() { }
        private int tid;
        private string tcontent;
        private int aid;
        private string time;
        private int del;
        public int Tid
        {
            get { return tid; }
            set { tid = value; }
        }
        public string Tcontent
        {
            get { return tcontent; }
            set { tcontent = value; }
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
