using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SagivProject
{
    public partial class MakeAdmin : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<p style = 'text-align: center;'>";
                msg += "אינך מנהל, ";
                msg += "אין לך הרשאה להיכנס לטבלת מחיקת המשתמשים";
                msg += "<br><a class = 'kishor' href = 'index.aspx'>חזרה לדף הבית</a>";
                msg += "</p>";
            }
            else
            {
                string fileName = "usersDB.mdf";
                string tableName = "managerTbl";
                string uName = Request.QueryString["uName"].ToString();
                string password = Request.QueryString["password"].ToString();
                string sqlAdd = "INSERT INTO " + tableName + " VALUES ('" + uName + "' , '" + password + "')";
                Helper.DoQuery(fileName, sqlAdd);

                Response.Redirect("ShowTableDataManager.aspx");
            }
        }
    }
}