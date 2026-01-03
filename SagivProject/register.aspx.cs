using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SagivProject
{
    public partial class register : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";
        public string uName;
        protected void Page_Load(object sender, EventArgs e)
        {
            uName = Session["uName"].ToString();
            if (uName != "אורח")
                Response.Redirect("index.aspx");
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string email = Request.Form["email"];
                string password = Request.Form["password"];
                string prefix = Request.Form["prefix"];
                string phoneNumber = Request.Form["phoneNumber"];
                string gender = Request.Form["gender"];
                string yearString = Request.Form["year"];
                int year = int.Parse(yearString);
                string city = Request.Form["city"];
                string hobbies1 = Request.Form["hobbies1"];
                string hobbies2 = Request.Form["hobbies2"];
                string hobbies3 = Request.Form["hobbies3"];
                string hobbies4 = Request.Form["hobbies4"];
                string hobbies5 = Request.Form["hobbies5"];

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

                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                //שם משתמש תפוס
                string sqlSelect = "SELECT * FROM " + tableName + " WHERE uName = '" + uName + "'";
                if (Helper.IsExist(fileName, sqlSelect))
                    msg = "שם המשתמש תפוס, נסה שוב עם שם אחר";
                else
                {
                    string sqlInsert = "INSERT INTO " + tableName;
                    sqlInsert += " VALUES ('" + uName + "' , N'" + fName + "' , N'" + lName + "' , '";
                    sqlInsert += email + "' , '" + password + "' , '";
                    sqlInsert += prefix + "' , '" + phoneNumber + "' , '" + gender + "' , " + year + " , N'" + city + "' , '";
                    sqlInsert += hobbies1 + "' , '" + hobbies2 + "' , '" + hobbies3 + "' , '" + hobbies4 + "' , '" + hobbies5 + "')";

                    sql = sqlInsert;
                    Helper.DoQuery(fileName, sqlInsert);
                    msg = "המשתמש נוסף בהצלחה";
                    Session["uName"] = uName;

                    //עדכון מונה מבקרים
                    Application.Lock();
                    Application["counter"] = (int)Application["counter"] + 1;
                    Application.UnLock();

                    //הדפסת ערכים
                    st += "<table style = 'margin: 0px auto; border: none;'>";
                    st += "<tr style = 'border: 1px solid;'><th colspan='2' style = 'font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-weight: bold; font-size: 40px;'>הפרטים שהתקבלו</th></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>שם משתמש:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + uName + "</td></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>שם פרטי:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + fName + "</td></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>שם משפחה:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + lName + "</td></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>כתובת אימייל:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + email + "</td></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>סיסמה:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + password + "</td></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>קידומת:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + prefix + "</td></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>מספר טלפון:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + phoneNumber + "</td></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>מין:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + gender + "</td></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>שנת לידה:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + yearString + "</td></tr>";
                    st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>עיר:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + city + "</td></tr>";

                    if (hobbies1 != "")
                        st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>תחביב 1:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + hobbies1 + "</td></tr>";
                    if (hobbies2 != "")
                        st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>תחביב 2:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + hobbies2 + "</td></tr>";
                    if (hobbies3 != "")
                        st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>תחביב 3:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + hobbies3 + "</td></tr>";
                    if (hobbies4 != "")
                        st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>תחביב 4:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + hobbies4 + "</td></tr>";
                    if (hobbies5 != "")
                        st += "<tr><td style = 'width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px; text-decoration: underline;'>תחביב 5:</td><td style = 'width: 300px; border: 1px solid; direction: ltr; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 30px;'>" + hobbies5 + "</td></tr>";

                    st += "</table>";
                }
            }
        }
    }
}