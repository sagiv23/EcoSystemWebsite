<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Stories.aspx.cs" Inherits="SagivProject.Stories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        .Stories {
            color: rgb(166, 233, 224);
        }

        .a {
            text-align: center;
            color: rgb(51, 153, 153);
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
            text-decoration: none;
            cursor: pointer;
        }

        .a:hover {
            text-decoration: underline;
            color: rgb(116, 163, 157);
            transition: 1s;
        }

        .people {
            width: 510px;
            height: 300px;
            margin: 5px;
            position: relative;
            overflow: hidden;
        }

        .overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            font-size: 24px;
            padding: 10px;
            opacity: 0;
            transition: all 0.5s ease;
            pointer-events: none;
        }

        .people:hover .overlay {
            opacity: 1;
            height: auto;
            padding: 20px;
        }

        .people img {
            width: 100%;
            height: 100%;
            transition: all 1.5s;
        }

        .people:hover img {
            width: 530px;
            height: 340px;
        }

        li {
            margin-top: 10px;
            color: rgb(51, 153, 153);
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
            display: list-item;
        }
    </style>

    <script>
        function Top() {
            document.getElementById("Top").style.display = 'block';
            document.getElementById("Top").scrollIntoView({ behavior: 'smooth' });
        }

        function Alon_Tal() {
            document.getElementById("Alon_Tal").style.display = 'block';
            document.getElementById("Alon_Tal").scrollIntoView({ behavior: 'smooth' });
        }

        function All_Gor() {
            document.getElementById("All_Gor").style.display = 'block';
            document.getElementById("All_Gor").scrollIntoView({ behavior: 'smooth' });
        }

        function Sylvia_Earle() {
            document.getElementById("Sylvia_Earle").style.display = 'block';
            document.getElementById("Sylvia_Earle").scrollIntoView({ behavior: 'smooth' });
        }

        function Hermann_Schapira() {
            document.getElementById("Hermann_Schapira").style.display = 'block';
            document.getElementById("Hermann_Schapira").scrollIntoView({ behavior: 'smooth' });
        }

        function Amoz_Zhavi_and_Azaria_Alon() {
            document.getElementById("Amoz_Zhavi_and_Azaria_Alon").style.display = 'block';
            document.getElementById("Amoz_Zhavi_and_Azaria_Alon").scrollIntoView({ behavior: 'smooth' });
        }

        function Benjamin_Kahn() {
            document.getElementById("Benjamin_Kahn").style.display = 'block';
            document.getElementById("Benjamin_Kahn").scrollIntoView({ behavior: 'smooth' });
        } 
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id = "Top">סיפורים על יהודים מכל רחבי העולם שתרמו לסביבה</h2>

    <div style="text-align: center; border: 2px solid rgb(51, 153, 153);">
        <a onclick = "Alon_Tal()" class="people">
            <img id="person1" src="pics/people/Alon_Tal/Alon_Tal.png">
            <div class="overlay">אלון ישראל טל - מייסד "אדם טבע ודין"</div>
        </a>

        <a onclick = "All_Gor()" class="people">
            <img id="person2" src="pics/people/All_Gor/All_Gor.png">
            <div class="overlay">אלברט ארנולד "אל" גור - נשיא ארצות הברית לשעבר</div>
        </a>

        <a onclick = "Sylvia_Earle()" class="people">
            <img id="person3" src="pics/people/Sylvia_Earle/Sylvia_Earle.png">
            <div class="overlay">סילביה אליס ארל - ביולוגית ימית אמריקאית</div>
        </a>

        <a onclick = "Hermann_Schapira()" class="people">
            <img id="person4" src="pics/people/Hermann_Schapira/Hermann_Schapira.png">
            <div class="overlay">צבי הרמן שפירא - יזם את קרן קיימת לישראל</div>
        </a>

        <a onclick = "Amoz_Zhavi_and_Azaria_Alon()" class="people">
            <img id="person5" src="pics/people/Amoz_Zhavi_and_Azaria_Alon/Amoz_Zhavi_and_Azaria_Alon.png">
            <div class="overlay">עזריה אלון ואמוץ זהבי - מייסדי "החברה להגנת הטבע"</div>
        </a>

        <a onclick = "Benjamin_Kahn()" class="people">
            <img id="person6" src="pics/people/Benjamin_Kahn/Benjamin_Kahn.png">
            <div class="overlay">בנג'מין קאהן - מייסד "צלול"</div>
        </a>
    </div>

    <div id = "Alon_Tal">
        <h2 style = "font-size: 50px; margin-top: 60px;">אלון ישראל טל</h2>
        <p>
            נולד ב-12 ביולי 1960 בארצות הברית בשם אלברט רוזנטל.<br>
            היה פרופסור, חוקר ומרצה בתחום איכות הסביבה וכיהן כראש החוג למדיניות ציבורית באוניברסיטת תל אביב, לאחר מכן היה חבר כנסת לשעבר במפלגה "כחול לבן", וייסד את הארגון "אדם טבע ודין - אגודה ישראלית להגנת הסביבה".<br>
            הארגון עוסק בשימור והגנת הסביבה, הוא משלב גורמים מדעיים, משפטיים, תכנוניים ומקצועיים ומכוון לשימור אינטרס השמירה על איכות הסביבה בישראל.<br>
            מטרת הארגון היא לקדם את שמירת הסביבה במישור המשפטי, חינוכי, חקיקתי וציבורי. בנוסף, לעורר בתחום החינוך בארץ ובחו"ל לגבי שמירת איכות הסביבה, ולעודד מחקר מעשי לשמירת משאבים טבעיים, מערכות אקולוגיות וניטור זיהום.<br>
            לאורך חייו עד-כה זכה אלון טל בפרסים שונים, כגון: "אות מפעל חיים" מן המשרד להגנת הסביבה על תרומה לשמירת הסביבה בישראל (2008) ופרס שיבע, חוקר מצטיין מטעם קרן בן-גוריון (2006).<br>
            בנוסף, כתב כ 10 ספרים מגוונים שעוסקים בתחום הסביבתי ובדגש בישראל, אחד מהם -
        </p>
        <p style = "direction: ltr; margin-top: -20px;">
            Alon Tal, All the Trees of the Forest, Israel's Woodlands from the Bible to the Present, New Haven, Yale University Press, 2013.
        </p>
        <div style="text-align: center">
            <img src="pics/people/Alon_Tal/book.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/Alon_Tal/Alon_Tal.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/Alon_Tal/Adam_Teva_Din.png" style = "margin: 5px; height: 300px;">
        </div>
        <a onclick = "Top()" class = "a" >חזרה</a>
    </div>

    <div id = "All_Gor">
        <h2 style = "font-size: 50px; margin-top: 60px;">אלברט ארנולד "אל" גור</h2>
        <p>
            נולד ב-31 במרץ 1948 בארצות הברית.<br>
            היה בבית הנבחרים ב"המפלגה הדמוקרטית" בארצות הברית וכסנאטור מטעם מדינת טנסי. לאחר מכן היה פוליטיקאי אמריקאי שכיהן כסגן נשיא ארצות הברית תחת הנשיא ביל קלינטון, מהתאריך 20.1.1993 ועד 20.1.2001.<br>
            במהלך לימודיו בקולג', בשנתו האחרונה, הוא למד בשיעור עם אוקיינוגרף ותאורטיקן ההתחממות הגלובלית רוג'ר רוול, שעורר את התעניינותו של גור בהתחממות כדור הארץ ובנושאים סביבתיים אחרים.<br>
            "גרעין" התעניינות זה ליווה אותו להמשך חייו ועוד בתקופת היותו פוליטיקאי פעיל, וביתר שאת לאחר פרישתו, גור היה פעיל אקטיבי במאבק בהתחממות הגלובלית ובשינוי האקלים ואף זכה בפרס נובל לשלום לשנת 2007, יחד עם הפאנל הבין-ממשלתי לשינוי האקלים.<br> 
            גור הוא המייסד והיו"ר הנוכחי של הפרויקט להסבת מקורות האנרגיה של ארצות הברית, שותף בחברת ההון-סיכון "קליינר פרקינס", העומדת בראש קבוצת פתרונות שינוי האקלים ומבצע עוד מספר תפקידים והכל למען הסביבה.<br>
            בנוסף לחיבורים שפרסם בנושאי הגנת הסביבה, מרבה גור גם לפעול ולהרצות בנושא. בשנת 2006 כתב את הספר "אמת מטרידה: משבר התחממות כדור הארץ" שאף הפך לסרט תיעודי שהוא כיכב בו. הספר והסרט עוסקים בהתחממות הגלובלית הנגרמת על ידי בני האדם. הסרט זכה בפרס האוסקר לסרט התיעודי הטוב ביותר ובפרס נוסף לשיר הנושא הטוב ביותר ואף הופק סרט המשך בשנת 2017.<br> 
            אל גור זכה בלא מעט פרסים, כאשר הבולט שביניהם הוא פרס נובל לשלום יחד עם הפאנל הבין-ממשלתי לשינוי האקלים (IPCC), על פעילותו למניעת תופעת התחממות כדור הארץ (2007).
        </p>
        <div style="text-align: center">
            <img src="pics/people/All_Gor/All_Gor.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/All_Gor/Movie.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/All_Gor/USA.png" style = "margin: 5px; height: 300px;">
        </div>
        <a onclick = "Top()" class = "a" >חזרה</a>
    </div>

    <div id = "Sylvia_Earle">
        <h2 style = "font-size: 50px; margin-top: 60px;">סילביה אליס ארל</h2>
        <p>
            נולדה ב- 30 באוגוסט 1935 בארצות הברית.<br>
            סילביה אליס ארל היא ביולוגית ימית אמריקאית, חוקרת, סופרת ומרצה. היא "חוקרת הבית" של נשיונל ג'יאוגרפיק מאז שנת 1998.<br> 
            ארל עסקה בעבודות שונות, אך המכנה המשותף של כולן הינו - הים. היא הייתה חלוצה מספר פעמים כאשר הצליחה להגיע להישגים הן בתחום מסוים והן כאישה. לדוגמה, בשנת 1979 היא ביצעה צלילה בים הפתוח בתוך חליפת ג'ים על קרקעית הים ליד האי אואהו, ובכך שברה את שיא הצלילה לעומק של אישה, 381 מטרים.<br>
            בשנת 1982 היא ובעלה, גרהם הוקס, מהנדס ומתכנן צוללות, הקימו את "הנדסת האוקיאנוס העמוק" עבור תכנון, תפעול, תמיכה וייעוץ לגבי מערכות ידניות ורובוטיות ובשנת 1985 בנו את צוללת המחקר "רכב עמוק" אשר פועלת עד לעומק של כקילומטר.<br>
            ארל עזבה את החברה בשנת 1990 לשם מינוייה כמדענית הראשית במנהל האוקיינוסים והאטמוספירה הלאומי של ארצות הברית, שם נשארה עד שנת 1992. היא הייתה האישה הראשונה שהחזיקה במשרה זו.<br>
            מאז שנת 1998, ארל משמשת כחוקרת עבור נשיונל ג'יאוגרפיק. יש כאלו המכנים אותה "הוד עומקה" או "גנרלית החדקן".<br>
            בין השנים 1998-2002 היא ניהלה את "משלחות הים בנות-הקיימא", תוכנית שנוסדה בחסות חברת נשיונל ג'יאוגרפיק ומומנה בידי קרן גולדמן כדי לחקור את שמורת הטבע הלאומית של ארצות הברית.<br> 
            כמו כן, ייסדה את "המשימה הכחולה" (הידועה גם כ"ברית סילביה ארל", "קרן החיפוש העמוק", ו"החיפוש העמוק"), קרן ללא מטרות רווח עבור חקר האוקיאנוסים והגנתם ובאוגוסט 2014, שוחרר סרט תיעודי בשם "המשימה הכחולה" ונכון לינואר 2015, קיימים 50 מרכזי תקווה מסביב לעולם.<br>
            סילביה קיבלה וזכתה בתארי כבוד ופרסים רבים (כ 21 לערך) לאורך שנות עשייתה, החל ב 1970 בפרס תפקיד שימור הסביבה של משרד הפנים של ארצות הברית ואשת השנה של לוס אנג'לס טיימס. בשנת 1998 הוכרה כאחת מ-500 חתני פרס המדעים של האו"ם, ושומרת השנה של הפדרציה הלאומית של הטבע.<br>
            ארל חיברה יותר מ-150 הוצאות (ספרים, פרסומים, כתבות וכו').
        </p>
        <div style="text-align: center">
            <img src="pics/people/Sylvia_Earle/Blue_Mission.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/Sylvia_Earle/Sylvia_Earle.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/Sylvia_Earle/Ocean.png" style = "margin: 5px; height: 300px;">
        </div>
        <a onclick = "Top()" class = "a" >חזרה</a>
    </div>

    <div id = "Hermann_Schapira">
        <h2 style = "font-size: 50px; margin-top: 60px;">צבי הרמן שפירא</h2>
        <p>
            נולד ב-30 באוגוסט 1840 ברוסיה ונפטר ב-8 במאי 1898 (גיל 57).<br>
            צבי היה משכיל יהודי-ליטאי שחי ופעל ברוסיה ואחר כך בגרמניה, מתמטיקאי, מראשוני חובבי ציון ותנועת הציונות המדינית, הוגה רעיון האוניברסיטה העברית בירושלים והיוזם של הקמת הקרן הקיימת לישראל (קק"ל).<br>
            אביו של צבי 'דחף' אותו מילדות להיות למדן ורב בישראל וצבי הפגין יכולות וכישרונות מגיל צעיר - שליטה בשפות, ומתמטיקה וכבר בגיל 24 שימש כרב וראש ישיבה בעיר הליטאית בירטושלא, ושמו יצא לתהילה בכל הסביבה.<br>
            בגיל 26 לערך, החליט שפירא להתקדם ולהגיע להישגים במדע ובחכמה וקידם את ידיעותיו במתמטיקה, שפת המדינה ומדעים, ועד שנת 1886 לצד עבודה במסחר ביסס את עצמו כמרצה ופרופסור למתמטיקה ואף כתב ספר.<br>
            בהיותו בגיל 30 התוודע לרעיון ההתיישבות בארץ ישראל וחלם על הקמת מרכז עליון למדעים בירושלים. הוא התחיל לפרסם מאמרים על בעיות תנועת התחיה הלאומית וקשר קשרים עם הסטודנטים היהודים בהיידלברג, שהיו רובם יוצאי רוסיה ורעיון שיבת ציון היה קרוב ללב כולם. בגיל 40 יסד שפירא בהיידלברג אגודה יהודית לאומית בשם "ציון" שמטרותיה היו להפיץ בקרב היהודים את השפה ואת הספרות היהודית, לארגן את היהודים לפעולה ציבורית למען שחרור מעמדו של העם היהודי, להגשים את הרעיון של התיישבות יהודית בארץ ישראל ולהקים מרכז רוחני של המתיישבים היהודים בארץ.<br>
            במסגרת הקונגרס הציוני הראשון (1897), צבי מצא במה לרעיונותיו בקרב בנימין זאב הרצל (אשר כתב את "מדינת היהודים") והציע בישיבה האחרונה של הקונגרס לייסד את הקרן הקיימת לישראל, ההצעה כללה 12 סעיפים, בהם הגדיר שפירא את אופייה ומטרתה של הקרן, ועיקר הסעיפים הם:
        </p>
        <ul>
            <li>לאסוף מכל יהודי בעולם כסף ליסוד קרן יהודית כללית.</li>
            <li>שני שלישים יהוו קרן לקרקעות והשליש האחרון יוצא על שמירת הקרקעות הנרכשות.</li>
            <li>את האדמה הנרכשת אין להוציא בשום זמן מרשות הקרן ואסור למכור ליהודי יחיד.</li>
        </ul>
        <p>
            הצעתו נתקבלה על ידי צירי הקונגרס אך הוא לא זכה לראות בהתממשות חזונו ונפטר 8 חודשים מאוחר יותר.<br>
            לאור הישגיו והעיקר שבהם, הקמת קק"ל, בחרו לתעד את זכרונו בארץ במספר דרכים, למשל תבליט בכניסה לקמפוס גבעת רם באוניברסיטה העברית. בנוסף, על שמו נקראים - המושב גבעת שפירא, רחובות בחיפה, בירושלים, בפתח תקווה, בראשון לציון, בחולון ובתל אביב שם שוכן בית קק"ל.
        </p>
        <div style="text-align: center">
            <img src="pics/people/Hermann_Schapira/Kakal.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/Hermann_Schapira/Hermann_Schapira.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/Hermann_Schapira/Kongras.png" style = "margin: 5px; height: 300px;">
        </div>
        <a onclick = "Top()" class = "a" >חזרה</a>
    </div>

    <div id = "Amoz_Zhavi_and_Azaria_Alon">
        <h2 style = "font-size: 50px; margin-top: 60px;">עזריה אלון ואמוץ זהבי</h2>
        <p>
            עזריה אלון ואמוץ זהבי היו ממייסדי החברה להגנת הטבע בשנת 1953.<br>
            <b>עזריה אלון</b> (15/11/1918-19/1/2014 , גיל 95) היה חוקר טבע, צלם, ומורה דרך. הוא היה פעיל ותיק בתחום שמירת הטבע בישראל, ופעל רבות לתיעוד טבע הארץ, שמירתו והפצת מורשתו. אלון כיהן כמזכיר או יו"ר החברה להגנת הטבע במשך שנים רבות, עסק בהקמת בתי ספר שדה ובמאבקים ציבוריים של החברה. הוא זכה בפרס ישראל בשנת 2012 על מפעל חיים.<br>
            <b>אמוץ זהבי</b> (14/8/1928-12/5/2017 , גיל 88) היה פרופסור לזואולוגיה באוניברסיטת תל אביב. הוא היה חוקר ידוע בתחום האקולוגיה ההתנהגותית, ופרסם ספרים ומאמרים רבים בנושא. זהבי היה ממייסדי החברה להגנת הטבע ושימש כיו"ר שלה בשנים 1963-1971. הוא זכה בפרס ישראל בשנת 1973 יחד עם עזריה אלון ויואב שגיא על מפעלם בחברה להגנת הטבע.<br>
            אלון וזהבי הכירו עוד בתקופת לימודיהם באוניברסיטה העברית בירושלים. שניהם היו חובבי טבע מושבעים, וחשו דאגה עמוקה לנוכח הפגיעה ההולכת וגדלה בטבע הישראלי. הם האמינו שיש צורך בהקמת ארגון שיפעל לשמירת הטבע והנוף בישראל, והחליטו להקים יחד את החברה להגנת הטבע.<br>
            פעילותם של אלון וזהבי תרמה רבות להקמתה ולביסוסה של החברה להגנת הטבע. הם היו מנהיגים דגולים, שהצליחו לגייס תמיכה ציבורית רחבה למאבקם בשמירת הטבע. בזכותם, ישראל הפכה למדינה מובילה בתחום שמירת הטבע, ויש לה רשת ענפה של שמורות טבע וגנים לאומיים.<br>
            חלק מהתרומות החשובות ביותר של אלון וזהבי להגנת הטבע בישראל:
        </p>
        <ul>
            <li><u>הקמת החברה להגנת הטבע</u>.</li>
            <li><u>הפיכת שמירת הטבע לנושא ציבורי</u>: אלון וזהבי פעלו רבות להעלאת המודעות הסביבתית בקרב הציבור הישראלי. הם הרצו, כתבו מאמרים, והפיקו סרטי קולנוע וטלוויזיה בנושא שמירת הטבע.</li>
            <li><u>קידום חקיקה סביבתית</u>: אלון וזהבי פעלו לקידום חקיקה שתגן על הסביבה בישראל. הם היו בין יוזמי חוק שמירת הסביבה, חוק החופים, וחוק הגנת החי.</li>
            <li><u>הקמת שמורות טבע</u>: אלון וזהבי היו מעורבים בהקמתן של רבות משמורות הטבע בישראל, ביניהן שמורת החולה, שמורת עין גדי, ושמורת אכזיב.</li>
        </ul>
        <p>
            עזריה אלון ואמוץ זהבי היו דמויות מופת בתחום שמירת הטבע בישראל. מורשתם ממשיכה להוות השראה לפעילים רבים למען הסביבה.
        </p>
        <div style="text-align: center">
            <img src="pics/people/Amoz_Zhavi_and_Azaria_Alon/Haganat.png" style = "margin: 5px; height: 300px; width: 500px;">
            <img src="pics/people/Amoz_Zhavi_and_Azaria_Alon/Amoz_Zhavi_and_Azaria_Alon.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/Amoz_Zhavi_and_Azaria_Alon/Hula.png" style = "margin: 5px; height: 300px;">
        </div>
        <a onclick = "Top()" class = "a" >חזרה</a>
    </div>

    <div id = "Benjamin_Kahn">
        <h2 style = "font-size: 50px; margin-top: 60px;">בנג'מין קאהן</h2>
        <p>
            נולד בשנת 1955, הוא ביולוג ימי ישראלי ופעיל ותיק למען איכות הסביבה.<br>
            קאהן ידוע בעיקר כיו"ר עמותת "צלול", ארגון שהקים בשנת 1999 במטרה לשמור על הסביבה הימית בישראל, תוך התמקדות בים התיכון ובים האדום.<br>
            פעילותה של "צלול" רחבה ומגוונת, ותורמת רבות להגנה על הסביבה הימית בישראל. בין פעולותיה הבולטות ניתן למנות:
        </p>
        <ul>
            <li><u>ניקיון חופים</u>: "צלול" מארגנת באופן קבוע ימי ניקיון חופים בהשתתפות אלפי מתנדבים, ותורמת רבות להסרת פסולת רבה מהסביבה הימית.</li>
            <li><u>חקר ופיקוח</u>: העמותה עורכת מחקרים רבים בנוגע למצב הסביבה הימית בישראל, ופועלת לפיקוח על גורמים העלולים לפגוע בה.</li>
            <li><u>חינוך והסברה</u>: "צלול" מעלה את המודעות לחשיבות השמירה על הסביבה הימית באמצעות פעילויות חינוכיות והסברתיות לקהל הרחב.</li>
            <li><u>שיקום סביבתי</u>: העמותה מעורבת בפרויקטים רבים לשיקום סביבה ימית פגועה, כגון שיקום שוניות אלמוגים והחזרת מינים ימיים שנכחדים.</li>
        </ul>
        <p>
            פעילותו של קאהן זכתה להכרה בינלאומית, והוא אף נבחר בשנת 2007 על ידי מגזין "טיים" לאחד מגיבורי הסביבה העולמיים. בנוסף, לפעילותו ב"צלול", קאהן מעורב גם בעסקי אביו, מוריס קאהן, ומתפקד כיו"ר חברת קורל, העוסקת בהקמת מצפים תת-ימיים ברחבי העולם.<br>
            בנג'מין קאהן הוא דמות מובילה בתחום ההגנה על הסביבה בישראל. פעילותו הנמרצת והנחושה תרמה רבות לשמירה על הסביבה הימית, הן בישראל והן ברחבי העולם.
        </p>
        <div style="text-align: center">
            <img src="pics/people/Benjamin_Kahn/Zalul.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/Benjamin_Kahn/Benjamin_Kahn.png" style = "margin: 5px; height: 300px;">
            <img src="pics/people/Benjamin_Kahn/Clean.png" style = "margin: 5px; height: 300px;">
        </div>
        <a onclick = "Top()" class = "a" >חזרה</a>
    </div>
</asp:Content>