<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="SagivProject.UpdateUser" %>
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

        #mUName, #mFName, #mLName, #mEMail, #mMin, #mHobbies, #mPhonePrefix, #mPhoneNumber, #mPassword, #mConfirmPassword, #mYear, #mCity{
            font-family: 'Rajdhani', sans-serif;
            font-size: 18px;
            display: none;
        }

        #Prefix, #City{
            text-align: center;
            background-color: rgb(36, 123, 160);
            color: white;
            font-family: 'Rajdhani', sans-serif;
            font-size: 18px;
            height: 30px;
            width: 100px;
            border-radius: 10px;
            cursor: pointer;
        }

        #Prefix:hover, #City:hover{
            background-color: rgb(116, 163, 157);
            color: white;
            transition: 1s;
        }

        #City{
            width: 150px;
            height: 40px;
        }
    </style>
    
    <script>
        function checkForm() {
            //--- שם משפחה + שם פרטי ---
            //פונקציה שבודקת האם במחרוזת יש רק אותיות באנגלית
            function containsOnlyOneLanguage(My_fName_lName) {
                var englishAlphabet_Regex = /^[a-zA-Z]+$/;
                var hebrewAlphabet_Regex = /^[\u0590-\u05FF\s]+$/;

                if (englishAlphabet_Regex.test(My_fName_lName)) {
                    return "English";
                }
                if (hebrewAlphabet_Regex.test(My_fName_lName)) {
                    return "Hebrew";
                }
                return "Mixed";
            }

            //בדיקות
            //שם פרטי
            var fName = document.getElementById("fName").value;
            if (fName.length < 2) {
                document.getElementById("mFName").value = "שם פרטי צריך להכיל לפחות 2 תווים";
                document.getElementById("mFName").style.display = "inline";
                mFName.size = 24;
                return false;
            }
            else if (containsOnlyOneLanguage(fName) == "Mixed") {
                document.getElementById("mFName").value = "שם פרטי צריך להכיל רק אותיות בעברית או באנגלית בלבד (ללא ערבוב)";
                document.getElementById("mFName").style.display = "inline";
                mFName.size = 51;
                return false;
            }
            else
                document.getElementById("mFName").style.display = "none";

            //בדיקות
            //שם משפחה
            var lName = document.getElementById("lName").value;
            if (lName.length < 2) {
                document.getElementById("mLName").value = "שם משפחה צריך להכיל לפחות 2 תווים";
                document.getElementById("mLName").style.display = "inline";
                mLName.size = 26;
                return false;
            }
            else if (containsOnlyOneLanguage(lName) == "Mixed") {
                document.getElementById("mLName").value = "שם משפחה צריך להכיל רק אותיות בעברית או באנגלית בלבד (ללא ערבוב)";
                document.getElementById("mLName").style.display = "inline";
                mLName.size = 53;
                return false;
            }
            else
                document.getElementById("mLName").style.display = "none";

            //--- אימייל ---
            //- ,_ ,פונקציה שבודקת האם במחרוזת יש רק אותיות באנגלית, מספרים
            function containsOnlyEnglishCharsNumbers(My_email) {
                var tavnit = /^[a-zA-Z0-9-_@.]+$/;
                return tavnit.test(My_email);
            }

            //פונקציה שבודקת האם במחרוזת יש @ ובודקת שהסימן לא מופיע בהתחלה או בסוף
            function containsSign(My_email) {
                var signCount = (My_email.match(/@/g) || []).length;
                return signCount === 1 && My_email.indexOf('@') !== 0 && My_email.lastIndexOf('@') !== My_email.length - 1;
            }

            //פונקציה שבודקת האם במחרוזת אחרי @ יש לפחות אות אחת באנגלית
            function containsEnglishAfterSign(My_email) {
                var atIndex = My_email.indexOf('@');
                var afterSign = My_email.substring(atIndex + 1);
                var tavnit = /[a-zA-Z]/;
                return tavnit.test(afterSign);
            }

            //פונקציה שבודקת האם במחרוזת אחרי . יש בין 2-3 אותיות באנגלית
            function endsWithEnglishLetters(My_email) {
                var tavnit = /\.[a-zA-Z]{2,3}$/;
                return tavnit.test(My_email);
            }

            //בדיקות
            var email = document.getElementById("email").value;
            if (email.length < 6 || email.length > 30) {
                document.getElementById("mEMail").value = "אורך הכתובת צריך להיות בין 6-30 תווים";
                document.getElementById("mEMail").style.display = "inline";
                mEMail.size = 27;
                return false;
            }
            else if (containsOnlyEnglishCharsNumbers(email) == false) {
                document.getElementById("mEMail").value = "הכתובת צריכה להכיל רק אותיות באנגלית, מספרים, -, _";
                document.getElementById("mEMail").style.display = "inline";
                mEMail.size = 39;
                return false;
            }
            else if (containsSign(email) == false) {
                document.getElementById("mEMail").value = "הכתובת צריכה להכיל @ וסימן זה לא יכול להיות בהתחלה או בסוף";
                document.getElementById("mEMail").style.display = "inline";
                mEMail.size = 16;
                return false;
            }
            else if (containsEnglishAfterSign(email) == false) {
                document.getElementById("mEMail").value = "הכתובת צריכה להכיל אחרי @ אותיות באנגלית";
                document.getElementById("mEMail").style.display = "inline";
                mEMail.size = 34;
                return false;
            }
            else if (endsWithEnglishLetters(email) == false) {
                document.getElementById("mEMail").value = "הכתובת צריכה להסתיים עם . ואחריה בין 2-3 אותיות באנגלית";
                document.getElementById("mEMail").style.display = "inline";
                mEMail.size = 44;
                return false;
            }
            else
                document.getElementById("mEMail").style.display = "none";

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
                mPassword.size = 47;
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

            //--- חזור שנית על הסיסמה ---
            //בדיקות
            var confirmPassword = document.getElementById("confirmPassword").value;
            if (confirmPassword != password) {
                document.getElementById("mConfirmPassword").value = "הסיסמאות לא תואמות";
                document.getElementById("mConfirmPassword").style.display = "inline";
                mConfirmPassword.size = 13;
                return false;
            }
            else
                document.getElementById("mConfirmPassword").style.display = "none";

            //--- קידומת טלפון ---
            //בדיקות
            var selectedPrefix = document.getElementById("Prefix").value;
            if (selectedPrefix == "sel") {
                document.getElementById("mPhonePrefix").value = "בחר קידומת טלפון תקינה";
                document.getElementById("mPhonePrefix").style.display = "inline";
                mPhonePrefix.size = 16;
                return false;
            }
            else
                document.getElementById("mPhonePrefix").style.display = "none";

            //--- מספר טלפון ---
            //- פונקציה שבודקת האם המחרוזת מתחילה עם הספרה 0, מספר כלשהו, מספר כלשהו ואז 
            function startsWithZeroNumberNumberHyphen(My_phoneNumber) {
                var phoneNumberRegex = /^0\d{2}-.*$/;
                return phoneNumberRegex.test(My_phoneNumber);
            }

            //פונקציה שבודקת האם המחרוזת מכילה 9-10 ספרות
            function hasValidLength(My_phoneNumber) {
                return My_phoneNumber.length >= 10 && My_phoneNumber.length <= 11; //כולל מקף
            }

            //בדיקות
            var phoneNumber = document.getElementById("phoneNumber").value;
            if (startsWithZeroNumberNumberHyphen(phoneNumber) == false) {
                document.getElementById("mPhoneNumber").value = "מספר טלפון צריך להתחיל עם הספרה 0 + מספר + מספר + -";
                document.getElementById("mPhoneNumber").style.display = "inline";
                mPhoneNumber.size = 43;
                return false;
            }
            else if (hasValidLength(phoneNumber) == false) {
                document.getElementById("mPhoneNumber").value = "מספר טלפון צריך להכיל 9-10 ספרות";
                document.getElementById("mPhoneNumber").style.display = "inline";
                mPhoneNumber.size = 24;
                return false;
            }
            else
                document.getElementById("mPhoneNumber").style.display = "none";

            //--- מין ---
            //בדיקות
            var selectedGender = document.querySelector('input[name="gender"]:checked');
            if (!selectedGender) {
                document.getElementById("mMin").value = "בחר את מינך";
                document.getElementById("mMin").style.display = "inline";
                mMin.size = 6;
                return false;
            }
            else
                document.getElementById("mMin").style.display = "none";

            //--- שנת לידה ---
            //פונקציה שתבדוק האם השנה תקנית
            function isTheYearRight(My_year) {
                var currentDate = new Date();
                var year = currentDate.getFullYear();

                if (My_year >= 1912 && My_year < year)
                    return true;
                else
                    return false;
            }

            //פונקציה שתבדוק האם הגיל מתאים לאתר
            function isTheAgeRight(My_year) {
                var currentDate = new Date();
                var year = currentDate.getFullYear();
                var age = year - My_year;

                if (age <= 13) {
                    return false;
                } else {
                    return true;
                }
            }

            //בדיקות
            var yearBorn = document.getElementById("Year").value;
            var yearBornNumbers = parseInt(yearBorn);
            var yearBornRegex = /^\d{4}$/;
            if (!yearBorn.match(yearBornRegex)) {
                document.getElementById("mYear").value = "ציין שנה בעל 4 ספרות";
                document.getElementById("mYear").style.display = "inline";
                mYear.size = 13;
                return false;
            }
            else if (isTheYearRight(yearBornNumbers) == false) {
                document.getElementById("mYear").value = "השנה צריכה להיות בין השנה הנוכחית לשנה 1912";
                document.getElementById("mYear").style.display = "inline";
                mYear.size = 35;
                return false;
            }
            else if (isTheAgeRight(yearBornNumbers) == false) {
                document.getElementById("mYear").value = "גיל כניסת האתר הינו 13";
                document.getElementById("mYear").style.display = "inline";
                mYear.size = 15;
                return false;
            }
            else
                document.getElementById("mYear").style.display = "none";

            //--- עיר ---
            //בדיקות
            var selectedCity = document.getElementById("City").value;
            if (selectedCity == "sel") {
                document.getElementById("mCity").value = "בחר עיר";
                document.getElementById("mCity").style.display = "inline";
                mCity.size = 2;
                return false;
            }
            else
                document.getElementById("mCity").style.display = "none";
        }

        //--- פונקציית רענון מחדש ---
        function resetForm() {
            //--- מחיקת שדות מילוי ---
            document.getElementById("uName").value = "";
            document.getElementById("fName").value = "";
            document.getElementById("lName").value = "";
            document.getElementById("email").value = "";
            document.getElementById("password").value = "";
            document.getElementById("confirmPassword").value = "";
            document.getElementById("phoneNumber").value = "";
            document.getElementById("Year").value = "";

            //--- מחיקת קידומת טלפון ועיר ---
            document.getElementById("Prefix").selectedIndex = 0;
            document.getElementById("City").selectedIndex = 0;

            //--- מחיקת מין ---
            var genderRadios = document.querySelectorAll('input[name="gender"]');
            genderRadios.forEach(function (radio) {
                radio.checked = false;
            });

            //--- מחיקת תחביבים ---
            var hobbyCheckboxes = document.querySelectorAll('input[type="checkbox"]');
            hobbyCheckboxes.forEach(function (checkbox) {
                checkbox.checked = false;
            });

            //--- מחיקת כל הודעות השגיאה ---
            document.getElementById("mUName").style.display = "none";
            document.getElementById("mFName").style.display = "none";
            document.getElementById("mLName").style.display = "none";
            document.getElementById("mEMail").style.display = "none";
            document.getElementById("mPassword").style.display = "none";
            document.getElementById("mConfirmPassword").style.display = "none";
            document.getElementById("mPhonePrefix").style.display = "none";
            document.getElementById("mPhoneNumber").style.display = "none";
            document.getElementById("mMin").style.display = "none";
            document.getElementById("mYear").style.display = "none";
            document.getElementById("mCity").style.display = "none";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>עדכון פרטים</h2>
    <p style= "text-align: center; font-size: 50px; margin-top: -30px;"><% Response.Write(uName); %></p>
    <p style = "text-align: center;"><% Response.Write(msg); %></p>
    <p style = "direction: ltr;"><% Response.Write(sqlUpdate); %></p>
    <form method="post" runat="server" onsubmit="return checkForm();">
        <table id="tofas">
            <tr class="tr">
                <td class="td">שם פרטי</td>
                <td class="td"><input type="text" id="fName" name="fName" size="40" value="<%= fName %>"></td>
                <td class="td">
                    <input type="text" id="mFName" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">שם משפחה</td>
                <td class="td"><input type="text" id="lName" name="lName" size="40" value="<%= lName %>"></td>
                <td class="td">
                    <input type="text" id="mLName" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">כתובת אימייל</td>
                <td class="td"><input type="text" id="email" name="email" size="40" value="<%= email %>"></td>
                <td class="td">
                    <input type="text" id="mEMail" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">סיסמה</td>
                <td class="td"><input type="password" id="password" name="password" size="40" value="<%= password %>"></td>
                <td class="td">
                    <input type="text" id="mPassword" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">חזור שנית על הסיסמה</td>
                <td class="td"><input type="password" id="confirmPassword" name="confirmPassword" size="40" value="<%= password %>"></td>
                <td class="td">
                    <input type="text" id="mConfirmPassword" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>
            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">קידומת טלפון</td>
                <td class="td">
                    <select id="Prefix" name="prefix">
                        <option value="sel">בחר</option>
                        <% if (prefix == "050") { %>
                            <option value="050" selected>050</option>
                        <% } else { %>
                            <option value="050">050</option>
                        <% } %>
                        <% if (prefix == "051") { %>
                            <option value="051" selected>051</option>
                        <% } else { %>
                            <option value="051">051</option>
                        <% } %>
                        <% if (prefix == "052") { %>
                            <option value="052" selected>052</option>
                        <% } else { %>
                            <option value="052">052</option>
                        <% } %>
                        <% if (prefix == "053") { %>
                            <option value="053" selected>053</option>
                        <% } else { %>
                            <option value="053">053</option>
                        <% } %>
                        <% if (prefix == "054") { %>
                            <option value="054" selected>054</option>
                        <% } else { %>
                            <option value="054">054</option>
                        <% } %>
                        <% if (prefix == "055") { %>
                            <option value="055" selected>055</option>
                        <% } else { %>
                            <option value="055">055</option>
                        <% } %>
                        <% if (prefix == "056") { %>
                            <option value="056" selected>056</option>
                        <% } else { %>
                            <option value="056">056</option>
                        <% } %>
                        <% if (prefix == "057") { %>
                            <option value="057" selected>057</option>
                        <% } else { %>
                            <option value="057">057</option>
                        <% } %>
                        <% if (prefix == "058") { %>
                            <option value="058" selected>058</option>
                        <% } else { %>
                            <option value="058">058</option>
                        <% } %>
                        <% if (prefix == "059") { %>
                            <option value="059" selected>059</option>
                        <% } else { %>
                            <option value="059">059</option>
                        <% } %>
                    </select>
                </td>
                <td class="td">
                    <input type="text" id="mPhonePrefix" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">מספר טלפון</td>
                <td class="td"><input type="text" id="phoneNumber" name="phoneNumber" size="40" value="<%= phoneNumber %>"></td>
                <td class="td">
                    <input type="text" id="mPhoneNumber" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>
            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">מין</td>
                <td class="td">
                    <% if (gender == "Male") { %>
                        <input type="radio" name="gender" value="Male" checked>
                        <label for="m">זכר</label><br>
                        <input type="radio" name="gender" value="Female">
                        <label for="f">נקבה</label><br>
                        <input type="radio" name="gender" value="Unspecified" />
                        <label for="i">מעדיף לא לציין</label>
                    <% } else if (gender == "Female") { %>
                        <input type="radio" name="gender" value="Male">
                        <label for="m">זכר</label><br>
                        <input type="radio" name="gender" value="Female" checked>
                        <label for="f">נקבה</label><br>
                        <input type="radio" name="gender" value="Unspecified" />
                        <label for="i">מעדיף לא לציין</label>
                    <% } else { %>
                        <input type="radio" id="m" name="gender" value="Male">
                        <label for="m">זכר</label><br>
                        <input type="radio" name="gender" value="Female">
                        <label for="f">נקבה</label><br>
                        <input type="radio" name="gender" value="Unspecified" checked/>
                        <label for="i">מעדיף לא לציין</label>
                    <% } %>
                </td>
                <td class="td">
                    <input type="text" id="mMin" disabled="disabled" />
                </td>
            </tr>
            
            <tr><td><br></td></tr>
            <tr><td><br></td></tr>
            
            <tr class="tr">
                <td class="td">שנת לידה</td>
                <td class="td"><input type="text" id="Year" name="year" size="40" value="<%= year %>"></td>
                <td class="td">
                    <input type="text" id="mYear" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>
            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">עיר</td>
                <td class="td">
                    <select id="City" name="city">
                        <% if (city == "Ashdod") { %>
                            <option value="Ashdod" selected>אשדוד</option>
                        <% } else { %>
                            <option value="Ashdod">אשדוד</option>
                        <% } %>
                        <% if (city == "Ashkelon") { %>
                            <option value="Ashkelon" selected>אשקלון</option>
                        <% } else { %>
                            <option value="Ashkelon">אשקלון</option>
                        <% } %>
                        <% if (city == "Beit Shemesh") { %>
                            <option value="Beit Shemesh" selected>בית שמש</option>
                        <% } else { %>
                            <option value="Beit Shemesh">בית שמש</option>
                        <% } %>
                        <% if (city == "Beer Sheva") { %>
                            <option value="Beer Sheva" selected>באר שבע</option>
                        <% } else { %>
                            <option value="Beer Sheva">באר שבע</option>
                        <% } %>
                        <% if (city == "Bnei Brak") { %>
                            <option value="Bnei Brak" selected>בני ברק</option>
                        <% } else { %>
                            <option value="Bnei Brak">בני ברק</option>
                        <% } %>
                        <% if (city == "Eilat") { %>
                            <option value="Eilat" selected>אילת</option>
                        <% } else { %>
                            <option value="Eilat">אילת</option>
                        <% } %>
                        <% if (city == "Haifa") { %>
                            <option value="Haifa" selected>חיפה</option>
                        <% } else { %>
                            <option value="Haifa">חיפה</option>
                        <% } %>
                        <% if (city == "Herzliya") { %>
                            <option value="Herzliya" selected>הרצליה</option>
                        <% } else { %>
                            <option value="Herzliya">הרצליה</option>
                        <% } %>
                        <% if (city == "Holon") { %>
                            <option value="Holon" selected>חולון</option>
                        <% } else { %>
                            <option value="Holon">חולון</option>
                        <% } %>
                        <% if (city == "Jerusalem") { %>
                            <option value="Jerusalem" selected>ירושלים</option>
                        <% } else { %>
                            <option value="Jerusalem">ירושלים</option>
                        <% } %>
                        <% if (city == "Kfar Saba") { %>
                            <option value="Kfar Saba" selected>כפר סבא</option>
                        <% } else { %>
                            <option value="Kfar Saba">כפר סבא</option>
                        <% } %>
                        <% if (city == "Lod") { %>
                            <option value="Lod" selected>לוד</option>
                        <% } else { %>
                            <option value="Lod">לוד</option>
                        <% } %>
                        <% if (city == "Netanya") { %>
                            <option value="Netanya" selected>נתניה</option>
                        <% } else { %>
                            <option value="Netanya">נתניה</option>
                        <% } %>
                        <% if (city == "Netivot") { %>
                            <option value="Netivot" selected>נתיבות</option>
                        <% } else { %>
                            <option value="Netivot">נתיבות</option>
                        <% } %>
                        <% if (city == "Petah Tikva") { %>
                            <option value="Petah Tikva" selected>פתח תקווה</option>
                        <% } else { %>
                            <option value="Petah Tikva">פתח תקווה</option>
                        <% } %>
                        <% if (city == "Ramat Gan") { %>
                            <option value="Ramat Gan" selected>רמת גן</option>
                        <% } else { %>
                            <option value="Ramat Gan">רמת גן</option>
                        <% } %>
                        <% if (city == "Rehovot") { %>
                            <option value="Rehovot" selected>רחובות</option>
                        <% } else { %>
                            <option value="Rehovot">רחובות</option>
                        <% } %>
                        <% if (city == "Rishon Lezion") { %>
                            <option value="Rishon Lezion" selected>ראשון לציון</option>
                        <% } else { %>
                            <option value="Rishon Lezion">ראשון לציון</option>
                        <% } %>
                        <% if (city == "Tel Aviv") { %>
                            <option value="Tel Aviv" selected>תל אביב</option>
                        <% } else { %>
                            <option value="Tel Aviv">תל אביב</option>
                        <% } %>
                        <% if (city == "Tiberias") { %>
                            <option value="Tiberias" selected>טבריה</option>
                        <% } else { %>
                            <option value="Tiberias">טבריה</option>
                        <% } %>
                    </select>
                </td>
                <td class="td">
                    <input type="text" id="mCity" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>
            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">תחביבים (לא חובה)</td>
                <td class="td">
                    <% if (hobbies1 == "Football") { %>
                        <input type="checkbox" name="hobbies1" value="Football" checked ="checked" />
                        <label for="football">כדורגל</label><br />
                    <% } else { %>
                        <input type="checkbox" name="hobbies1" value="Football" />
                        <label for="football">כדורגל</label><br />
                    <% } %>
                    <% if (hobbies2 == "BasketBall") { %>
                        <input type="checkbox" name="hobbies2" value="BasketBall" checked ="checked" />
                        <label for="basketball">כדורסל</label><br />
                    <% } else { %>
                        <input type="checkbox" name="hobbies2" value="BasketBall" />
                        <label for="basketball">כדורסל</label><br />
                    <% } %>
                    <% if (hobbies3 == "Computer") { %>
                        <input type="checkbox" name="hobbies3" value="Computer" checked ="checked" />
                        <label for="computer">מחשבים</label><br />
                    <% } else { %>
                        <input type="checkbox" name="hobbies3" value="Computer" />
                        <label for="computer">מחשבים</label><br />
                    <% } %>
                    <% if (hobbies4 == "Sport") { %>
                        <input type="checkbox" name="hobbies4" value="Sport" checked ="checked" />
                        <label for="sport">ספורט</label><br />
                    <% } else { %>
                        <input type="checkbox" name="hobbies4" value="Sport" />
                        <label for="sport">ספורט</label><br />
                    <% } %>
                    <% if(hobbies5 == "Movie") { %>
                        <input type="checkbox" name="hobbies5" value="Movie" checked ="checked" />
                        <label for="movie">סרטים</label><br />
                    <% } else { %>
                        <input type="checkbox" name="hobbies5" value="Movie" />
                        <label for="movie">סרטים</label><br />
                    <% } %>
                </td>
            </tr>

            <tr><td><br></td></tr>
            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td" colspan="2" style="text-align:center;">
                    <input type = "submit" name = "submit" id = "submit" value = "עדכון"/>
                    <input type = "reset" name = "reset" id = "reset" value = "אתחול" onclick = "return resetForm()"/>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>