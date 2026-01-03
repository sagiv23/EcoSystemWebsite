<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteRecordUser.aspx.cs" Inherits="SagivProject.DeleteRecord" %>
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
    <h2>טבלת מחיקת המשתמשים</h2>
    <p style = "text-align: center;"><%= msg %></p>
</asp:Content>