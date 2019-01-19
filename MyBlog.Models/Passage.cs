using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBlog.Models
{
    class Passage
    {
        public Passage() { }
        private int pid;
        private string title;
        private string pcontent;
        private int cnt;
        private int up;
        private int down;
        private int aid;
        private string type;
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
        public string Title
        {
            get { return title; }
            set { title = value; }
        }
        public string Pcontent
        {
            get { return pcontent; }
            set { pcontent = value; }
        }
        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        public int Cnt
        {
            get { return cnt; }
            set { cnt = value; }
        }
        public int Up
        {
            get { return up; }
            set { up = value; }
        }
        public int Down
        {
            get { return down; }
            set { down = value; }
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
