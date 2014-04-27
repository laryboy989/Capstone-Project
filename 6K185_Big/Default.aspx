<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Let us start something now!</h2>
    <div id="leftside">
        <h3 style="font-weight:bold; font-size:18px;">Look What We've Started</h3>

        <h5 style="font-weight: bold;    font-variant:initial ">Bowl a strike, make an impact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </h5><asp:Image ID="Bowl" runat="server" Height="44px" ImageUrl="~/image/Bowl.png" Width="103px" />
        &nbsp;
        <br />
        Each year, half a million people across America come together to have fun and raise money to support Big Brothers Big Sisters. Bowl for Kids&#39; Sake is the perfect way to make an impact on your community.<br />
        <a href="http://www.bbbs.org/site/c.9iILI3NGKhK6F/b.5961041/k.C14B/Bowl_a_strike_make_an_impact.htm"> Learn More</a> 
        <br />
        <h6 style="font-weight: bold;    font-variant:initial ">The right Formula
        </h6> November 8th, 2013<br />
        Supporters of Big Brothers Big Sisters can say proudly that they tipped the scales for Ben Gordon. Ben, a former Little Brother in our program, received a Goldwater Scholarship last year. Intelligent and determined, Ben earned this award for being one of America’s most elite science students.
        <br />
        <a href="http://www.bbbsjc.org/#!The-Right-Formula/c1jpv/A7CDAC2C-DA72-48E1-9E45-64DB40341929">Learn More</a>

        <h6 style="font-weight: bold;    font-variant:initial ">Achievement across local communities through BBBS
        </h6>

        Researchers found that after 18 months of spending time with their Bigs, the Little Brothers and Little Sisters, compared to those children not in our program, were:
        <br />
            <ul>
            <li>46% less likely to begin using illegal drugs</li>
            <li>27% less likely to begin using alcohol</li>
            <li>52% less likely to skip school</li>
            <li>37% less likely to skip a class</li>
            <li>33% less likely to hit someone</li>
        </ul>
         They also found that the Littles were more confident of their performance in schoolwork and getting along better with their families.<br />


        <a href="http://www.bbbs.org/site/c.9iILI3NGKhK6F/b.5961035/k.A153/Big_impact8212proven_results.htm"> Learn More</a> 
        <br />
        <br />
        <asp:Image ID="Littles" runat="server" Height="277px" ImageUrl="~/image/littles.jpg" Width="524px" alt=" Littles from Kapa'a Elementary School!"/><p style="margin-left:120px">Littles from Kapa'a Elementary School!</p>
    </div>
    <div id="rightside">
         
        <asp:Image ID="BBBS1" runat="server" Height="277px" ImageUrl="~/image/BBBS1.jpg" Width="321px" /> 
        <br />
        <br />

     
                      <h3>@Big Brothers Big Sisters (Twitter)</h3><br/>

                      <a class="twitter-timeline" height="340px" href="https://twitter.com/BBBSR" data-widget-id="460181430316707840">Tweets by @BBBSR</a>
<script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + "://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>



        <h2>Contact us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
        <br />BY MAIL
        <br />Big Brothers Big Sisters of Johnson County
        <br />3109 Old Hwy 218 South
        <br />Iowa City, IA 52246
        <br /><br />
        BY PHONE
        <br />319-337-2145
        <br /><br />
        BY FAX
        <br />319-337-7864
    </div>
</asp:Content>