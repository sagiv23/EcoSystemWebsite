using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SagivProject
{
    public partial class Survey : System.Web.UI.Page
    {
        public string st = "";
        public string sur = "";
        public string msg = "";
        public string input = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uName"].ToString() == "אורח")
            {
                msg = "<p id = 'msg' style = 'text-align: center;'>רק משתמש רשום רשאי להצביע</p>";
                input = "<input type = 'submit' name = 'submit' id = 'submit' value = 'הצג' disabled/>";
                input += "<style>";
                input += "#submit{ background-color: rgb(116, 163, 157); cursor: none;}";
                input += "</style>";

                string ans = Request.Form["surv"];

                if (ans == "1")
                    Application["q1"] = (int)Application["q1"] + 1;
                if (ans == "2")
                    Application["q2"] = (int)Application["q2"] + 1;
                if (ans == "3")
                    Application["q3"] = (int)Application["q3"] + 1;
                if (ans == "4")
                    Application["q4"] = (int)Application["q4"] + 1;

                //כמות הקולות לכל קטגוריה
                int[] s = new int[4];

                s[0] = (int)Application["q1"];
                s[1] = (int)Application["q2"];
                s[2] = (int)Application["q3"];
                s[3] = (int)Application["q4"];


                //סידור הסקר על פי כמות הקולות לכל קטגוריה
                int width = 10;
                double[] w = new double[4];
                for (int i = 0; i < w.Length; i++)
                    w[i] = s[i] * width;

                st += "<p style = 'text-align: center;'>מצוין = " + s[0] + ", נחמד = " + s[1] + ", טעון שיפור = " + s[2] + ", צריך עבודה = " + s[3] + "</p> <br>";


                sur += "<table style = 'margin: 0px auto; direction: ltr; border: 2px solid rgb(51, 153, 153); '>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> מצוין </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color1.png' align = 'left' height = '30' width = '" + w[0] + "'></td></tr>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> נחמד </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color2.png' align = 'left' height = '30' width = '" + w[1] + "'></td></tr>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> טעון שיפור </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color3.png' align = 'left' height = '30' width = '" + w[2] + "'></td></tr>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> צריך עבודה </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color4.png' align = 'left' height = '30' width = '" + w[3] + "'></td></tr>";

                sur += "</table>";
            }

            else if ((bool)Session["voted"])
            {
                msg = "<p id = 'msg' style = 'text-align: center;'>אתה יכול להצביע רק פעם אחת</p>";
                input = "<input type = 'submit' name = 'submit' id = 'submit' value = 'הצג' disabled/>";
                input += "<style>";
                input += "#submit{ background-color: rgb(116, 163, 157); cursor: none;}";
                input += "</style>";

                string ans = Request.Form["surv"];

                if (ans == "1")
                    Application["q1"] = (int)Application["q1"] + 1;
                if (ans == "2")
                    Application["q2"] = (int)Application["q2"] + 1;
                if (ans == "3")
                    Application["q3"] = (int)Application["q3"] + 1;
                if (ans == "4")
                    Application["q4"] = (int)Application["q4"] + 1;

                //כמות הקולות לכל קטגוריה
                int[] s = new int[4];

                s[0] = (int)Application["q1"];
                s[1] = (int)Application["q2"];
                s[2] = (int)Application["q3"];
                s[3] = (int)Application["q4"];


                //סידור הסקר על פי כמות הקולות לכל קטגוריה
                int width = 10;
                double[] w = new double[4];
                for (int i = 0; i < w.Length; i++)
                    w[i] = s[i] * width;

                st += "<p style = 'text-align: center;'>מצוין = " + s[0] + ", נחמד = " + s[1] + ", טעון שיפור = " + s[2] + ", צריך עבודה = " + s[3] + "</p> <br>";


                sur += "<table style = 'margin: 0px auto; direction: ltr; border: 2px solid rgb(51, 153, 153); '>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> מצוין </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color1.png' align = 'left' height = '30' width = '" + w[0] + "'></td></tr>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> נחמד </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color2.png' align = 'left' height = '30' width = '" + w[1] + "'></td></tr>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> טעון שיפור </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color3.png' align = 'left' height = '30' width = '" + w[2] + "'></td></tr>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> צריך עבודה </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color4.png' align = 'left' height = '30' width = '" + w[3] + "'></td></tr>";

                sur += "</table>";
            }
            else
            {
                Session["voted"] = true;   // משתמש מסומן כמצביע
                input = "<input type = 'submit' name = 'submit' id = 'submit' value = 'הצג'/>";

                string ans = Request.Form["surv"];

                if (ans == "1")
                    Application["q1"] = (int)Application["q1"] + 1;
                if (ans == "2")
                    Application["q2"] = (int)Application["q2"] + 1;
                if (ans == "3")
                    Application["q3"] = (int)Application["q3"] + 1;
                if (ans == "4")
                    Application["q4"] = (int)Application["q4"] + 1;

                //כמות הקולות לכל קטגוריה
                int[] s = new int[4];

                s[0] = (int)Application["q1"];
                s[1] = (int)Application["q2"];
                s[2] = (int)Application["q3"];
                s[3] = (int)Application["q4"];


                //סידור הסקר על פי כמות הקולות לכל קטגוריה
                int width = 10;
                double[] w = new double[4];
                for (int i = 0; i < w.Length; i++)
                    w[i] = s[i] * width;

                st += "<p style = 'text-align: center;'>מצוין = " + s[0] + ", נחמד = " + s[1] + ", טעון שיפור = " + s[2] + ", צריך עבודה = " + s[3] + "</p> <br>";


                sur += "<table style = 'margin: 0px auto; direction: ltr; border: 2px solid rgb(51, 153, 153); '>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> מצוין </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color1.png' align = 'left' height = '30' width = '" + w[0] + "'></td></tr>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> נחמד </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color2.png' align = 'left' height = '30' width = '" + w[1] + "'></td></tr>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> טעון שיפור </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color3.png' align = 'left' height = '30' width = '" + w[2] + "'></td></tr>";

                sur += "<tr class = 'tr'><td class = 'td' style = 'text-align: left; height: 60px;'> צריך עבודה </td>";
                sur += "<td class = 'td' style = 'width: 500px;' align = 'left'><img src='pics/Survey/color4.png' align = 'left' height = '30' width = '" + w[3] + "'></td></tr>";

                sur += "</table>";
            }

        }
    }
}