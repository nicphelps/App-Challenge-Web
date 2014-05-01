<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebRole1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="defaultImg">
        <a href="http://eecs.oregonstate.edu/aspiring-app-developers" target="_blank">
            <asp:Image ID="appHackImage" ImageUrl="~/Images/developer.jpg" 
            Width="506px" Height="266px" runat="server" NavigateUrl="~/default.aspx" />
        </a>
        <!--http://eecs.oregonstate.edu/sites/default/files/images/yeung-godfrey.jpg-->
    </div>
    <h2>
       Have you created an awesome mobile app for school, work or fun? <br /> <b>
        Join the OSU App Challenge!</b>
    </h2>
    <p>
        <a href="RegGroup.aspx">Register you team here!</a>
    </p>
    <p>
        The App Challenge will take place <b>Saturday, May 10th 2pm-4pm in the Kelley Engineering Center Main Atrium.</b></br>
        Each team will have a dedicated table to show off the App they created. Technology industry executives will tour the tables and judge each on <strong>
        Innovation</strong>,
        <strong>Completeness</strong> and <strong>Presentation.</strong></p>
    The prizes are:  <br />
First overall: $200 gift card to Amazon  <br />
Best of each the following categories: $75 gift card to Amazon 
<ul><li>Most Innovative</li>
<li>Most Complete</li>
<li>Best Presentation</li>
<li>People's Choice</li></ul>
    <p>
        The <b>OSU App Challenge</b> is a competition empowered by OSU students who are eager to learn to make mobile applications. We are in the process of building a community at OSU around the app development process. All levels of experience (including no experience) are encouraged to attend. You can form a team or work individually.
        
    </p>
    <p>
        &nbsp;</p>
    <h2>Help Sessions and Lessons</h2>
    <p>
        <b>Android: 6pm on Wednesdays in KIDD 033</b>
    </p>
    <p>
        <b>iOS: 7pm on Wednesdays in KIDD 033</b>
    </p>
    <p>
        If you have any questions, feel free to email
        nicole.marie.phelps@gmail.com or davidmeehan7@gmail.com
    </p>

</asp:Content>
