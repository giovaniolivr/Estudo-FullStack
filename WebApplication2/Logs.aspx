<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logs.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">


    <div class="border padding-14">
        <h2 style="text-align: center">Logs</h2>
        <br />
        <asp:Label ID="conteudo" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Limpar" runat="server" Text="Limpar" OnClick="Limpar_Click" />
    </div>

</asp:Content>
