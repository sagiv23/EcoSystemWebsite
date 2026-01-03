using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Reflection.Emit;
using System.Xml.Linq;

namespace SagivProject
{
    public partial class ComplexQuery : System.Web.UI.Page
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
                msg += "אין לך הרשאה להיכנס לדף שאילתות מורכבות";
                msg += "<br><a class = 'kishor' href = 'index.aspx'>חזרה לדף הבית</a>";
                msg += "</p>";
            }
            else
            {
                input = "<form method = 'post' runat = 'server'> <table id = 'tofas'> <tr class = 'tr'> <td class = 'td'>";
                input += "<select name = 'field1' id = 'field1' class = 'field' onclick = 'detectField1();'>";
                input += "<option value = 'fName' > שם פרטי </option>";
                input += "<option value = 'lName' > שם משפחה </option>";
                input += "<option value = 'email' > אימייל </option> ";
                input += "<option value = 'prefix' > קידומת טלפון </option>";
                input += "<option value = 'gender' > מין </option>";
                input += "<option value = 'year' > שנת לידה </option>";
                input += "<option value = 'city' > עיר </option>";
                input += "<option value = 'hobbie' > תחביבים </option>";
                input += "</select></td>";
                input += "<td class = 'td'> <div id = 'query1' > </div> </td> </tr>";
                input += "<tr><td></td><td></td></tr>";
                input += "<tr class = 'tr'> <td class = 'td' style = 'direction: ltr;'>";
                input += "<input type = 'radio' name = 'op' value = 'and' checked = 'checked'>";
                input += "<label for = 'And'> And </label>";
                input += "<input type = 'radio' name = 'op' value = 'or'>";
                input += "<label for = 'Or'> Or </label>";
                input += "</td> </tr>";
                input += "<tr><td></td><td></td></tr>";
                input += "<tr class = 'tr'> <td class = 'td'>";
                input += "<select name = 'field2' id = 'field2' class = 'field' onclick = 'detectField2();'> ";
                input += "<option value = 'fName' > שם פרטי </option>";
                input += "<option value = 'lName' > שם משפחה </option>";
                input += "<option value = 'email' > אימייל </option> ";
                input += "<option value = 'prefix' > קידומת טלפון </option>";
                input += "<option value = 'gender' > מין </option>";
                input += "<option value = 'year' > שנת לידה </option>";
                input += "<option value = 'city' > עיר </option>";
                input += "<option value = 'hobbie' > תחביבים </option>";
                input += "</select></td>";
                input += "<td class = 'td'> <div id = 'query2'> </div> </td> </tr>";
                input += "<tr class = 'tr'>";
                input += "<td class = 'td'> <input type = 'submit' name = 'submit' id = 'submit' value = 'חיפוש'/> </td>";
                input += "</tr> </table> </form>";

                if (Request.Form["submit"] != null)
                {
                    string field1 = Request.Form["field1"];
                    string value1 = Request.Form["value1"];
                    string field2 = Request.Form["field2"];
                    string value2 = Request.Form["value2"];
                    string op = Request.Form["op"];
                    string qry1 = "", qry2 = "";

                    string fileName = "usersDB.mdf";
                    string tableName = "usersTbl";

                    if (value1 != null)
                    {
                        if (field1 == "fName")
                            qry1 = field1 + " like N'" + value1 + "%'";
                        else if (field1 == "lName")
                            qry1 = field1 + " like N'" + value1 + "%'";
                        else if (field1 == "email")
                            qry1 = field1 + " like '%" + value1 + "%'";
                        else if (field1 == "prefix")
                            qry1 = field1 + " = '" + value1 + "'";
                        else if (field1 == "gender")
                            qry1 = field1 + " = '" + value1 + "'";
                        else if (field1 == "year")
                            qry1 = field1 + " = " + value1;
                        else if (field1 == "city")
                            qry1 = field1 + " = '" + value1 + "'";
                        else
                        {
                            if (value1 == "Football")
                            {
                                field1 = "hobbies1";
                                qry1 = field1 + " = 'Football'";
                            }
                            else if (value1 == "BasketBall")
                            {
                                field1 = "hobbies2";
                                qry1 = field1 + " = 'BasketBall'";
                            }
                            else if (value1 == "Computer")
                            {
                                field1 = "hobbies3";
                                qry1 = field1 + " = 'Computer'";
                            }
                            else if (value1 == "Sport")
                            {
                                field1 = "hobbies4";
                                qry1 = field1 + " = 'Sport'";
                            }
                            else if (value1 == "Movie")
                            {
                                field1 = "hobbies5";
                                qry1 = field1 + " = 'Movie'";
                            }
                        }
                    }

                    if (value2 != null)
                    {
                        if (field2 == "fName")
                            qry2 = field2 + " like N'" + value2 + "%'";
                        else if (field2 == "lName")
                            qry2 = field2 + " like N'" + value2 + "%'";
                        else if (field2 == "email")
                            qry2 = field2 + " like '%" + value2 + "'%";
                        else if (field2 == "prefix")
                            qry2 = field2 + " = '" + value2 + "'";
                        else if (field2 == "gender")
                            qry2 = field2 + " = '" + value2 + "'";
                        else if (field2 == "year")
                            qry2 = field2 + " = " + value2;
                        else if (field2 == "city")
                            qry2 = field2 + " = '" + value2 + "'";
                        else
                        {
                            if (value2 == "Football")
                            {
                                field2 = "hobbies1";
                                qry2 = field2 + " = 'Football'";
                            }
                            else if (value2 == "BasketBall")
                            {
                                field2 = "hobbies2";
                                qry2 = field2 + " = 'BasketBall'";
                            }
                            else if (value2 == "Computer")
                            {
                                field2 = "hobbies3";
                                qry2 = field2 + " = 'Computer'";
                            }
                            else if (value2 == "Sport")
                            {
                                field2 = "hobbies4";
                                qry2 = field2 + " = 'Sport'";
                            }
                            else if (value2 == "Movie")
                            {
                                field2 = "hobbies5";
                                qry2 = field2 + " = 'Movie'";
                            }
                        }
                    }

                    if (qry1 != "" && qry2 != "")
                    {
                        if (op == "and")
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + qry1 + " AND " + qry2 + ");";
                        else
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + qry1 + " OR " + qry2 + ");";
                    }
                    else
                    {
                        if (qry1 != "" && qry2 == "")
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + qry1 + ");";
                        else if (qry1 == "" && qry2 != "")
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + qry2 + ");";
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