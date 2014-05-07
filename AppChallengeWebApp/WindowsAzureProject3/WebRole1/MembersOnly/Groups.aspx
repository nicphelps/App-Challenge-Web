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


    <p>
        <span class="style2">
      <strong>  LANREG is an event registration web application that is designed to support small to large scale LAN parties. It includes organization, event, and seating chart creation tools along with full PayPal payment integration.</strong></span> 
        <br /> by Charles Catino</p>

    <p>
        <span class="style2">
      <strong>  Corvallis Bus App for iOS</strong></span> 
        <br /> by Cezary Wojcik and Russel Barnes</p>

    <p>
        <span class="style2">
      <strong>  Transport app for the Corvallis Transit System, which serves to provide bus riders with realtime information about where the bus is and when it will get to your stop.</strong></span> 
        <br /> by Chris Vanderschuere, Carly Farr, and Bret Lorimore</p>

    <p>
        <span class="style2">
      <strong>  Bluetooth megaphone app</strong></span> 
        <br /> by Marty Ulrich and David Merrick</p>

    <p>
        <span class="style2">
      <strong>  Corvallis real-time bus app, with map view, for Android</strong></span> 
        <br /> by Phillip Carter, Benjamin Friedman, and Paul Burris</p>
</asp:Content>
