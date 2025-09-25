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
    public partial class Cadastro : System.Web.UI.Page
    {
        static string caminho = HttpContext.Current.Server.MapPath("~/App_Data/Database.accdb");

        string conexao = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source =" + caminho + ";Persist Security Info = False;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Gravar_Click(object sender, EventArgs e)
        {
            //1 . Validar os dados obrigatórios
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
            else if (!ValidarNomeAcesso(NomeAcesso.Text))
            {
                Mensagem.Text = "Este nome de acesso já esta em uso, digite outro";
            }
            else
            {

                //3.Definir o comando SQL

                string sql = "INSERT INTO Usuarios(Nome,Email,Anotacoes,NomeAcesso,Senha) VALUES ('" + Filter(Nome.Text) + "','" + Filter(Email.Text) + "','" + Filter(Anotacoes.Text) + "','" + Filter(NomeAcesso.Text) + "','" + Filter(Senha.Text) + "')";

                // 4. Gravar no banco de dados

                DAO db = new DAO();
                db.DataProviderName = DAO.ProviderName.OleDb;
                db.ConnectionString = conexao;
                db.Query(sql);

                Nome.Text = "";
                Email.Text = "";
                Anotacoes.Text = "";
                NomeAcesso.Text = "";
                Senha.Text = "";

                Response.Redirect("ExibirUsuarios.aspx");
            }

        }

        /// <summary>
        /// Formalizar uma string com apostrofo e remove os espaços em branco a direita e a esquerda do texto. 29/05
        /// </summary>
        /// <param name="txt">string a ser formalizada</param>
        /// <returns></returns>

        protected string Filter(string txt)
        {
            txt = txt.Trim();
            txt = txt.Replace("'", "''");
            return txt;
        }

        /// <summary>
        /// Validar o nome para não ter Usuarios com nomes repetidos
        /// </summary>
        /// <param name="nome"></param>
        /// <returns></returns>

        protected bool ValidarNomeAcesso(string nome)
        {
            string sql = "SELECT * FROM Usuarios WHERE NomeAcesso ='" + nome + "'";


            DAO db = new DAO();
            db.DataProviderName = DAO.ProviderName.OleDb;
            db.ConnectionString = conexao;
            DataTable tb = (DataTable)db.Query(sql);
            if (tb.Rows.Count > 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}
