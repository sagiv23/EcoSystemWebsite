using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SagivProject
{
    public partial class AddManager : System.Web.UI.Page
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
                msg += "אין לך הרשאה להיכנס לטבלת מחיקת המשתמשים";
                msg += "<br><a class = 'kishor' href = 'index.aspx'>חזרה לדף הבית</a>";
                msg += "</p>";
            }
            else
            {
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";
                string userToAdmin = "";
                string passwordToAdmin = "";

                sqlSelect = "SELECT * FROM " + tableName;
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                int length = table.Rows.Count;

                if (length == 0)
                    msg = "לא נרשמו לאתר";
                else
                {
                    st += "<tr>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>שם משתמש</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>שם פרטי</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>שם משפחה</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>כתובת אימייל</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>סיסמה</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>קידומת</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>מספר טלפון</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>מין</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>שנת לידה</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>עיר</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>תחביב 1</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>תחביב 2</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>תחביב 3</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>תחביב 4</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>תחביב 5</td>";
                    st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 20px;'>הוספה</td>";
                    st += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["uName"] + "</td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["fName"] + "</td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["lName"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["email"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["password"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["prefix"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["phoneNumber"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["gender"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["year"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["city"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["hobbies1"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["hobbies2"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["hobbies3"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["hobbies4"] + " </td>";
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>" + table.Rows[i]["hobbies5"] + " </td>";


                        userToAdmin = table.Rows[i]["uName"].ToString();
                        passwordToAdmin = table.Rows[i]["password"].ToString();
                        st += "<td style = 'text-align: center; width: 300px; border: 1px solid; font-family: \"Rajdhani\", sans-serif; color: rgb(51, 153, 153); font-size: 14px; direction: ltr;'>";
                        st += "<a style = 'font-size: 14px;' class = 'kishor' href = 'MakeAdmin.aspx?uName=" + userToAdmin + "&password=" + passwordToAdmin + "'>הוספה</a>";
                        st += "</td>";
                        st += "</tr>";
                    }

                    msg = "נרשמו " + length + " אנשים";
                }
            }
        }
    }
}