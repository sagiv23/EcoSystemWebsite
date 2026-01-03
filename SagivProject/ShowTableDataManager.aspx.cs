using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SagivProject
{
    public partial class ShowTableDataManager : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlSelect = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<p style = 'text-align: center;'>";
                msg += "אינך מנהל, ";
                msg += "אין לך הרשאה להיכנס לטבלת המנהלים";
                msg += "<br><a class = 'kishor' href = 'index.aspx'>חזרה לדף הבית</a>";
                msg += "</p>";
            }
            else
            {
                string fileName = "usersDB.mdf";
                string tableName = "managerTbl";

                sqlSelect = "SELECT * FROM " + tableName;
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                int length = table.Rows.Count;

                if (length == 0)
                    msg = "אין מנהלים באתר";
                else
                {
                    st += "<tr>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>שם משתמש</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>סיסמה</td>";
                    st += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["uName"] + "</td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["password"] + " </td>";
                        st += "</tr>";
                    }

                    msg = "נרשמו " + length + " מנהלים";
                }
            }
        }
    }
}