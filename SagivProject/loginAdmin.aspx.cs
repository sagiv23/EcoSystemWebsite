using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SagivProject
{
    public partial class loginAdmin : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlAdmin = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string password = Request.Form["password"];
                string fileName = "usersDB.mdf";
                string tableName = "managerTbl";

                sqlAdmin = "SELECT * FROM " + tableName + " WHERE (uName = '" + uName + "' AND password = '" + password + "')";

                if (Helper.IsExist(fileName, sqlAdmin))
                {
                    DataTable table = Helper.ExecuteDataTable(fileName, sqlAdmin);
                    Session["admin"] = "yes";
                    Session["uName"] = table.Rows[0]["uName"];

                    //עדכון מונה מבקרים
                    Application.Lock();
                    Application["counter"] = (int)Application["counter"] + 1;
                    Application.UnLock();

                    Response.Redirect("index.aspx");
                }
                else
                    msg = "מנהל לא נמצא, נסה שוב";
            }
        }
    }
}