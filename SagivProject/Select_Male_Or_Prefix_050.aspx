<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Select_Male_Or_Prefix_050.aspx.cs" Inherits="SagivProject.Select_Male_Or_Prefix_050" %>
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
    <h2>כל הבנים או כל מי שקידומת הטלפון שלו היא 050</h2>

    <p style = "direction: ltr; font-size: 25px;"><%= sqlSelect %></p>

    <table style = "margin: 0px auto; border: none;"><%= st %></table>
    <p style = "text-align: center;"><%= msg %></p>
</asp:Content>
