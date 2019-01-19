using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyBlog.DAL;

namespace MyBlog.BLL
{
    public class TalkingManage
    {
        public static bool Insert(String text, int aid)
        {
            return TalkingService.InsertIntoTalking(text, aid);
        }

        public static bool Delete(int tid)
        {
            return TalkingService.DeleteTalkingByID(tid);
        }
    }
}
