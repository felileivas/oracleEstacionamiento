using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

namespace OracleEstacionamiento
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OracleConnection conexion = new OracleConnection("DATA SOURCE = xe; PASSWORD = root; USER ID = testEstacionamiento");


            //metodo para validar login con registros de la BD
            conexion.Open();
            OracleCommand comando = new OracleCommand("SELECT * FROM USUARIO WHERE USUARIO_LOGIN = :usuario AND PASS_LOGIN = :password ", conexion);

            comando.Parameters.Add(":usuario", txtUser.Text);
            comando.Parameters.Add(":password", txtPssword.Text);

            OracleDataReader lector = comando.ExecuteReader();

            if (lector.Read())
            {
                if (lector["TIPO"].ToString() == "ADMIN")
                {
                    Server.Transfer("HomeAdmin.aspx");
                }
                if (lector["TIPO"].ToString() == "USER")
                {
                    Server.Transfer("HomeUser.aspx");
                }

            }
        }
    }
}