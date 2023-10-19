using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAgenda
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text;
            String senha = txtSenha.Text;

            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from tbusuario where email = @email and senha = @senha";
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("senha", senha);
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.HasRows)
            {
                // cookie
                HttpCookie login = new HttpCookie("login", txtEmail.Text);
                Response.Cookies.Add(login);

                //direcionar para a pagina principal
                Response.Redirect("~/index.aspx");
            }
            else
            {
                Response.Write("<script>alert('E-mail ou senha incorretos!');</script>");
                //lMsg.Text = "email ou senha incorretos!!!";
            }
        }       

        protected void imgbtnEditarEvento_Click(object sender, ImageClickEventArgs e)
        {
            lblDataEvento.Visible = false;
            //txtDataEvento.Visible = true;
            //pnlDataEvento.Controls.Add(txtDataEvento);
            txtDataEvento.Visible = true;
            imgbtnConfirmar.Visible = true;
            imgbtnCanEditarEvent.Visible = true;
            imgbtnEditarEvento.Visible = false;
        }

        protected void imgbtnCanEditarEvent_Click(object sender, ImageClickEventArgs e)
        {
            lblDataEvento.Visible = true;
            //txtDataEvento.Visible = true;
            //pnlDataEvento.Controls.Add(txtDataEvento);
            txtDataEvento.Visible = false;
            imgbtnConfirmar.Visible = false;
            imgbtnCanEditarEvent.Visible = false;
            imgbtnEditarEvento.Visible = true;
        }

        protected void imgbtnConfirmar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>alert('Gravar nova data de evento!');</script>");
            //Response.Write("<script>alert('E-mail ou senha incorretos!');</script>");
        }
    }
}