<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="WebApplication2.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">

    <div class="row">
        <div class="col-6">
            <div class="box border padding-14 margin-right-20">
                <h2>Fale Conosco!</h2>
                <br />
                <asp:Label ID="Alerta" runat="server" ForeColor="red" Font-Size="16px"></asp:Label>
                <br />
                <label>Seu Nome</label>
                <asp:TextBox ID="Nome" runat="server"></asp:TextBox>
                <label>Email</label>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                <label>Mensagem</label>
                <asp:TextBox ID="Mensagem" runat="server" TextMode="MultiLine" Rows="6" MaxLength="255"></asp:TextBox>
                <br />
                <asp:Button ID="Enviar" runat="server" Text="Enviar" OnClick="Enviar_Click" />
            </div>
        </div>

        <div class="col-6">
            <div class="box border padding-14">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d546.997202667279!2d-47.328530042508326!3d-22.73775856299323!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89a325102ecdb%3A0xe7cfce8f2956da86!2sTerminal%20Municipal%20de%20Americana!5e0!3m2!1spt-BR!2sbr!4v1743706116752!5m2!1spt-BR!2sbr" width="100%" height="100%" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>

</asp:Content>
