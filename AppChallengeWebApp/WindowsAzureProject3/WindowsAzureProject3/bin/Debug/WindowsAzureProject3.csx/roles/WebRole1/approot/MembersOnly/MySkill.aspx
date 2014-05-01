<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="True" Inherits="MembersOnly_MySkill" Codebehind="MySkill.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


    <h2>Looking for a group? </h2>
    Advertise here!
    <br />
    <br />
    <asp:Button ID="LinButton" runat="server" OnClick="LinButtonClick" Text="Connect with Linkedin" />
    <br />
    <br />


<asp:Label ID="SkillLabel" Text="Skills" runat="server" Style="vertical-align:top" />
    <br />
<asp:TextBox TextMode="MultiLine" ID="SkillTextbox" runat="server"  />
    <br />
    <br />


<asp:Label ID="PrefLabel" Text="What are you looking for in a group?" runat="server" 
        Style="vertical-align:top" />
    <br />
<asp:TextBox TextMode="MultiLine" ID="PrefTextbox" runat="server"  />
    <br />
    <br />


<asp:Label ID="ContactLabel" Text="How will people contact you?" runat="server" 
        Style="vertical-align:top" />
    <br />
<asp:TextBox TextMode="MultiLine" ID="ContactTextbox" runat="server"  />
    <br />
    <asp:Button ID="SubmitButton" Text="Submit" runat="Server" 
        onclick="SubmitButton_Click" />

    <asp:Label ID="SuccessLabel" runat="server" Text=""></asp:Label>

</asp:Content>

