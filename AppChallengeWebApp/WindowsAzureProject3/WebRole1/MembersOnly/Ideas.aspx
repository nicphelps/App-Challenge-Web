<%@ Page Title="Ideas" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="True" Inherits="Ideas" Codebehind="Ideas.aspx.cs" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Ideas
    </h2>
      <asp:SqlDataSource
          id="IdeaListDS"
          runat="server"
          DataSourceMode="DataReader"
          ConnectionString="<%$ ConnectionStrings:ApplicationServices%>"
          SelectCommand="SELECT ListEntry FROM IdeaList"> </asp:SqlDataSource>
    <asp:TextBox ID="IdeaTextbox" runat="server" Height="106px"  Width="366px" TextMode="multiline"></asp:TextBox>
    <br />

    <asp:Button ID="SubmitIdeaButton" runat="server" onclick="SubmitIdeaButton_Click" Text="Submit"  />
    <asp:BulletedList ID="IdeaList" runat="server" DatasourceID = "IdeaListDS" DataTextField ="ListEntry" style="line-height:60px;" font-size="16">
    </asp:BulletedList>
    <p>
        &nbsp;</p>
      
     
 
    </asp:Content>
