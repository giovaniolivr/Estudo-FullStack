<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="flexslider box border shadow">
        <ul class="slides">
            <li>
                <img src="Images/banner5.png" />
            </li>
        </ul>
    </div>

    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
    </script>
    <div class="row margin-top-60">
    <div class="col-3">
        <div class="box border shadow margin-right-15">
            <img width="100%" src="Images/caixeiro.png" />
            <div class="padding-14">
                <h2>Caixeiro Viajante</h2>
                <br />
                <p>
                    Um problema bastante comum em disciplinas de Ciência da Computação é o famoso problema do caixeiro viajante, que consiste em encontrar a menor rota possível entre determinados pontos.
                </p>
                <br /><br />
                <div class="box-footer">
                    <asp:Button ID="Button1" Text="Saiba mais" runat="server" OnClick="Button1_Click" Style="font-size: 12px; padding: 6px 10px; cursor: pointer;" />
                </div>
            </div>
        </div>
    </div>

    <div class="col-3">
        <div class="box border shadow margin-left-5 margin-right-10">
            <img width="100%" src="Images/pnp.png" />
            <div class="padding-14">
                <h2>Problema P vs NP</h2>
                <br />
                <p>
                    Um dos grandes enigmas da Ciência da Computação é o problema P versus NP, que levanta a questão: será que todo problema de verificação rápida também pode ser resolvido com rapidez?
                </p>
                <br /><br />
                <div class="box-footer">
                    <asp:Button ID="Button2" Text="Saiba mais" runat="server" OnClick="Button2_Click" Style="font-size: 12px; padding: 6px 10px; cursor: pointer;" />
                </div>
            </div>
        </div>
    </div>

    <div class="col-3">
        <div class="box border shadow margin-left-10 margin-right-5">
            <img width="100%" src="Images/algoritmo.png" />
            <div class="padding-14">
                <h2>Algoritmos</h2>
                <br />
                <p>
                    Algoritmos são sequências finitas de passos bem definidos que descrevem como resolver um problema ou realizar uma tarefa de maneira lógica e ordenada.
                </p>
                <br /><br />
                <div class="box-footer">
                    <asp:Button ID="Button3" Text="Saiba mais" runat="server" OnClick="Button3_Click" Style="font-size: 12px; padding: 6px 10px; cursor: pointer;" />
                </div>
            </div>
        </div>
    </div>

    <div class="col-3">
        <div class="box border shadow margin-left-15">
            <img width="100%" src="Images/estruturadados.png" />
            <div class="padding-14">
                <h2>Estruturas de Dados</h2>
                <br />
                <p>
                    Estruturas de dados são formas de organizar e armazenar informações para que possam ser acessadas e manipuladas de maneira eficiente.
                </p>
                <br /><br />
                <div class="box-footer">
                    <asp:Button ID="Button4" Text="Saiba mais" runat="server" OnClick="Button4_Click" Style="font-size: 12px; padding: 6px 10px; cursor: pointer;" />
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
