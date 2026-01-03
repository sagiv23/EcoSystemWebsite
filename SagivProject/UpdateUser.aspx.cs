using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SagivProject
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlUpdate = "";
        public string sqlSelect = "";
        public int year;
        public string uName, fName, lName, email, password, prefix, phoneNumber, gender, yearString, city;
        public string hobbies1, hobbies2, hobbies3, hobbies4, hobbies5;
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";
            string tableName = "usersTbl";
            uName = Session["uName"].ToString();
            if (uName == "אורח")
                Response.Redirect("login.aspx");
            else
            {
                sqlSelect = "SELECT * FROM " + tableName + " WHERE uName = '" + uName + "'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                    Response.Redirect("login.aspx");
                else
                {
                    //קבלת פרטים ישנים
                    fName = table.Rows[0]["fName"].ToString();
                    lName = table.Rows[0]["lName"].ToString();
                    email = table.Rows[0]["email"].ToString();
                    password = table.Rows[0]["password"].ToString();
                    prefix = table.Rows[0]["prefix"].ToString();
                    phoneNumber = table.Rows[0]["phoneNumber"].ToString();
                    gender = table.Rows[0]["gender"].ToString();
                    yearString = table.Rows[0]["year"].ToString();
                    year = int.Parse(yearString);
                    city = table.Rows[0]["city"].ToString();
                    hobbies1 = table.Rows[0]["hobbies1"].ToString();
                    hobbies2 = table.Rows[0]["hobbies2"].ToString();
                    hobbies3 = table.Rows[0]["hobbies3"].ToString();
                    hobbies4 = table.Rows[0]["hobbies4"].ToString();
                    hobbies5 = table.Rows[0]["hobbies5"].ToString();
                }

                if (Request.Form["submit"] != null)
                {
                    if (this.IsPostBack)
                    {
                        //קבלת פרטים חדשים
                        fName = Request.Form["fName"];
                        lName = Request.Form["lName"];
                        email = Request.Form["email"];
                        password = Request.Form["password"];
                        prefix = Request.Form["prefix"];
                        phoneNumber = Request.Form["phoneNumber"];
                        gender = Request.Form["gender"];
                        yearString = Request.Form["year"];
                        year = int.Parse(yearString);
                        city = Request.Form["city"];
                        hobbies1 = Request.Form["hobbies1"];
                        hobbies2 = Request.Form["hobbies2"];
                        hobbies3 = Request.Form["hobbies3"];
                        hobbies4 = Request.Form["hobbies4"];
                        hobbies5 = Request.Form["hobbies5"];

                        if (hobbies1 == "")
                            hobbies1 = "NULL";

                        if (hobbies2 == "")
                            hobbies2 = "NULL";

                        if (hobbies3 == "")
                            hobbies3 = "NULL";

                        if (hobbies4 == "")
                            hobbies4 = "NULL";

                        if (hobbies5 == "")
                            hobbies5 = "NULL";
                    }

                    //עדכון פרטים
                    sqlUpdate = "UPDATE " + tableName;
                    sqlUpdate += " SET fName = N'" + fName + "', ";
                    sqlUpdate += "lName = N'" + lName + "', ";
                    sqlUpdate += "email = '" + email + "', ";
                    sqlUpdate += "password = '" + password + "', ";
                    sqlUpdate += "prefix = '" + prefix + "', ";
                    sqlUpdate += "phoneNumber = '" + phoneNumber + "', ";
                    sqlUpdate += "gender = '" + gender + "', ";
                    sqlUpdate += "year = '" + year + "', ";
                    sqlUpdate += "city = '" + city + "', ";
                    sqlUpdate += "hobbies1 = '" + hobbies1 + "', ";
                    sqlUpdate += "hobbies2 = '" + hobbies2 + "', ";
                    sqlUpdate += "hobbies3 = '" + hobbies3 + "', ";
                    sqlUpdate += "hobbies4 = '" + hobbies4 + "', ";
                    sqlUpdate += "hobbies5 = '" + hobbies5 + "' ";
                    sqlUpdate += "WHERE uName = '" + uName + "'";

                    Helper.DoQuery(fileName, sqlUpdate);
                    msg = "עדכון הפרטים נעשה בהצלחה";
                }
            }
        }
    }
}