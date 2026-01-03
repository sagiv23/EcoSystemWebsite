<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Pics_Main.aspx.cs" Inherits="SagivProject.Pics_Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        .a {
            color: rgb(51, 153, 153);
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
            text-decoration: none;
            cursor: pointer;
        }

        .a:hover {
            text-decoration: underline;
            color: rgb(116, 163, 157);
            transition: 1s;
        }

        li{
            display: inline-block;
            text-align: center;
        }

        #block {
            list-style-type: none;
            text-align: center;
        }

        .Pics_Main{
            color: rgb(166, 233, 224);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>תמונות</h2>

    <ul id = "block">
        <li> <a class = "a" href = "Gallery_pic1.aspx">ערימת אשפה באקרה, גאנה<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic1.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic2.aspx">זיהום אוויר בבייג'ינג, סין<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic2.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic3.aspx">שפיכת נפט במפרץ מקסיקו<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic3.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic4.aspx">דייג יתר באוקיינוס האטלנטי<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic4.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic5.aspx">בירוא יערות באמזונס<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic5.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic6.aspx">זיהום פלסטיק באוקיינוסים<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic6.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic7.aspx">הפשרת קרחונים באנטארקטיקה<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic7.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic8.aspx">חומציות האוקיינוסים<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic8.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic9.aspx">זיהום מים באפריקה<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic9.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic10.aspx">זיהום קרקע בסין<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic10.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic11.aspx">ציד בלתי חוקי באפריקה<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic11.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic12.aspx">דשן כימי זורם לנהר<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic12.png"></a>
        </li>

        <li> <a class = "a" href = "Gallery_pic13.aspx">שרפת יערות באוסטרליה<br>   
            <img style = "height: 300px; width: 300px;" src = "pics/gallery/pic13.png"></a>
        </li>
    </ul>
</asp:Content>