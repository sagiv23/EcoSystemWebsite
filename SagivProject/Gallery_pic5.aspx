<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery_pic5.aspx.cs" Inherits="SagivProject.Gallery_pic5" %>
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
    <h2 style = "font-size: 40px; margin-top: -30px; text-decoration: none;">בירוא יערות באמזונס</h2>
    <div style = "text-align: center;">
        <img style = "height: 600px; text-align: center;" src = "pics/gallery/pic5.png">
        <p>
            תמונה זו מציגה אזור בירוא יערות נרחב ביער הגשם האמזונס. 
            בירוא יערות גורם לאובדן בית גידול עבור צמחים ובעלי חיים, תורם לשינויי אקלים ופולט גזי חממה לאטמוספירה.<br>
        </p>
        <a class = "a" href="Pics_Main.aspx">חזרה לדף התמונות</a>
    </div>
</asp:Content>
