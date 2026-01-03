using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SagivProject
{
    public partial class DeleteRecordManager : System.Web.UI.Page
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
                string sqlDelete = "DELETE FROM " + tableName + " WHERE uName = '" + uName + "'";
                Helper.DoQuery(fileName, sqlDelete);

                Response.Redirect("DeleteManager.aspx");
            }
        }
    }
}