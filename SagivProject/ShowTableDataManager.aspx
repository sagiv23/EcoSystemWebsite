<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowTableDataManager.aspx.cs" Inherits="SagivProject.ShowTableDataManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>טבלת המנהלים באתר</h2>

    <p style = "direction: ltr; font-size: 25px;"><%= sqlSelect %></p>

    <table style = "margin: 0px auto; border: none;"><%= st %></table>
    <p style = "text-align: center;"><%= msg %></p>
</asp:Content>
