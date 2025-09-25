using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datapost.DB;

namespace WebApplication2
{
    public partial class ExibirUsuarios : System.Web.UI.Page
    {
        static string caminho = HttpContext.Current.Server.MapPath("~/App_Data/Database.accdb");

        string conexao = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source =" + caminho + ";Persist Security Info = False;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LerUsuarios();
            }

        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            LerUsuarios();
        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            BuscarNome.Text = "";
            LerUsuarios();
        }

        /// <summary>
        /// 05/06
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Usuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = Usuarios.SelectedRow.Cells[1].Text;

            Response.Redirect("EditarUsuario.aspx?ID=" + id);

        }

        protected void LerUsuarios()
        {
            string sql = "SELECT Usuario_Id,Nome,Email,Anotacoes,NomeAcesso FROM Usuarios WHERE Nome LIKE '%" + BuscarNome.Text + "%' ORDER BY NOME ASC";

            DAO db = new DAO();
            db.DataProviderName = DAO.ProviderName.OleDb;
            db.ConnectionString = conexao;
            Usuarios.DataSource = db.Query(sql);
            Usuarios.DataBind();
        }

        protected void Cadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastro.aspx");
        }
    }
}
