using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.Models
{
    class Passage2tag
    {
        public Passage2tag() { }
        private int pid;
        private int tid;
        private string time;
        private int del;
        public int Pid
        {
            get { return pid; }
            set { pid = value; }
        }
        public int Tid
        {
            get { return tid; }
            set { tid = value; }
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
