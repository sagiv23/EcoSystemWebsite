<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SagivProject.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        .index{
            color: rgb(166, 233, 224);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><span class="Title"></span><br></h1>

    <p style="text-align: center; font-size: 40px;">
        שלום לכולם, שמי שגיב יוסילבסקי מכיתה י5.<br>
        באתר שלי אדבר על הנושא מערכת אקולוגית בעבר, הווה ועתיד.<br>
        בנוסף, ארחיב על תחומים שבהם ניתן ליישם קיימות ביום יום ואתן מספר דוגמאות כיצד ניתן לקדם קיימות בעולם ובישראל.<br>
    </p>

    <br><br>

    <iframe style = "margin: auto; display: block; width: 600px; height: 400px;" src="https://www.youtube.com/embed/VV0YR6hN8VQ?si=Ulx0SsPkbvvFvEt4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
    <script>
            var Title = new Typed(".Title", {
                strings: ["שגיב יוסילבסקי"],
                typeSpeed: 120,
                backSpeed: 100,
                loop: true
            })
    </script>
</asp:Content>