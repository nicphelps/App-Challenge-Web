<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegGroup.aspx.cs" Inherits="WebRole1.RegGroup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Register your group
    </h2>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Email</p>
   <p>
        &nbsp;Team Lead:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TeamLeadNameTB" runat="server"></asp:TextBox>
    &nbsp;&nbsp; <asp:TextBox ID="TeamLeadEmailTB" runat="server"></asp:TextBox>
    </p>
    <p>
       
      
        Member 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
       

        <asp:TextBox ID="MemberNameTB2"  runat="server"></asp:TextBox>
       

    </p>
    <p>
       

        Member 3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
       

        <asp:TextBox ID="MemberNameTB3" runat="server"></asp:TextBox>
       

    </p>
    <p>
       

        Member 4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
       

        <asp:TextBox ID="MemberNameTB4" runat="server"></asp:TextBox>
       

    </p>
   
       
       <p>
        <asp:Label ID="ExtraMemLabel" Style="vertical-align: top"  runat="server" 
            Text="Extra Members:"></asp:Label>
       

        &nbsp;&nbsp;<asp:TextBox ID="ExtraTB" TextMode="MultiLine" runat="server"></asp:TextBox>
       </p>

    
    <p>
       

        <asp:Label ID="AppIdeaLabel" Style="vertical-align: top"  runat="server" 
            Text="App Description:"></asp:Label>
       

        &nbsp;<asp:TextBox ID="IdeaTB" TextMode="MultiLine" runat="server"></asp:TextBox>
       

    </p>
    <p>
       

        <asp:Label ID="QuestionLabel" Style="vertical-align: top"   runat="server" 
            Text="Questions:"></asp:Label>
       

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       

        <asp:TextBox ID="QuestionTB" TextMode="MultiLine" runat="server"></asp:TextBox>
       

    </p>
    <p>
       

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click"/>
       

        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Text=""></asp:Label>
       

    </p>
</asp:Content>

