<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="SagivProject.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        .Block_Img {
            border: 2px solid rgb(51, 153, 153); 
            width: 300px; 
            height: 200px; 
        }

        .Middle_Img {
            border: 2px solid rgb(51, 153, 153);
            width: 600px; 
            height: 400px; 
        }

        .Gallery{
            color: rgb(166, 233, 224);
        }
    </style>

    <script>
        function picShow(picSrc) {
            Middle_Img.src = picSrc;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>גלריית תמונות</h2>

    <table style = "margin: 0px auto;">
        <tr>
            <td><img class = "Block_Img" src = "pics/gallery/pic1.png" onMouseover = "picShow('pics/gallery/pic1.png')" /></td>
            <td><img class = "Block_Img" src = "pics/gallery/pic2.png" onMouseover = "picShow('pics/gallery/pic2.png')" /></td>
            <td><img class = "Block_Img" src = "pics/gallery/pic3.png" onMouseover = "picShow('pics/gallery/pic3.png')" /></td>
            <td><img class = "Block_Img" src = "pics/gallery/pic4.png" onMouseover = "picShow('pics/gallery/pic4.png')" /></td>
        </tr>
        
        <tr>
            <td><img class = "Block_Img" src = "pics/gallery/pic5.png" onMouseover = "picShow('pics/gallery/pic5.png')" /></td>
            <td rowspan="2" colspan="2"><img class = "Middle_Img" id = "Middle_Img" src = "pics/gallery/pic6.png" /></td>
            <td><img class = "Block_Img" src = "pics/gallery/pic7.png" onMouseover = "picShow('pics/gallery/pic7.png')" /></td>
        </tr>

        <tr>
            <td><img class = "Block_Img" src = "pics/gallery/pic8.png" onMouseover = "picShow('pics/gallery/pic8.png')" /></td> 
            <td><img class = "Block_Img" src = "pics/gallery/pic9.png" onMouseover = "picShow('pics/gallery/pic9.png')" /></td>
        </tr>
        
        <tr>
            <td><img class = "Block_Img" src = "pics/gallery/pic10.png" onMouseover = "picShow('pics/gallery/pic10.png')" /></td>
            <td><img class = "Block_Img" src = "pics/gallery/pic11.png" onMouseover = "picShow('pics/gallery/pic11.png')" /></td> 
            <td><img class = "Block_Img" src = "pics/gallery/pic12.png" onMouseover = "picShow('pics/gallery/pic12.png')" /></td> 
            <td><img class = "Block_Img" src = "pics/gallery/pic13.png" onMouseover = "picShow('pics/gallery/pic13.png')" /></td>
        </tr>
    </table>
</asp:Content>
