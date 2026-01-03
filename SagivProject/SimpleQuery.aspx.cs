using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml.Linq;

namespace SagivProject
{
    public partial class SimpleQuery : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlSelect = "";
        public string input = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg = "<p style = 'text-align: center;'>";
                msg += "אינך מנהל, ";
                msg += "אין לך הרשאה להיכנס לדף שאילתות פשוטות";
                msg += "<br><a class = 'kishor' href = 'index.aspx'>חזרה לדף הבית</a>";
                msg += "</p>";
            }
            else
            {
                input = "<form method = 'post' runat = 'server' id = 'tofas'>";
                input += "<select name = 'field' id = 'field' onclick = 'detectField();'>";
                input += "<option value = 'fName' > שם פרטי </option>";
                input += "<option value = 'lName' > שם משפחה </option>";
                input += "<option value = 'email' > אימייל </option> ";
                input += "<option value = 'prefix' > קידומת טלפון </option>";
                input += "<option value = 'gender' > מין </option>";
                input += "<option value = 'year' > שנת לידה </option>";
                input += "<option value = 'city' > עיר </option>";
                input += "<option value = 'hobbie' > תחביבים </option>";
                input += "</select><br><br>";
                input += "<div id = 'query'></div><br><br>";
                input += "<input type = 'submit' name = 'submit' id = 'submit' value = 'חיפוש'/>";
                input += "</form>";

                if (Request.Form["submit"] != null)
                {
                    string field = Request.Form["field"];
                    string value = Request.Form["value"];

                    string fileName = "usersDB.mdf";
                    string tableName = "usersTbl";

                    if (field == "fName")
                        sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " like N'" + value + "%');";
                    else if (field == "lName")
                        sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " like N'" + value + "%');";
                    else if (field == "email")
                        sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " like '%" + value + "%');";
                    else if (field == "prefix")
                        sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = '" + value + "');";
                    else if (field == "gender")
                        sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = '" + value + "');";
                    else if (field == "year")
                        sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = " + value + ");";
                    else if (field == "city")
                        sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = '" + value + "');";
                    else
                    {
                        if (value == "Football")
                        {
                            field = "hobbies1";
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = 'Football');";
                        }
                        else if (value == "BasketBall")
                        {
                            field = "hobbies2";
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = 'BasketBall');";
                        }
                        else if (value == "Computer")
                        {
                            field = "hobbies3";
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = 'Computer');";
                        }
                        else if (value == "Sport")
                        {
                            field = "hobbies4";
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = 'Sport');";
                        }
                        else if (value == "Movie")
                        {
                            field = "hobbies5";
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = 'Movie');";
                        }
                    }

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
                            st += "</tr>";
                        }

                        msg = "נרשמו " + length + " אנשים בעלי תכונה זו";
                    }
                }
            }
        }
    }
}
