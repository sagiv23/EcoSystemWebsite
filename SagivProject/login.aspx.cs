using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SagivProject
{
    public partial class login : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
        public string uName;
        protected void Page_Load(object sender, EventArgs e)
        {
            uName = Session["uName"].ToString();
            if (uName != "אורח")
                Response.Redirect("index.aspx");
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string password = Request.Form["password"];
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                sqlLogin = "SELECT * FROM " + tableName + " WHERE uName = '" + uName + "' AND password = '" + password + "'";

                if(Helper.IsExist(fileName, sqlLogin))
                {
                    DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);

                    //עדכון מונה מבקרים
                    Application.Lock();
                    Application["counter"] = (int)Application["counter"] + 1;
                    Application.UnLock();

                    Session["uName"] = table.Rows[0]["uName"];
                    Response.Redirect("index.aspx");
                }
                else
                    msg = "משתמש לא נמצא, נסה שוב";
            }
        }
    }
}