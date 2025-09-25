using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;
using Biblioteca;

namespace WebApplication2
{
    public partial class Contato : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            // 1. Validação
            if (Nome.Text.Trim() == "")
            {
                Alerta.Text = "Digite seu nome!";
            }
            else if (Email.Text.Trim() == "")
            {
                Alerta.Text = "Digite seu email!";
            }
            else if (Mensagem.Text.Trim() == "")
            {
                Alerta.Text = "Digite sua mensagem!";
            }
            else
            {
                try
                {
                    // 2. Construa o email

                    MailMessage mail = new MailMessage();
                    mail.To.Add("contato@seudominio.com.br");

                    MailAddress fr = new MailAddress("contao@seudominio.com.br");

                    mail.From = fr;

                    mail.Subject = "E-mail enviado pela página de contato";

                    mail.Body = "Nome: " + Nome.Text + "\nE-mail: " + Email.Text + "\nMensagem: " + Mensagem.Text;

                    mail.Priority = MailPriority.High;

                    mail.IsBodyHtml = false;

                    // 3. Envie o email

                    SmtpClient smtp = new SmtpClient();

                    smtp.Host = "seudominio.com.br";

                    smtp.Credentials = new System.Net.NetworkCredential("contato@seudominio.com.br", "suasenha");

                    smtp.Send(mail);


                    // 4. Limpe os dados do form aqui

                    Nome.Text = "";
                    Email.Text = "";
                    Mensagem.Text = "";

                    Alerta.Text = "Seu e-mail foi enviado com sucesso";

                }
                catch (Exception ex)
                {
                    // Se houver um erro envie, uma mensagem amigável para o usuário.
                    Alerta.Text = ex.Message;

                    // TAREFA: Faça um "append" em um arquivo text "Excecoes.txt" gravando a data e hora atual e a mensagem de texto enviada pelo servidor.

                    TratarExcecoes te = new TratarExcecoes();
                    te.SalvarExcecoes(ex);

                }
            }
        }
    }
}