using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SagivProject
{
    public partial class ManagerPage : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no") 
            {
                msg += "<p style = 'text-align: center;'>";
                msg += "אינך מנהל, ";
                msg += "אין לך הרשאה להיכנס לדף הניהול";
                msg += "<br><a class = 'kishor' href = 'index.aspx'>חזרה לדף הבית</a>";
                msg += "</p>";
            }
            else
            {
                msg += "<div style = 'text-align: center'>";
                msg += "<a class = 'kishor' href = 'ShowTableData.aspx'>הצגת טבלת משתמשים</a>   ";
                msg += "<a class = 'kishor' href = 'DeleteUser.aspx'>מחיקת משתמשים</a>   ";
                msg += "<a class = 'kishor' href = 'ShowTableDataManager.aspx'>הצגת טבלת מנהלים</a>   ";
                msg += "<a class = 'kishor' href = 'AddManager.aspx'>הוספת מנהלים</a>   ";
                msg += "<a class = 'kishor' href = 'DeleteManager.aspx'>מחיקת מנהלים</a>   ";
                msg += "<a class = 'kishor' href = 'SimpleQuery.aspx'>שאילתה פשוטה</a>   ";
                msg += "<a class = 'kishor' href = 'ComplexQuery.aspx'>שאילתה מורכבת</a><br>";
                msg += "<a class = 'kishor' href = 'Select_2008_And_Sport.aspx'>כל מי שנולד בשנת 2008 ותחביבו ספורט</a><br>";
                msg += "<a class = 'kishor' href = 'Select_Male_Or_Prefix_050.aspx'>כל הבנים או כל מי שקידומת הטלפון שלו היא 050</a><br>";
                msg += "<a class = 'kishor' href = 'Select_FirstNameIncludeD.aspx'>כל מי ששמו הפרטי כולל את האות ד</a>";
                msg += "</div>";
            }
        }
    }
}