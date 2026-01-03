<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManagerPage.aspx.cs" Inherits="SagivProject.ManagerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        .ManagerPage{
            color: rgb(166, 233, 224);
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>דף ניהול</h2>
    <%= msg %>
</asp:Content>
