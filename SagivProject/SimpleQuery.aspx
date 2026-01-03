<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SimpleQuery.aspx.cs" Inherits="SagivProject.SimpleQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        #tofas {
            text-align: center;
        }

        input {
            color: rgb(51, 153, 153);
            margin-top: 10px;
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
        }

        #gender{
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

        #field, #Prefix, #City, #Hobbie{
            text-align: center;
            background-color: rgb(36, 123, 160);
            color: white;
            font-family: 'Rajdhani', sans-serif;
            font-size: 18px;
            height: 30px;
            width: 100px;
            border-radius: 10px;
            cursor: pointer;
        }

        #field:hover, #Prefix:hover, #City:hover, #Hobbie:hover{
            background-color: rgb(116, 163, 157);
            color: white;
            transition: 1s;
        }

        #field, #City{
            width: 150px;
            height: 40px;
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
        function detectField() {
            if (document.getElementById("field").value == "fName") {
                document.getElementById("query").innerHTML = "<input type='text' id='fName' name='value' size='40'>";
            }

            else if (document.getElementById("field").value == "lName") {
                document.getElementById("query").innerHTML = "<input type='text' id='lName' name='value' size='40'>";
            }

            else if (document.getElementById("field").value == "email") {
                document.getElementById("query").innerHTML = "<input type='text' id='email' name='value' size='40'>";
            }

            else if (document.getElementById("field").value == "prefix") {
                var prefixStr = "<select name = 'value' id = 'Prefix'>";

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

                document.getElementById("query").innerHTML = prefixStr;
            }

            else if (document.getElementById("field").value == "gender") {
                document.getElementById("query").innerHTML =
                    "<p id = 'gender'>" +
                    "<input type='radio' id='m' name='value' value='Male'> <label for='m'>זכר</label><br>" +
                    "<input type='radio' id='f' name='value' value='Female'> <label for='f'>נקבה</label><br>" +
                    "<input type='radio' id='i' name='value' value='Unspecified' /> <label for='i'>מעדיף לא לציין</label>" +
                    "</p>";
            }

            else if (document.getElementById("field").value == "year") {
                document.getElementById("query").innerHTML = "<input type='text' id='Year' name='value' size='40'></td>";
            }

            else if (document.getElementById("field").value == "city") {
                var cityStr = "<select name = 'value' id = 'City'>";

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

                document.getElementById("query").innerHTML = cityStr;
            }

            else if (document.getElementById("field").value == "hobbie") {
                var hobbieStr = "<select name = 'value' id = 'Hobbie'>";

                hobbieStr += "<option value = 'Football'>כדורגל</option>";
                hobbieStr += "<option value = 'BasketBall'>כדורסל</option>";
                hobbieStr += "<option value = 'Computer'>מחשבים</option>";
                hobbieStr += "<option value = 'Sport'>ספורט</option>";
                hobbieStr += "<option value = 'Movie'>סרטים</option>";

                hobbieStr += "</select>";

                document.getElementById("query").innerHTML = hobbieStr;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>שאילתות פשוטות</h2>
    <p style = "text-align: center;"><%= input %></p>

    <p style = "direction: ltr; font-size: 25px;"><%= sqlSelect %></p>

    <table style = "margin: 0px auto; border: none;"><%= st %></table>
    <p style = "text-align: center;"><%= msg %></p>

</asp:Content>