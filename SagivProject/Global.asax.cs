using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace SagivProject
{
    public class Global : System.Web.HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            Application["counter"] = 0; //מונה מבקרים

            //סקר
            Application["q1"] = 0;
            Application["q2"] = 0;
            Application["q3"] = 0;
            Application["q4"] = 0;
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session["uName"] = "אורח";
            Session["admin"] = "no";
            Session["voted"] = false; //סקר
        }

        void Session_End(object sender, EventArgs e)
        {
            Session["uName"] = "אורח";
            Session["admin"] = "no";
            Session["voted"] = false; //סקר
        }
    }
}