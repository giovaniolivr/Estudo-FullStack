using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datapost.DB;

namespace WebApplication2
{
    public partial class EditarUsuario : System.Web.UI.Page
    {
        static string caminho = HttpContext.Current.Server.MapPath("~/App_Data/Database.accdb");

        string conexao = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source =" + caminho + ";Persist Security Info = False;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UsuarioID.Text = Request.QueryString["ID"].ToString();
                LerUsuarios();
            }

        }

        protected void LerUsuarios()
        {
            string sql = "SELECT Nome,Email,Anotacoes,NomeAcesso,Senha FROM Usuarios WHERE Usuario_ID=" + UsuarioID.Text;

            DAO db = new DAO();
            db.DataProviderName = DAO.ProviderName.OleDb;
            db.ConnectionString = conexao;
            DataTable tb = (DataTable)db.Query(sql);

            Nome.Text = tb.Rows[0]["Nome"].ToString();
            Email.Text = tb.Rows[0]["Email"].ToString();
            Anotacoes.Text = tb.Rows[0]["Anotacoes"].ToString();
            NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();
            Senha.Text = tb.Rows[0]["Senha"].ToString();

        }

        protected void Gravar_Click(object sender, EventArgs e)
        {
            if (Nome.Text.Trim() == "")
            {
                Mensagem.Text = "Digite o nome";
            }
            else if (Email.Text.Trim() == "")
            {
                Mensagem.Text = "Digite o email";
            }
            else if (NomeAcesso.Text.Trim() == "")
            {
                Mensagem.Text = "Digite o nome de acesso";
            }
            else if (Senha.Text.Trim() == "")
            {
                Mensagem.Text = "Digite a senha";
            }
            else
            {

                //3.Definir o comando SQL

                string sql = "UPDATE Usuarios SET Nome='" + Filter(Nome.Text) + "',Email='" + Filter(Email.Text) + "',Anotacoes='" + Filter(Anotacoes.Text) + "',NomeAcesso='" + Filter(NomeAcesso.Text) + "',Senha='" + Filter(Senha.Text) + "WHERE UsuarioID=" + UsuarioID.Text;

                Nome.Text = "";
                Email.Text = "";
                Anotacoes.Text = "";
                NomeAcesso.Text = "";
                Senha.Text = "";

                Response.Redirect("ExibirUsuarios.aspx");
            }
        }
        protected string Filter(string txt)
        {
            txt = txt.Trim();
            txt = txt.Replace("'", "''");
            return txt;
        }


        protected void Excluir_Click(object sender, EventArgs e)
        {
            string sql = "DELETE FROM Usuarios WHERE Usuario_ID=" + UsuarioID.Text;

            DAO db = new DAO();
            db.DataProviderName = DAO.ProviderName.OleDb;
            db.ConnectionString = conexao;
            db.Query(sql);

            Response.Redirect("ExibirUsuarios.aspx");
        }
    }
}