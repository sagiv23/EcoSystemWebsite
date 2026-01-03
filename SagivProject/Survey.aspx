<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="SagivProject.Survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        .tr {
            direction: rtl;
        }

        .td {
            color: rgb(51, 153, 153);
            margin-top: 10px;
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
            text-align: center;
        }

        input {
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
            margin-top: 15px;
            width: 100px;
            height: 70px;
            border-radius: 100px;
            cursor: pointer;
        }

        #submit:hover{
            background-color: rgb(116, 163, 157);
            color: white;
            transition: 1s;
        }

        .Survey{
            color: rgb(166, 233, 224);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>סקר</h2>
    <%=st %> 
    <table style = "margin: 0px auto;">
        <tr class = "tr">
            <td class = "td">
                <form method = "post" runat="server">
                    <table style = "border: 2px solid rgb(51, 153, 153); margin: 0px auto; direction: ltr;">
                       <tr class = "tr">
                           <th style = "text-align:center; text-decoration: underline;" colspan="2">מה דעתך על האתר?</th>
                       </tr>
                        
                        <tr class = "tr">
                            <td class = "td" style = "border: 2px solid rgb(51, 153, 153);">מצוין</td>
                            <td class = "td" style = "border: 2px solid rgb(51, 153, 153);"><input type ="radio" name="surv" value="1"/></td>

                        </tr>
                        
                        <tr class = "tr">
                            <td class = "td" style = "border: 2px solid rgb(51, 153, 153);">נחמד</td>
                            <td class = "td" style = "border: 2px solid rgb(51, 153, 153);"><input type ="radio" name="surv" value="2"/></td>
                        </tr>
                        
                        <tr class = "tr">
                            <td class = "td" style = "border: 2px solid rgb(51, 153, 153);">טעון שיפור</td>
                            <td class = "td" style = "border: 2px solid rgb(51, 153, 153);"><input type ="radio" name="surv" value="3"/></td>
                        </tr>
                        
                        <tr class = "tr">
                            <td class = "td" style = "border: 2px solid rgb(51, 153, 153);">צריך עבודה</td>
                            <td class = "td" style = "border: 2px solid rgb(51, 153, 153);"><input type ="radio" name="surv" value="4"/></td>
                        </tr>

                        <tr class = "tr" style = "border: 2px solid rgb(51, 153, 153);">
                            <td class="td" colspan="2">
                                <%=input%>
                                <%= msg %> 
                            </td>
                        </tr>
                    </table>
                </form>
            </td>
     
            <td class = "td"><%=sur %></td>
        </tr>
    </table>
</asp:Content>