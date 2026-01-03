<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery_pic13.aspx.cs" Inherits="SagivProject.Gallery_pic13" %>
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
    <h2 style = "font-size: 40px; margin-top: -30px; text-decoration: none;">שרפת יערות באוסטרליה</h2>
    <div style = "text-align: center;">
        <img style = "height: 600px; width: 1200px; text-align: center;" src = "pics/gallery/pic13.png">
        <p>
            תמונה זו מציגה שרפת יערות באוסטרליה. 
            שרפות יערות גורמות לזיהום אוויר, פוגעות בחיי אדם ובעלי חיים, ופוגעות ביערות ובמערכות אקולוגיות.<br>
        </p>
        <a class = "a" href="Pics_Main.aspx">חזרה לדף התמונות</a>
    </div>
</asp:Content>