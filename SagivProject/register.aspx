<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="SagivProject.register" %>
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
            //--- שם משתמש ---
            //פונקציה שבודקת האם האות הראשונה במחרוזת היא אות באנגלית
            function isFirstCharEnglish(My_uName) {
                var englishAlphabet_Regex = /^[a-zA-Z]/;
                return englishAlphabet_Regex.test(My_uName);
            }

            //פונקציה שבודקת האם במחרוזת יש רק תווים באנגלית, מספרים ותווים מיוחדים
            function hasOnlyEnglishLettersAndSpecialChars(My_uName) {
                var englishAlphabet_numbers_specialChars_Regex = /^[a-zA-Z0-9!@#$%^&*()\-_=+[\]{};:'",.<>/?]+$/;
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
            else if (isFirstCharEnglish(uName) == false)
            {
                document.getElementById("mUName").value = "שם משתמש צריך להתחיל באות באנגלית";
                document.getElementById("mUName").style.display = "inline";
                mUName.size = 28;
                return false;
            }
            else if (hasOnlyEnglishLettersAndSpecialChars(uName) == false)
            {
                document.getElementById("mUName").value = "שם משתמש צריך להכיל רק אותיות באנגלית, מספרים ותווים מיוחדים (לא חובה)";
                document.getElementById("mUName").style.display = "inline";
                mUName.size = 57;
                return false;
            }
            else
                document.getElementById("mUName").style.display = "none";

            //--- שם משפחה + שם פרטי ---
            //פונקציה שבודקת האם במחרוזת יש רק אותיות באנגלית
            function containsOnlyOneLanguage(My_fName_lName) {
                var englishAlphabet_Regex = /^[a-zA-Z]+$/;
                var hebrewAlphabet_Regex = /^[\u0590-\u05FF\s]+$/;

                if (englishAlphabet_Regex.test(My_fName_lName))
                    return "English";
                if (hebrewAlphabet_Regex.test(My_fName_lName))
                    return "Hebrew";
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
                mEMail.size = 45    ;
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

                if (age <= 13)
                    return false;
                else
                    return true;
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
    <h2>הרשמה לאתר</h2>
    <p style = "text-align: center;"><% Response.Write(msg); %></p>
    <p style = "direction: ltr; font-size: 25px;"><%= sql %></p>
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
                <td class="td">שם פרטי</td>
                <td class="td"><input type="text" id="fName" name="fName" size="40"></td>
                <td class="td">
                    <input type="text" id="mFName" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">שם משפחה</td>
                <td class="td"><input type="text" id="lName" name="lName" size="40"></td>
                <td class="td">
                    <input type="text" id="mLName" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">כתובת אימייל</td>
                <td class="td"><input type="text" id="email" name="email" size="40"></td>
                <td class="td">
                    <input type="text" id="mEMail" disabled="disabled" />
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

            <tr class="tr">
                <td class="td">חזור שנית על הסיסמה</td>
                <td class="td"><input type="password" id="confirmPassword" name="confirmPassword" size="40"></td>
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
                        <option value="050">050</option>
                        <option value="051">051</option>
                        <option value="052">052</option>
                        <option value="053">053</option>
                        <option value="054">054</option>
                        <option value="055">055</option>
                        <option value="056">056</option>
                        <option value="057">057</option>
                        <option value="058">058</option>
                        <option value="059">059</option>
                    </select>
                </td>
                <td class="td">
                    <input type="text" id="mPhonePrefix" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">מספר טלפון</td>
                <td class="td"><input type="text" id="phoneNumber" name="phoneNumber" size="40"></td>
                <td class="td">
                    <input type="text" id="mPhoneNumber" disabled="disabled" />
                </td>
            </tr>

            <tr><td><br></td></tr>
            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td">מין</td>
                <td class="td">
                    <input type="radio" id="m" name="gender" value="Male">
                    <label for="m">זכר</label><br>
                    <input type="radio" id="f" name="gender" value="Female">
                    <label for="f">נקבה</label><br>
                    <input type="radio" id="i" name="gender" value="Unspecified" />
                    <label for="i">מעדיף לא לציין</label>
                </td>
                <td class="td">
                    <input type="text" id="mMin" disabled="disabled" />
                </td>
            </tr>
            
            <tr><td><br></td></tr>
            <tr><td><br></td></tr>
            
            <tr class="tr">
                <td class="td">שנת לידה</td>
                <td class="td"><input type="text" id="Year" name="year" size="40"></td>
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
                        <option value="sel">בחר עיר</option>
                        <option value="Ashdod">אשדוד</option>
                        <option value="Ashkelon">אשקלון</option>
                        <option value="Beit Shemesh">בית שמש</option>
                        <option value="Beer Sheva">באר שבע</option>
                        <option value="Bnei Brak">בני ברק</option>
                        <option value="Eilat">אילת</option>
                        <option value="Haifa">חיפה</option>
                        <option value="Herzliya">הרצליה</option>
                        <option value="Holon">חולון</option>
                        <option value="Jerusalem">ירושלים</option>
                        <option value="Kfar Saba">כפר סבא</option>
                        <option value="Lod">לוד</option>
                        <option value="Netanya">נתניה</option>
                        <option value="Netivot">נתיבות</option>
                        <option value="Petah Tikva">פתח תקווה</option>
                        <option value="Ramat Gan">רמת גן</option>
                        <option value="Rehovot">רחובות</option>
                        <option value="Rishon Lezion">ראשון לציון</option>
                        <option value="Tel Aviv">תל אביב</option>
                        <option value="Tiberias">טבריה</option>
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
                    <input type="checkbox" id="football" name="hobbies1" value="Football" />
                    <label for="football">כדורגל</label><br />
                    <input type="checkbox" id="basketball" name="hobbies2" value="BasketBall" />
                    <label for="basketball">כדורסל</label><br />
                    <input type="checkbox" id="computer" name="hobbies3" value="Computer" />
                    <label for="computer">מחשבים</label><br />
                    <input type="checkbox" id="sport" name="hobbies4" value="Sport" />
                    <label for="sport">ספורט</label><br />
                    <input type="checkbox" id="movie" name="hobbies5" value="Movie" />
                    <label for="movie">סרטים</label><br />
                </td>
            </tr>

            <tr><td><br></td></tr>
            <tr><td><br></td></tr>

            <tr class="tr">
                <td class="td" colspan="2" style="text-align:center;">
                    <input type = "submit" name = "submit" id = "submit" value = "הרשמה"/>
                    <input type = "reset" name = "reset" id = "reset" value = "אתחול" onclick = "return resetForm()"/>
                </td>
            </tr>
        </table>
    </form>

    <br><br><br>
    <% Response.Write(st); %>
</asp:Content>