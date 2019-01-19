using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.Models
{
    class Passage2account
    {
        public Passage2account() { }
        private int pid;
        private int aid;
        private string time;
        private int del;
        public int Pid
        {
            get { return pid; }
            set { pid = value; }
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
