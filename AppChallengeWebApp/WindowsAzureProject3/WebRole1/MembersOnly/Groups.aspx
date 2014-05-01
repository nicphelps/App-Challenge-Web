<%@ Page Title="Groups" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Groups" Codebehind="Groups.aspx.cs" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Groups
    </h2>
    <p>
       <asp:HyperLink ID="GroupRegLink" NavigateUrl="~/RegGroup.aspx"  runat="server">Register your group</asp:HyperLink>

    </p>
</asp:Content>
