<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="People" Codebehind="People.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource
          id="PeopleDS"
          runat="server"
          DataSourceMode="DataReader"
          ConnectionString="<%$ ConnectionStrings:ApplicationServices%>"
          SelectCommand="SELECT [User], Skills,Pref,Contact FROM People"> </asp:SqlDataSource>
    <asp:GridView ID="PeopleGrid" runat="server"  DataSourceID="PeopleDS"  DataKeyNames="User" OnDataBound="PeopleGrid_OnDataBound" >

                  </asp:GridView>
     
</asp:Content>

