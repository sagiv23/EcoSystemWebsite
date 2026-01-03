using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SagivProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string loginMsg;
        public string nav;
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg += "<h3>שלום ";
            loginMsg += Session["uName"];
            loginMsg += "</h3>";

            loginMsg += "<div style = 'text-align: center;'>";

            if (Session["uName"].ToString() == "אורח")
            {
                loginMsg += "<a href = 'register.aspx' class = 'button'>הרשמה</a>";
                loginMsg += "<a href = 'login.aspx' class = 'button'>התחברות</a>";
                loginMsg += "<a href = 'loginAdmin.aspx' class = 'button'>מנהל</a>";

                nav += $"<a style = \"font-size: 18px;\" class = \"index\" href = \"index.aspx\"> דף הבית </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"kayamot\" href = \"kayamot.aspx\"> קיימות </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"kayamot_earth\" href = \"kayamot_earth.aspx\"> קיימות בכדור הארץ </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Pics_Main\" href = \"Pics_Main.aspx\"> תמונות </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Gallery\" href = \"Gallery.aspx\"> גלריית תמונות </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Survey\" href = \"Survey.aspx\"> סקר </a>\r\n";

            }
            else if (Session["admin"].ToString() == "yes")
            {
                loginMsg += "<a href = 'ManagerPage.aspx' class = 'button'>דף ניהול</a>";
                loginMsg += "<a href = 'logout.aspx' class = 'button'>התנתק</a>";

                nav += $"<a style = \"font-size: 18px;\" class = \"index\" href = \"index.aspx\"> דף הבית </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"kayamot\" href = \"kayamot.aspx\"> קיימות </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"kayamot_earth\" href = \"kayamot_earth.aspx\"> קיימות בכדור הארץ </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Definition_Ecosystem\" href = \"Definition_Ecosystem.aspx\"> מערכת אקולוגית </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Ecosystem_Past\" href = \"Ecosystem_Past.aspx\"> מערכת אקולוגית - עבר </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Ecosystem_Now\" href = \"Ecosystem_Now.aspx\"> מערכת אקולוגית - הווה </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Ecosystem_Future\" href = \"Ecosystem_Future.aspx\"> מערכת אקולוגית - עתיד </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Stories\" href = \"Stories.aspx\"> סיפורים </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Pics_Main\" href = \"Pics_Main.aspx\"> תמונות </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Gallery\" href = \"Gallery.aspx\"> גלריית תמונות </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Survey\" href = \"Survey.aspx\"> סקר </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Source\" href = \"Source.aspx\"> מקורות מידע </a>" + 
                       $"<a style = \"font-size: 18px;\" class = \"ManagerPage\" href = \"ManagerPage.aspx\"> דף ניהול </a>\r\n";
            }
            else
            {
                loginMsg += "<a href = 'UpdateUser.aspx' class = 'button'>עדכון פרטים</a>";
                loginMsg += "<a href = 'logout.aspx' class = 'button'>התנתק</a>";

                nav += $"<a style = \"font-size: 18px;\" class = \"index\" href = \"index.aspx\"> דף הבית </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"kayamot\" href = \"kayamot.aspx\"> קיימות </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"kayamot_earth\" href = \"kayamot_earth.aspx\"> קיימות בכדור הארץ </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Definition_Ecosystem\" href = \"Definition_Ecosystem.aspx\"> מערכת אקולוגית </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Ecosystem_Past\" href = \"Ecosystem_Past.aspx\"> מערכת אקולוגית - עבר </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Ecosystem_Now\" href = \"Ecosystem_Now.aspx\"> מערכת אקולוגית - הווה </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Ecosystem_Future\" href = \"Ecosystem_Future.aspx\"> מערכת אקולוגית - עתיד </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Stories\" href = \"Stories.aspx\"> סיפורים </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Pics_Main\" href = \"Pics_Main.aspx\"> תמונות </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Gallery\" href = \"Gallery.aspx\"> גלריית תמונות </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Survey\" href = \"Survey.aspx\"> סקר </a>\r\n" +
                       $"<a style = \"font-size: 18px;\" class = \"Source\" href = \"Source.aspx\"> מקורות מידע </a>";
            }

            loginMsg += "</div>";
        }
    }
}