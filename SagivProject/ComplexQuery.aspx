<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ComplexQuery.aspx.cs" Inherits="SagivProject.ComplexQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        #tofas {
            margin: 0px auto;
        }

        input {
            color: rgb(51, 153, 153);
            margin-top: 10px;
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
        }

        .tr {
            direction: rtl;
        }

        .td {
            color: rgb(51, 153, 153);
            margin-top: 10px;
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
        }

        #submit{
            background-color: rgb(36, 123, 160);
            color: white;
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
            margin-top: 30px;
            width: 130px;
            height: 100px;
            border-radius: 100px;
            cursor: pointer;
        }

        #submit:hover {
            background-color: rgb(116, 163, 157);
            color: white;
            transition: 1s;
        }

        .field, #Prefix, #City, #Hobbie {
            text-align: center;
            background-color: rgb(36, 123, 160);
            color: white;
            font-family: 'Rajdhani', sans-serif;
            font-size: 18px;
            width: 150px;
            height: 40px;
            border-radius: 10px;
            cursor: pointer;
        }

        .field, #Prefix:hover, #City:hover, #Hobbie:hover {
            background-color: rgb(116, 163, 157);
            color: white;
            transition: 1s;
        }

        .kishor {
            color: rgb(51, 153, 153);
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
            text-decoration: none;
        }

        .kishor:hover {
            text-decoration: underline;
            color: rgb(116, 163, 157);
            transition: 1s;
        }
    </style>

    <script>
        function detectField1() {
            if (document.getElementById("field1").value == "fName") {
                document.getElementById("query1").innerHTML = "<input type='text' id='fName' name='value1' size='40'>";
            }

            else if (document.getElementById("field1").value == "lName") {
                document.getElementById("query1").innerHTML = "<input type='text' id='lName' name='value1' size='40'>";
            }

            else if (document.getElementById("field1").value == "email") {
                document.getElementById("query1").innerHTML = "<input type='text' id='email' name='value1' size='40'>";
            }

            else if (document.getElementById("field1").value == "prefix") {
                var prefixStr = "<select name = 'value1' id = 'Prefix'>";

                prefixStr += "<option value = '050'>050</option>";
                prefixStr += "<option value = '051'>051</option>";
                prefixStr += "<option value = '052'>052</option>";
                prefixStr += "<option value = '053'>053</option>";
                prefixStr += "<option value = '054'>054</option>";
                prefixStr += "<option value = '055'>055</option>";
                prefixStr += "<option value = '056'>056</option>";
                prefixStr += "<option value = '057'>057</option>";
                prefixStr += "<option value = '058'>058</option>";
                prefixStr += "<option value = '059'>059</option>";

                prefixStr += "</select>";

                document.getElementById("query1").innerHTML = prefixStr;
            }

            else if (document.getElementById("field1").value == "gender") {
                document.getElementById("query1").innerHTML =
                    "<td class = 'td'>" +
                    "<input type='radio' id='m' name='value1' value='Male'> <label for='m'>זכר</label><br>" +
                    "<input type='radio' id='f' name='value1' value='Female'> <label for='f'>נקבה</label><br>" +
                    "<input type='radio' id='i' name='value1' value='Unspecified' /> <label for='i'>מעדיף לא לציין</label>" +
                    "</td>";
            }

            else if (document.getElementById("field1").value == "year") {
                document.getElementById("query1").innerHTML = "<input type='text' id='Year' name='value1' size='40'></td>";
            }

            else if (document.getElementById("field1").value == "city") {
                var cityStr = "<select name = 'value1' id = 'City'>";

                cityStr += "<option value = 'Ashdod'>אשדוד</option>";
                cityStr += "<option value = 'Ashkelon'>אשקלון</option>";
                cityStr += "<option value = 'Beit Shemesh'>בית שמש</option>";
                cityStr += "<option value = 'Beer Sheva'>באר שבע</option>";
                cityStr += "<option value = 'Bnei Brak'>בני ברק</option>";
                cityStr += "<option value = 'Eilat'>אילת</option>";
                cityStr += "<option value = 'Haifa'>חיפה</option>";
                cityStr += "<option value = 'Herzliya'>הרצליה</option>";
                cityStr += "<option value = 'Holon'>חולון</option>";
                cityStr += "<option value = 'Jerusalem'>ירושלים</option>";
                cityStr += "<option value = 'Kfar Saba'>כפר סבא</option>";
                cityStr += "<option value = 'Lod'>לוד</option>";
                cityStr += "<option value = 'Netanya'>נתניה</option>";
                cityStr += "<option value = 'Netivot'>נתיבות</option>";
                cityStr += "<option value = 'Petah Tikva'>פתח תקווה</option>";
                cityStr += "<option value = 'Ramat Gan'>רמת גן</option>";
                cityStr += "<option value = 'Rehovot'>רחובות</option>";
                cityStr += "<option value = 'Rishon Lezion'>ראשון לציון</option>";
                cityStr += "<option value = 'Tel Aviv'>תל אביב</option>";
                cityStr += "<option value = 'Tiberias'>טבריה</option>";

                cityStr += "</select>";

                document.getElementById("query1").innerHTML = cityStr;
            }

            else if (document.getElementById("field1").value == "hobbie") {
                var hobbieStr = "<select name = 'value1' id = 'Hobbie'>";

                hobbieStr += "<option value = 'Football' >כדורגל</option>";
                hobbieStr += "<option value = 'BasketBall' >כדורסל</option>";
                hobbieStr += "<option value = 'Computer' >מחשבים</option>";
                hobbieStr += "<option value = 'Sport' >ספורט</option>";
                hobbieStr += "<option value = 'Movie' >סרטים</option>";

                hobbieStr += "</select>";

                document.getElementById("query1").innerHTML = hobbieStr;
            }
        }

        function detectField2() {
            if (document.getElementById("field2").value == "fName") {
                document.getElementById("query2").innerHTML = "<input type='text' id='fName' name='value2' size='40'>";
            }

            else if (document.getElementById("field2").value == "lName") {
                document.getElementById("query2").innerHTML = "<input type='text' id='lName' name='value2' size='40'>";
            }

            else if (document.getElementById("field2").value == "email") {
                document.getElementById("query2").innerHTML = "<input type='text' id='email' name='value2' size='40'>";
            }

            else if (document.getElementById("field2").value == "prefix") {
                var prefixStr = "<select name = 'value2' id = 'Prefix'>";

                prefixStr += "<option value = '050'>050</option>";
                prefixStr += "<option value = '051'>051</option>";
                prefixStr += "<option value = '052'>052</option>";
                prefixStr += "<option value = '053'>053</option>";
                prefixStr += "<option value = '054'>054</option>";
                prefixStr += "<option value = '055'>055</option>";
                prefixStr += "<option value = '056'>056</option>";
                prefixStr += "<option value = '057'>057</option>";
                prefixStr += "<option value = '058'>058</option>";
                prefixStr += "<option value = '059'>059</option>";

                prefixStr += "</select>";

                document.getElementById("query2").innerHTML = prefixStr;
            }

            else if (document.getElementById("field2").value == "gender") {
                document.getElementById("query2").innerHTML =
                    "<td class = 'td'>" +
                    "<input type='radio' id='m' name='value2' value='Male'> <label for='m'>זכר</label><br>" +
                    "<input type='radio' id='f' name='value2' value='Female'> <label for='f'>נקבה</label><br>" +
                    "<input type='radio' id='i' name='value2' value='Unspecified' /> <label for='i'>מעדיף לא לציין</label>" +
                    "</td>";
            }

            else if (document.getElementById("field2").value == "year") {
                document.getElementById("query2").innerHTML = "<input type='text' id='Year' name='value2' size='40'></td>";
            }

            else if (document.getElementById("field2").value == "city") {
                var cityStr = "<select name = 'value2' id = 'City'>";

                cityStr += "<option value = 'Ashdod'>אשדוד</option>";
                cityStr += "<option value = 'Ashkelon'>אשקלון</option>";
                cityStr += "<option value = 'Beit Shemesh'>בית שמש</option>";
                cityStr += "<option value = 'Beer Sheva'>באר שבע</option>";
                cityStr += "<option value = 'Bnei Brak'>בני ברק</option>";
                cityStr += "<option value = 'Eilat'>אילת</option>";
                cityStr += "<option value = 'Haifa'>חיפה</option>";
                cityStr += "<option value = 'Herzliya'>הרצליה</option>";
                cityStr += "<option value = 'Holon'>חולון</option>";
                cityStr += "<option value = 'Jerusalem'>ירושלים</option>";
                cityStr += "<option value = 'Kfar Saba'>כפר סבא</option>";
                cityStr += "<option value = 'Lod'>לוד</option>";
                cityStr += "<option value = 'Netanya'>נתניה</option>";
                cityStr += "<option value = 'Netivot'>נתיבות</option>";
                cityStr += "<option value = 'Petah Tikva'>פתח תקווה</option>";
                cityStr += "<option value = 'Ramat Gan'>רמת גן</option>";
                cityStr += "<option value = 'Rehovot'>רחובות</option>";
                cityStr += "<option value = 'Rishon Lezion'>ראשון לציון</option>";
                cityStr += "<option value = 'Tel Aviv'>תל אביב</option>";
                cityStr += "<option value = 'Tiberias'>טבריה</option>";

                cityStr += "</select>";

                document.getElementById("query2").innerHTML = cityStr;
            }

            else if (document.getElementById("field2").value == "hobbie") {
                var hobbieStr = "<select name = 'value2' id = 'Hobbie'>";

                hobbieStr += "<option value = 'Football' >כדורגל</option>";
                hobbieStr += "<option value = 'BasketBall' >כדורסל</option>";
                hobbieStr += "<option value = 'Computer' >מחשבים</option>";
                hobbieStr += "<option value = 'Sport' >ספורט</option>";
                hobbieStr += "<option value = 'Movie' >סרטים</option>";

                hobbieStr += "</select>";

                document.getElementById("query2").innerHTML = hobbieStr;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>שאילתות מורכבות</h2>
    <p style = "text-align: center;"><%= input %></p>

    <p style = "direction: ltr; font-size: 25px;"><%= sqlSelect %></p>

    <table style = "margin: 0px auto; border: none;"><%= st %></table>
    <p style = "text-align: center;"><%= msg %></p>
</asp:Content>