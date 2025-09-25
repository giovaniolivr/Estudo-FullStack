<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ExibirUsuarios.aspx.cs" Inherits="WebApplication2.ExibirUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="margin-top-60">
        <h1>Usuários</h1>
        <br />
        <asp:TextBox ID="BuscarNome" Width="140px" runat="server"></asp:TextBox>
        <asp:Button ID="Buscar" OnClick="Buscar_Click" runat="server" Text="Buscar" />
        <asp:Button ID="Cancelar" OnClick="Cancelar_Click" runat="server" Text="X" />
        <br />
        <br />
        <asp:GridView ID="Usuarios" CellPadding="8" BorderColor="#c0c0c0" Width="100%" AutoGenerateSelectButton="true" OnSelectedIndexChanged="Usuarios_SelectedIndexChanged" runat="server"></asp:GridView>
       <asp:Button ID="Cadastrar" OnClick="Cadastrar_Click" runat="server" Text="Cadastrar" />
    </div>
</asp:Content>
