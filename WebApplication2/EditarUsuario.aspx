<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="WebApplication2.EditarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">

    <div class="margin-top-60">
        <h1>Editar Usuário</h1>
        <br />
        <asp:Label ID="Mensagem" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="UsuarioID" Font-Size="30px" runat="server"></asp:Label>
        <br />
        <br />
        <label>Nome</label>
        <asp:TextBox ID="Nome" MaxLength="256" runat="server"></asp:TextBox>

        <label>E-mail</label>
        <asp:TextBox ID="Email" MaxLength="256" runat="server"></asp:TextBox>

        <label>Anotações</label>
        <asp:TextBox ID="Anotacoes" MaxLength="256" runat="server"></asp:TextBox>

        <label>Nome de Acesso</label>
        <asp:TextBox Enabled="false" ID="NomeAcesso" MaxLength="256" runat="server"></asp:TextBox>

        <label>Senha</label>
        <asp:TextBox ID="Senha" MaxLength="256" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Gravar" OnClick="Gravar_Click" runat="server" Text="Gravar" />
        <asp:Button ID="Excluir" OnClick="Excluir_Click" runat="server" Text="Excluir" />

    </div>


</asp:Content>