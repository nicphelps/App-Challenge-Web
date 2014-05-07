<%@ Page Title="Groups" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Groups" Codebehind="Groups.aspx.cs" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
        {
            color: #C24827;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
       <asp:HyperLink ID="GroupRegLink" NavigateUrl="~/RegGroup.aspx"  runat="server">Register your group</asp:HyperLink>

    </h2>
    <h2>
        Groups
    </h2>
    <p>
        <span class="style2">
      <strong>  App for randomly choosing a restaurant to eat at with your friends</strong></span> 
        <br /> by Nick Piatt, Michael Woffendin, and Taylor Cuilty</p>
            <p>
                <span class="style2">
      <strong>  Mobile application to measure concentration of chemical biomarkers</strong></span> 
        <br /> by Kyle Cesare, Joe Runde, and Kevin Hess</p>
            <p>
            <span class="style2">
      <strong>  Collage generator for Facebook photos</strong> </span> 
        <br /> by David Merrick</p>
            <p>
            <span class="style2">
      <strong>  Keep track of your financial transactions for freelancers</strong> </span> 
        <br /> by Soroush Ghorashi and Chadwick Swenson</p>
            <p>
            <span class="style2">
      <strong>  Whale mAPP</strong> </span> 
        <br /> by Courtney Hann</p>
</asp:Content>
