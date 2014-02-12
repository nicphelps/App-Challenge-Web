<%@ Page Title="Ideas" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Ideas.aspx.cs" Inherits="Ideas" %>

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
          ConnectionString="<%$ ConnectionStrings:Storage%>"
          SelectCommand="SELECT ListEntry FROM IdeaList"> </asp:SqlDataSource>
    <asp:TextBox ID="IdeaTextbox" runat="server" Height="106px"  Width="366px" TextMode="multiline"></asp:TextBox>
    <br />

    <asp:Button ID="SubmitIdeaButton" runat="server" onclick="SubmitIdeaButton_Click" Text="Button"  />
    <asp:BulletedList ID="IdeaList" runat="server" DatasourceID = "IdeaListDS" DataTextField ="ListEntry" style="line-height:60px;" font-size="16">
    </asp:BulletedList>
    <p>
        &nbsp;</p>
      
     
 
    </asp:Content>
