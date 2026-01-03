<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery_pic3.aspx.cs" Inherits="SagivProject.Gallery_pic3" %>
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

        .Pics_Main{
            color: rgb(166, 233, 224);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>תמונות</h2>
    <h2 style = "font-size: 40px; margin-top: -30px; text-decoration: none;">שפיכת נפט במפרץ מקסיקו</h2>
    <div style = "text-align: center;">
        <img style = "height: 600px; text-align: center;" src = "pics/gallery/pic3.png">
        <p>
            תמונה זו מציגה את כתם הנפט העצום שנוצר כתוצאה מפיצוץ אסדת הנפט "דיפ ווטר הורייזון" במפרץ מקסיקו בשנת 2010. 
            שפיכת הנפט הזו הייתה אחת האסונות הסביבתיים הגדולים ביותר בהיסטוריה, וגרמה נזק נרחב לחיים הימיים ולסביבה החופית.<br>
        </p>
        <a class = "a" href="Pics_Main.aspx">חזרה לדף התמונות</a>
    </div>
</asp:Content>
