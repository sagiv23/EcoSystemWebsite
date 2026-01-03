<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Source.aspx.cs" Inherits="SagivProject.Source" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/Style.css" rel="stylesheet" />

    <style>
        .Source{
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

        li {
            color: rgb(51, 153, 153);
            font-family: 'Rajdhani', sans-serif;
            font-size: 30px;
            border: 2px solid;
            border-spacing: 4px;
        }

        #Main_Sources {
            margin: 0px auto;
        }

        .title {
            color: rgb(51, 153, 153);
            font-family: 'Rajdhani', sans-serif;
            font-size: 70px;
        }

        .Sources {
            list-style-type: none;
        }

        .Sources li:before {
            content: "\00BB"; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>מקורות המידע שהשתמשתי</h2>

    <table id = "Main_Sources">
        <tr>
            <th class = "title">קיימות</th>
            <td>
                <ul class = "Sources">
                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%A7%D7%99%D7%99%D7%9E%D7%95%D7%AA">ויקיפדיה - קיימות</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://pop.education.gov.il/sustainability-education/">משרד החינוך - חינוך לקיימות</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://ecowiki.org.il/wiki/%D7%A7%D7%99%D7%99%D7%9E%D7%95%D7%AA">אקו ויקי - קיימות</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://www.gov.il/he/departments/guides/sustainable_development_goals_sdg">המשרד להגנת הסביבה - יעדי פיתוח בר קיימא – SDGs</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://www.sdgi.org.il/">ישראל - פיתוח בר קיימא | מציאת SDG פתרונות לבעיות הגדולות בעולם</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://www.undp.org/sustainable-development-goals">sustainable-development-goals</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://sdgs.un.org/goals">SDGS goals</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%99%D7%A2%D7%93%D7%99%D7%9D_%D7%9C%D7%A4%D7%99%D7%AA%D7%95%D7%97_%D7%91%D7%A8_%D7%A7%D7%99%D7%99%D7%9E%D7%90">ויקיפדיה - יעדים לפיתוח בר קיימא</a>
                    </li>
                </ul>
            </td>
            
        </tr>

        <tr>
            <th class = "title">מערכת אקולוגית</th>
            <td>
                <ul class = "Sources">
                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%9E%D7%A2%D7%A8%D7%9B%D7%AA_%D7%90%D7%A7%D7%95%D7%9C%D7%95%D7%92%D7%99%D7%AA">ויקיפדיה - מערכת אקולוגית</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://smnh.tau.ac.il/israel_ecosystem_services">מוזיאון הטבע ע״ש שטיינהרדט</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://kotar.cet.ac.il/KotarApp/Index/Book.aspx?nBookID=110991503">לשמרה: קהילות מקיימות ואקולוגיות בישראל</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://hamaarag.org.il/report/">המארג</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://pop.education.gov.il/tchumey_daat/geography_adam_sviva/chativat-beynayim/noseem_nilmadim/sviva-vekayamut-beisrael/">משרד החינוך - סביבה וקיימות בישראל</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://magazine.isees.org.il/?p=16712">אקולוגיה וסביבה</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3569065">SSRN</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%90%D7%A7%D7%95%D7%9C%D7%95%D7%92%D7%99%D7%94">ויקיפדיה - אקולוגיה</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://textologia.net/?p=41576">טקסטולוגיה - מערכת אקולוגית</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://tevabiz.org.il/habitat/ecosystem/">טבעBIZ</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://pop.education.gov.il/tchumey_daat/mada-tehnologia/chativat-beynayim/noseem_nilmadim/ecological-systems/">משרד החינוך - אקולוגיה ומערכות ביולוגיות</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://www.mevaker.gov.il/he/publication/Articles/Pages/2021.10.26-Climate.aspx?AspxAutoDetectCookieSupport=1">מבקר המדינה ונציב תלונות הציבור</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://ecowiki.org.il/wiki/%D7%9E%D7%A2%D7%A8%D7%9B%D7%AA_%D7%90%D7%A7%D7%95%D7%9C%D7%95%D7%92%D7%99%D7%AA">אקו ויקי - מערכת אקולוגית</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://lib.cet.ac.il/pages/item.asp?item=2802">הספרייה הוירטואלית של מטח</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://www.gratus.co.il/article/gratitude-happiness-08062021">Gratus</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://microbiologynote.com/iw/%D7%92%D7%95%D7%A8%D7%9E%D7%99%D7%9D-%D7%91%D7%99%D7%95%D7%98%D7%99%D7%99%D7%9D/">הערות מיקרוביולוגיה</a>
                    </li>
                </ul>
            </td>
        </tr>

        <tr>
            <th class = "title">אלון טל</th>
            <td>
                <ul class = "Sources">
                    <li>
                        <a target = "_blank" class="kishor" href="https://social-sciences.tau.ac.il/profile/alontal">הפקולטה למדעי החברה ע"ש גרשון גורדון - אוניברסיטת תל אביב</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%90%D7%9C%D7%95%D7%9F_%D7%98%D7%9C">ויקיפדיה - אלון טל</a>
                    </li>
                    
                </ul>
            </td>
        </tr>

        <tr>
            <th class = "title">אלברט ארנולד "אל" גור</th>
            <td>
                <ul class = "Sources">
                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%90%D7%9C_%D7%92%D7%95%D7%A8">ויקיפדיה - אל גור</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://artsandculture.google.com/entity/m0d05fv?hl=iw">Google Arts & Culture - אל גור</a>
                    </li>
                </ul>
            </td>
        </tr>

        <tr>
            <th class = "title">סילביה אליס ארל</th>
            <td>
                <ul class = "Sources">
                    <li>
                        <a target = "_blank" class="kishor" href="https://www.ynet.co.il/environment-science/article/SkwUbdpLO">Ynet - "אם לא נטפל בים, כדור הארץ לא יינצל": ריאיון עם אגדה ימית</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%A1%D7%99%D7%9C%D7%91%D7%99%D7%94_%D7%90%D7%A8%D7%9C">ויקיפדיה - סילביה ארל</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://bog.haifa.ac.il/images/Sylvia__Earle_heb.pdf">אוניברסיטת חיפה - תואר דוקטור לפילוסופיה לשם כבוד</a>
                    </li>
                </ul>
            </td>
        </tr>

        <tr>
            <th class = "title">צבי הרמן שפירא</th>
            <td>
                <ul class = "Sources">
                    <li>
                        <a target = "_blank" class="kishor" href="https://lib.cet.ac.il/pages/item.asp?item=18835">הספרייה הווירטואלית של מטח (פסקה למטה)</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%A6%D7%91%D7%99_%D7%94%D7%A8%D7%9E%D7%9F_%D7%A9%D7%A4%D7%99%D7%A8%D7%90">ויקיפדיה - צבי הרמן שפירא</a>
                    </li>
                </ul>
            </td>
        </tr>

        <tr>
            <th class = "title">עזריה אלון ואמוץ זהבי</th>
            <td>
                <ul class = "Sources">
                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%90%D7%9E%D7%95%D7%A5_%D7%96%D7%94%D7%91%D7%99">ויקיפדיה - אמוץ זהבי</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%A2%D7%96%D7%A8%D7%99%D7%94_%D7%90%D7%9C%D7%95%D7%9F">ויקיפדיה - עזריה אלון</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%94%D7%97%D7%91%D7%A8%D7%94_%D7%9C%D7%94%D7%92%D7%A0%D7%AA_%D7%94%D7%98%D7%91%D7%A2#:~:text=%D7%91%D7%A8%D7%90%D7%A9%20%D7%94%D7%AA%D7%A0%D7%95%D7%A2%D7%94%20%D7%A2%D7%9E%D7%93%D7%95%20%D7%A4%D7%A8%D7%95%D7%A4'%20%D7%90%D7%9E%D7%95%D7%A5,%D7%90%D7%A8%D7%95%D7%9B%D7%95%D7%AA%20%D7%9B%D7%9E%D7%96%D7%9B%D7%99%D7%A8%20%D7%94%D7%97%D7%91%D7%A8%D7%94%20%D7%9C%D7%94%D7%92%D7%A0%D7%AA%20%D7%94%D7%98%D7%91%D7%A2.">ויקיפדיה - החברה להגנת הטבע</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://www.chagim.org.il/about/azaria-alon">מכון שיטים - עזריה אלון</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://www.mako.co.il/news-channel2/Friday-Newscast/Article-14164a874a97441004.htm">N12 - הכירו את מייסד החברה להגנת הטבע</a>
                    </li>
                </ul>
            </td>
        </tr>

        <tr>
            <th class = "title">בנג'מין קאהן</th>
            <td>
                <ul class = "Sources">
                    <li>
                        <a target = "_blank" class="kishor" href="https://he.wikipedia.org/wiki/%D7%91%D7%A0%D7%92%27%D7%9E%D7%99%D7%9F_%D7%A7%D7%90%D7%94%D7%9F#:~:text=%D7%91%D7%A9%D7%A0%D7%AA%202007%20%D7%A0%D7%91%D7%97%D7%A8%20%D7%A2%D7%9C%20%D7%99%D7%93%D7%99,%D7%91%D7%A9%D7%A0%D7%AA%201999%2C%20%D7%95%D7%9C%D7%96%D7%95%D7%92%20%D7%A9%D7%A0%D7%99%20%D7%99%D7%9C%D7%93%D7%99%D7%9D.">ויקיפדיה - בנג'מין קאהן</a>
                    </li>

                    <li>
                        <a target = "_blank" class="kishor" href="https://zalul.org.il/%D7%A0%D7%99%D7%A7%D7%99%D7%95%D7%A0%D7%95%D7%AA-%D7%97%D7%95%D7%A4%D7%99%D7%9D/">צלול</a>
                    </li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>