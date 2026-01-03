<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SagivProject.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        #tofas {
            margin: 0 auto;
        }

        .tr {
            direction: rtl;
        }

        .td {
            color: rgb(51, 153, 153);
            margin-top: 10px;
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
        }

        input {
            color: rgb(51, 153, 153);
            margin-top: 10px;
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
        }

        #submit, #reset {
            background-color: rgb(36, 123, 160);
            color: white;
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
            margin-top: 30px;
            width: 130px;
            height: 100px;
            border-radius: 100px;
            cursor: pointer;
        }

        #submit:hover, #reset:hover {
            background-color: rgb(116, 163, 157);
            color: white;
            transition: 1s;
        }

        #mUName, #mPassword{
            font-family: 'Rajdhani', sans-serif;
            font-size: 18px;
            display: none;
        }
    </style>

    <script>
        function checkForm() {
            //--- שם משתמש ---
            //פונקציה שבודקת האם האות הראשונה במחרוזת היא אות באנגלית
            function isFirstCharEnglish(My_uName) {
                var englishAlphabet_Regex = /^[a-zA-Z]/;
                return englishAlphabet_Regex.test(My_uName);
            }

            //פונקציה שבודקת האם במחרוזת יש רק תווים באנגלית, מספרים ותווים מיוחדים
            function hasOnlyEnglishLettersAndSpecialChars(My_uName) {
                var englishAlphabet_numbers_specialChars_Regex = /^[a-zA-Z0-9!@#$%^&*()\-_=+[\]{ };:'",.<>/?]+$/;
                return englishAlphabet_numbers_specialChars_Regex.test(My_uName);
            }

            //בדיקות
            var uName = document.getElementById("uName").value;
            if (uName.length < 3) {
                document.getElementById("mUName").value = "שם משתמש צריך להכיל לפחות 3 תווים";
                document.getElementById("mUName").style.display = "inline";
                mUName.size = 26;
                return false;
            }
            else if (isFirstCharEnglish(uName) == false) {
                document.getElementById("mUName").value = "שם משתמש צריך להתחיל באות באנגלית";
                document.getElementById("mUName").style.display = "inline";
                mUName.size = 28;
                return false;
            }
            else if (hasOnlyEnglishLettersAndSpecialChars(uName) == false) {
                document.getElementById("mUName").value = "שם משתמש צריך להכיל רק אותיות באנגלית, מספרים ותווים מיוחדים (לא חובה)";
                document.getElementById("mUName").style.display = "inline";
                mUName.size = 57;
                return false;
            }
            else
                document.getElementById("mUName").style.display = "none";

            //--- סיסמה ---
            //פונקציה שבודקת האם במחרוזת יש רק תווים באנגלית, מספרים ותווים מיוחדים
            function hasOnlyEnglishLettersAndSpecialChars(My_uName) {
                var englishAlphabet_numbers_specialChars_Regex = /^[a-zA-Z0-9!@#$%^&*()\-_=+[\]{};:'",.<>/?]+$/;
                return englishAlphabet_numbers_specialChars_Regex.test(My_uName);
            }

            //פונקציה שבודקת האם המחרוזת מכילה לפחות אות גדולה אחת באנגלית
            function containsUppercase(My_password) {
                var uppercaseRegex = /[A-Z]/;
                return uppercaseRegex.test(My_password);
            }

            //פונקציה שבודקת האם המחרוזת מכילה לפחות תו מיוחד אחד
            function containsSpecialCharacter(My_password) {
                var specialCharRegex = /[!@#$%^&*()_+{}\[\]:;<>,.?~\-]/;
                return specialCharRegex.test(My_password);
            }

            //פונקציה שבודקת האם המחרוזת מכילה לפחות ספרה אחת
            function containsDigit(My_password) {
                var digitRegex = /[0-9]/;
                return digitRegex.test(My_password);
            }

            //פונקציה שבודקת האם במחרוזת אין רצף של שלושה תווים דומים
            function hasNoRepeatingCharacters(My_password) {
                var identicalCharsRegex = /(.)\1\1/;
                return !identicalCharsRegex.test(My_password);
            }

            //בדיקות
            var password = document.getElementById("password").value;
            if (password.length < 8) {
                document.getElementById("mPassword").value = "הסיסמה צריכה להכיל לפחות 8 תווים";
                document.getElementById("mPassword").style.display = "inline";
                mPassword.size = 24;
                return false;
            }
            else if (hasOnlyEnglishLettersAndSpecialChars(password) == false) {
                document.getElementById("mPassword").value = "הסיסמה צריכה להכיל רק אותיות באנגלית, מספרים ותווים מיוחדים";
                document.getElementById("mPassword").style.display = "inline";
                mPassword.size = 46;
                return false;
            }
            else if (containsUppercase(password) == false) {
                document.getElementById("mPassword").value = "הסיסמה צריכה להכיל לפחות אות אחת גדולה באנגלית";
                document.getElementById("mPassword").style.display = "inline";
                mPassword.size = 38;
                return false;
            }
            else if (containsSpecialCharacter(password) == false) {
                document.getElementById("mPassword").value = "הסיסמה צריכה להכיל לפחות תו מיוחד אחד";
                document.getElementById("mPassword").style.display = "inline";
                mPassword.size = 25;
                return false;
            }
            else if (containsDigit(password) == false) {
                document.getElementById("mPassword").value = "הסיסמה צריכה להכיל לפחות ספרה אחת";
                document.getElementById("mPassword").style.display = "inline";
                mPassword.size = 27;
                return false;
            }
            else if (hasNoRepeatingCharacters(password) == false) {
                document.getElementById("mPassword").value = "הסיסמה לא יכולה להכיל רצף של שלושה תווים דומים";
                document.getElementById("mPassword").style.display = "inline";
                mPassword.size = 37;
                return false;
            }
            else
                document.getElementById("mPassword").style.display = "none";
        }

        //--- פונקציית רענון מחדש ---
        function resetForm() {
            //--- מחיקת שדות מילוי ---
            document.getElementById("uName").value = "";
            document.getElementById("password").value = "";

            //--- מחיקת כל הודעות השגיאה ---
            document.getElementById("mUName").style.display = "none";
            document.getElementById("mPassword").style.display = "none";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>התחברות לאתר</h2>
    <p style = "text-align: center;"><% Response.Write(msg); %></p>
    
    <form method="post" runat="server" onsubmit="return checkForm();">
        <table id="tofas">
            <tr class="tr">
                <td class="td">שם משתמש</td>
                <td class="td"><input type="text" id="uName" name="uName" size="40"></td>
                <td class="td">
                    <input type="text" id="mUName" disabled="disabled" >
                </td>
            </tr>

            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">סיסמה</td>
                <td class="td"><input type="password" id="password" name="password" size="40"></td>
                <td class="td">
                    <input type="text" id="mPassword" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>
            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td" colspan="2" style="text-align:center;">
                    <input type = "submit" name = "submit" id = "submit" value = "התחברות"/>
                    <input type = "reset" name = "reset" id = "reset" value = "אתחול" onclick = "return resetForm()"/>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>