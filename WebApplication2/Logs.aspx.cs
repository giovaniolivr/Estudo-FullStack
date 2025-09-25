using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Biblioteca;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LerLogs();
        }

        protected void LerLogs()
        {
            TratarExcecoes tr = new TratarExcecoes();
            conteudo.Text = tr.LerLogs().Replace("\n", "<br/>");
            if(conteudo.Text == "")
            {
                Limpar.Visible = false;
            }
        }

        protected void Limpar_Click(object sender, EventArgs e)
        {
            TratarExcecoes tr = new TratarExcecoes();
            tr.ExcluirLogs();
            Limpar.Visible = false;
            conteudo.Text = "";
        }
    }
}