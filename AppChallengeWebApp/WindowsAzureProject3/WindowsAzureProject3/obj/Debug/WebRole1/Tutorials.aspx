<%@ Page Title="Tutorials" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Tutorials" Codebehind="Tutorials.aspx.cs" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h1>
        Tutorials
    </h1>
    <h2>
        Android
    </h2>
    <asp:HyperLink ID="AndSampleApp" NavigateUrl="~/Files/CoolApp.zip" runat="server">Android Cool Features Sample Application</asp:HyperLink>
    
    <br />
<asp:HyperLink ID="AndDoc" NavigateUrl="https://github.com/blastulation/AndroidLesson" runat="server">Lesson Plans</asp:HyperLink>
<h2>
        iOS

    </h2>
    <asp:HyperLink ID="HyperLink1" NavigateUrl="https://github.com/blacklotusi/iOSAppChallenge" runat="server">Lesson Plans</asp:HyperLink>
</asp:Content>
